
#include "GaussianMixtureModels.h"

namespace GRT {

GaussianMixtureModels::GaussianMixtureModels(){
    debugLog.setProceedingText("[DEBUG GaussianMixtureModel]");
    errorLog.setProceedingText("[ERROR GaussianMixtureModel]");
    warningLog.setProceedingText("[WARNING GaussianMixtureModel]");

    maxIter = 10;
    minChange = 1.0e-2;
    modelTrained = false;
    failed = false;
}

GaussianMixtureModels::~GaussianMixtureModels(){}

bool GaussianMixtureModels::train(const MatrixDouble &data,const UINT K){

	modelTrained = false;
    failed = false;

	//Clear any previous training results
	det.clear();
	invSigma.clear();

    if( data.getNumRows() == 0 ){
        errorLog << "train(const MatrixDouble &trainingData,const unsigned int K) - Training Failed! Training data is empty!" << endl;
        return false;
    }

	//Resize the variables
	M = data.getNumRows();
	N = data.getNumCols();
	this->K = K;
	
	//Resize mu and resp
	mu.resize(K,N);
	resp.resize(M,K);
	
	//Resize sigma
	sigma.resize(K);
	for(UINT k=0; k<K; k++){
		sigma[k].resize(N,N);
	}
	
	//Resize frac and lndets
	frac.resize(K);
	lndets.resize(K);

	//Pick K random starting points for the inital guesses of Mu
	Random random;
	vector< UINT > randomIndexs(M);
	for(UINT i=0; i<M; i++) randomIndexs[i] = i;
	for(UINT i=0; i<M; i++){
		SWAP(randomIndexs[ random.getRandomNumberInt(0,M) ],randomIndexs[ random.getRandomNumberInt(0,M) ]);
	}
	for(UINT k=0; k<K; k++){
		for(UINT n=0; n<N; n++){
			mu[k][n] = data[ randomIndexs[k] ][n];
		}
	}

	//Setup sigma and the uniform prior on P(k)
	for(UINT k=0; k<K; k++){
		frac[k] = 1.0/double(K);
		for(UINT i=0; i<N; i++){
			for(UINT j=0; j<N; j++) sigma[k][i][j] = 0;
			sigma[k][i][i] = 1.0e-10;   //Set the diagonal to a small number
		}
	}

	loglike = 0;
	UINT iterCounter = 0;
	bool keepGoing = true;
	double change = 99.9e99;
    
	while( keepGoing ){
		change = estep( data );
		mstep( data );

		if( fabs( change ) < minChange ) keepGoing = false;
		if( ++iterCounter >= maxIter ) keepGoing = false;
		if( failed ) keepGoing = false;
	}

	if( failed ){
		errorLog << "train(UnlabelledClassificationData &trainingData,unsigned int K) - Training failed!" << endl;
		return modelTrained;
	}

	//Compute the inverse of sigma and the determinants for prediction
	if( !computeInvAndDet() ){
        det.clear();
        invSigma.clear();
        errorLog << "train(UnlabelledClassificationData &trainingData,unsigned int K) - Failed to compute inverse and determinat!" << endl;
        return false;
    }

    //Flag that the model was trained
	modelTrained = true;

	return true;
}

double GaussianMixtureModels::estep( const MatrixDouble &data ){

	double tmp,sum,max,oldloglike;
	VectorDouble u(N);
	VectorDouble v(N);
	for(UINT j=0; j<N; j++) u[j] = v[j] = 0;

	oldloglike = loglike;

	for(UINT k=0; k<K; k++){
		Cholesky cholesky( sigma[k] );
		if( !cholesky.getSuccess() ){ failed = true; return 0; }
		lndets[k] = cholesky.logdet();

		for(UINT i=0; i<M; i++){
			for(UINT j=0; j<N; j++) u[j] = data[i][j] - mu[k][j];
			if( !cholesky.elsolve(u,v) ){ failed = true; return 0; }
			sum=0;
			for(UINT j=0; j<N; j++) sum += SQR(v[j]);
			resp[i][k] = -0.5*(sum + lndets[k]) + log(frac[k]);
		}
	}

	//Compute the overall likelihood of the entire estimated paramter set
	loglike = 0;
	for(UINT i=0; i<M; i++){
		sum=0;
		max = -99.9e99;
		for(UINT k=0; k<K; k++) if( resp[i][k] > max ) max = resp[i][k];
		for(UINT k=0; k<K; k++) sum += exp( resp[i][k]-max );
		tmp = max + log( sum );
		for(UINT k=0; k<K; k++) resp[i][k] = exp( resp[i][k] - tmp );
		loglike += tmp;
	}

	return (loglike - oldloglike);
}

void GaussianMixtureModels::mstep( const MatrixDouble &data ){

	double wgt, sum;
	for(UINT k=0; k<K; k++){
		wgt = 0.0;
		for(UINT m=0; m<M; m++) wgt += resp[m][k];
		frac[k] = wgt/double(M);
		for(UINT n=0; n<N; n++){
			sum = 0;
			for(UINT m=0; m<M; m++) sum += resp[m][k] * data[m][n];
			mu[k][n] = sum/wgt;
			for(UINT j=0; j<N; j++){
				sum = 0;
				for(UINT m=0; m<M; m++){
					sum += resp[m][k] * (data[m][n]-mu[k][n]) * (data[m][j]-mu[k][j]);
				}
				sigma[k][n][j] = sum/wgt;
			}
		}
	}

}

inline void GaussianMixtureModels::SWAP(UINT &a,UINT &b){
	UINT temp = b;
	b = a;
	a = temp;
}

bool GaussianMixtureModels::computeInvAndDet(){

	det.resize(K);
	invSigma.resize(K);

	for(UINT k=0; k<K; k++){
		LUDecomposition lu(sigma[k]);
		if( !lu.inverse( invSigma[k] ) ){
            errorLog << "computeInvAndDet() - Matrix Inversion Failed!" << endl;
            return false;
        }
		det[k] = lu.det();
	}

    return true;

}

}//End of namespace GRT
