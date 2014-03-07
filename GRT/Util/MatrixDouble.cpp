/*
GRT MIT License
Copyright (c) <2012> <Nicholas Gillian, Media Lab, MIT>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software 
and associated documentation files (the "Software"), to deal in the Software without restriction, 
including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, 
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial 
portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT 
LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

#include "MatrixDouble.h"

namespace GRT{
   
MatrixDouble::MatrixDouble(){
    warningLog.setProceedingText("[WARNING MatrixDouble]");
    errorLog.setProceedingText("[ERROR MatrixDouble]");
    this->dataPtr = NULL;
    this->rows = 0;
    this->cols = 0;
}
    
MatrixDouble::MatrixDouble(const unsigned int rows,const unsigned int cols){
    warningLog.setProceedingText("[WARNING MatrixDouble]");
    errorLog.setProceedingText("[ERROR MatrixDouble]");
    this->dataPtr = NULL;
    if( rows > 0 && cols > 0 ){
        resize(rows, cols);
    }
}
    
MatrixDouble::MatrixDouble(const MatrixDouble &rhs){
    warningLog.setProceedingText("[WARNING MatrixDouble]");
    errorLog.setProceedingText("[ERROR MatrixDouble]");
    this->dataPtr = NULL;
    this->rows = rhs.rows;
    this->cols = rhs.cols;
    if( rhs.dataPtr != NULL ){
        this->dataPtr = new double*[rows];
        for(unsigned int i=0; i<rows; i++){
            dataPtr[i] = new double[cols];
            for(unsigned int j=0; j<cols; j++)
                this->dataPtr[i][j] = rhs.dataPtr[i][j];
        }
    }
    
}
    
MatrixDouble::MatrixDouble(const Matrix<double> &rhs){
    warningLog.setProceedingText("[WARNING MatrixDouble]");
    errorLog.setProceedingText("[ERROR MatrixDouble]");
    this->dataPtr = NULL;
    this->rows = rhs.getNumRows();
    this->cols = rhs.getNumCols();
    if( this->rows > 0 && this->cols > 0 ){
        this->dataPtr = new double*[rows];
        for(unsigned int i=0; i<rows; i++){
            dataPtr[i] = new double[cols];
            for(unsigned int j=0; j<cols; j++)
                this->dataPtr[i][j] = rhs[i][j];
        }
    }
}

MatrixDouble::~MatrixDouble(){
    clear();
}
    
MatrixDouble& MatrixDouble::operator=(const MatrixDouble &rhs){
    if( this != &rhs ){
        this->clear();
        this->rows = rhs.rows;
        this->cols = rhs.cols;
        dataPtr = new double*[rows];
        for(unsigned int i=0; i<rows; i++){
            dataPtr[i] = new double[cols];
            for(unsigned int j=0; j<cols; j++)
                this->dataPtr[i][j] = rhs.dataPtr[i][j];
        }
    }
    return *this;
}
    
MatrixDouble& MatrixDouble::operator=(const Matrix<double> &rhs){
    if( this != &rhs ){
        this->clear();
        this->rows = rhs.getNumRows();
        this->cols = rhs.getNumCols();
        dataPtr = new double*[rows];
        for(unsigned int i=0; i<rows; i++){
            dataPtr[i] = new double[cols];
            for(unsigned int j=0; j<cols; j++)
                this->dataPtr[i][j] = rhs[i][j];
        }
    }
    return *this;
}
    
MatrixDouble& MatrixDouble::operator=(const vector< VectorDouble> &rhs){
    
    clear();
    
    if( rhs.size() == 0 ) return *this;
    
    unsigned int M = (unsigned int)rhs.size();
    unsigned int N = (unsigned int)rhs[0].size();
    resize(M, N);
    
    for(unsigned int i=0; i<M; i++){
        if( rhs[i].size() != N ){
            clear();
            return *this;
        }
        for(unsigned int j=0; j<N; j++){
            dataPtr[i][j] = rhs[i][j];
        }
    }
    
    return *this;
}
    
bool MatrixDouble::resize(const unsigned int rows,const unsigned int cols){
    return Matrix<double>::resize(rows, cols);
}
 
bool MatrixDouble::print(const string title){
    
    if( dataPtr == NULL ) return false;
    
    if( title != "" ){
        std::cout << title << endl;
    }
    for(unsigned int i=0; i<rows; i++){
        for(unsigned int j=0; j<cols; j++){
            std::cout << dataPtr[i][j] << "\t";
        }
        std::cout << std::endl;
    }

    return true;
}
    
bool MatrixDouble::transpose(){
    
    if( dataPtr == NULL ) return false;
    
    MatrixDouble temp(cols,rows);
    for(unsigned int i=0; i<rows; i++){
        for(unsigned int j=0; j<cols; j++){
            temp[j][i] = dataPtr[i][j];
        }
    }
    
    *this = temp;
    
    return true;
}
    
MatrixDouble MatrixDouble::multiple(const double value) const{
    
    if( dataPtr == NULL ) return MatrixDouble();
    
    MatrixDouble d(rows,cols);
    
    for(unsigned int i=0; i<rows; i++){
        for(unsigned int j=0; j<cols; j++){
            d[i][j] = dataPtr[i][j] * value;
        }
    }
    
    return d;
}
    
VectorDouble MatrixDouble::multiple(const VectorDouble &b) const{
    
    const unsigned int M = rows;
    const unsigned int N = cols;
    const unsigned int K = (unsigned int)b.size();
    
    if( N != K ){
        warningLog << "multiple(vector b) - The size of b (" << b.size() << ") does not match the number of columns in this matrix (" << N << ")" << std::endl;
        return VectorDouble();
    }
    
    VectorDouble c(M);
    
    for(unsigned int i=0; i<rows; i++){
        c[i] = 0;
        for(unsigned int j=0; j<cols; j++){
            c[i] += dataPtr[i][j]*b[j];
        }
    }
    
    return c;
}
    
MatrixDouble MatrixDouble::multiple(const MatrixDouble &b) const{
    
    const unsigned int M = rows;
    const unsigned int N = cols;
    const unsigned int K = (unsigned int)b.getNumRows();
    const unsigned int L = (unsigned int)b.getNumCols();
    
    if( N != K ) {
        warningLog << "multiple(MatrixDouble b) - The number of rows in b (" << b.getNumRows() << ") does not match the number of columns in this matrix (" << N << ")" << std::endl;
        return MatrixDouble();
    }
    
    MatrixDouble c(M,L);
    
    for(unsigned int i=0; i<M; i++){
        for(unsigned int j=0; j<L; j++){
            c[i][j] = 0;
            for(unsigned int k=0; k<K; k++){
                c[i][j] += dataPtr[i][k] * b[k][j];
            }
        }
    }
    
    return c;
}
    
VectorDouble MatrixDouble::getMean() const{
    
    VectorDouble mean(cols);
    
    for(unsigned int c=0; c<cols; c++){
        mean[c] = 0;
        for(unsigned int r=0; r<rows; r++){
            mean[c] += dataPtr[r][c];
        }
        mean[c] /= double( rows );
    }
    
    return mean;
}
    
VectorDouble MatrixDouble::getStdDev() const{
    
    VectorDouble mean = getMean();
	VectorDouble stdDev(cols,0);
	
	for(unsigned int j=0; j<cols; j++){
		for(unsigned int i=0; i<rows; i++){
			stdDev[j] += (dataPtr[i][j]-mean[j])*(dataPtr[i][j]-mean[j]);
		}
		stdDev[j] = sqrt( stdDev[j] / double(rows-1) );
	}
    return stdDev;
}

MatrixDouble MatrixDouble::getCovarianceMatrix() const{
    
    vector<double> mean = getMean();
    MatrixDouble covMatrix(cols,cols);
    
    for(unsigned int j=0; j<cols; j++){
        for(unsigned int k=0; k<cols; k++){
            covMatrix[j][k] = 0;
            for(unsigned int i=0; i<rows; i++){
                covMatrix[j][k] += (dataPtr[i][j]-mean[j]) * (dataPtr[i][k]-mean[k]);
            }
            covMatrix[j][k] /= double(rows-1);
        }
    }
    
    return covMatrix;
}
    
std::vector< MinMax > MatrixDouble::getRanges() const{
    
    if( rows == 0 ) return std::vector< MinMax >();
    
    vector< MinMax > ranges(cols);
    for(unsigned int i=0; i<rows; i++){
        for(unsigned int j=0; j<cols; j++){
            ranges[j].updateMinMax( dataPtr[i][j] );
        }
    }
    return ranges;
}
    
double MatrixDouble::getTrace() const{
    double t = 0;
    unsigned int K = (rows < cols ? rows : cols);
    for(unsigned int i=0; i < K; i++) {
        t += dataPtr[i][i];
    }
    return t;
}
    
bool MatrixDouble::saveToCSVFile(const string &filename){
    
    std::fstream file;
	file.open(filename.c_str(), std::ios::out);
    
	if( !file.is_open() ){
		return false;
	}
    
	for(UINT i=0; i<rows; i++){
		for(UINT j=0; j<cols; j++){
			file << dataPtr[i][j] << (j<cols-1 ? "," : "\n");
		}
	}
    
	file.close();
    return true;
}
    
bool MatrixDouble::loadFromCSVFile(const string &filename){
    
    //Parse the CSV file
    FileParser parser;
    
    if( !parser.parseCSVFile(filename,true) ){
        errorLog << "loadFromCSVFile(const string &filename) - Failed to parse CSV file!" << endl;
        return false;
    }
    
    if( !parser.getConsistentColumnSize() ){
        errorLog << "loadFromCSVFile(const string &filename) - The CSV file does not have a consistent number of columns!" << endl;
        return false;
    }
    
    const UINT rows = parser.getRowSize();
    const UINT cols = parser.getColumnSize();
    
    //Resize the data
    resize(rows, cols);
    
    for(UINT i=0; i<rows; i++){
        
        //Get the input vector
        for(UINT j=0; j<cols; j++){
            dataPtr[i][j] = Util::stringToDouble( parser[i][j] );
        }
    }
    
    return true;
}
    
}; //End of namespace GRT