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

#ifndef GRT_TIMESTAMP_HEADER
#define GRT_TIMESTAMP_HEADER

#include "Timer.h"
#include "ErrorLog.h"
#include "WarningLog.h"

namespace GRT{

class TimeStamp{
public:
    TimeStamp(unsigned int year=0,unsigned int month=0,unsigned int day=0,unsigned int hour=0,unsigned int minute=0,unsigned int second=0,unsigned int millisecond=0){
        this->year = year;
        this->month = month;
        this->day = day;
        this->hour = hour;
        this->minute = minute;
        this->second = second;
        this->millisecond = millisecond;
        
        errorLog.setProceedingText("[ERROR TimeStamp]");
        warningLog.setProceedingText("[WARNING TimeStamp]");
    }

    TimeStamp(const TimeStamp &rhs){
        *this = rhs;
    }
    
    TimeStamp(const string &timeStampAsString){
        this->year = 0;
        this->month = 0;
        this->day = 0;
        this->hour = 0;
        this->minute = 0;
        this->second = 0;
        this->millisecond = 0;
        setTimeStampFromString( timeStampAsString );
        
        errorLog.setProceedingText("[ERROR TimeStamp]");
        warningLog.setProceedingText("[WARNING TimeStamp]");
    }

    ~TimeStamp(){

    }

    TimeStamp& operator=(const TimeStamp &rhs){
        if( this != &rhs ){
            this->year = rhs.year;
            this->month = rhs.month;
            this->day = rhs.day;
            this->hour = rhs.hour;
            this->minute = rhs.minute;
            this->second = rhs.second;
            this->millisecond = rhs.millisecond;
            this->errorLog = rhs.errorLog;
            this->warningLog = rhs.warningLog;
        }
        return *this;
    }

    bool operator>(const TimeStamp &rhs) const{
        if( this->getTimeInMilliseconds() > rhs.getTimeInMilliseconds() ){
            return true;
        }
        return false;
    }
    
    bool operator>=(const TimeStamp &rhs) const{
        if( this->getTimeInMilliseconds() >= rhs.getTimeInMilliseconds() ){
            return true;
        }
        return false;
    }
    
    bool operator<(const TimeStamp &rhs) const{
        if( this->getTimeInMilliseconds() < rhs.getTimeInMilliseconds() ){
            return true;
        }
        return false;
    }
    
    bool operator<=(const TimeStamp &rhs) const{
        if( this->getTimeInMilliseconds() <= rhs.getTimeInMilliseconds() ){
            return true;
        }
        return false;
    }
    
    TimeStamp operator+(const TimeStamp &rhs){
        TimeStamp ts;
        ts.year = this->year + rhs.year;
        ts.month = this->month + rhs.month;
        ts.day = this->day + rhs.day;
        ts.hour = this->hour + rhs.hour;
        ts.minute = this->minute + rhs.minute;
        ts.second = this->second + rhs.second;
        ts.millisecond = this->millisecond + rhs.millisecond;
        
        if( ts.millisecond >= 1000 ){
            ts.millisecond = ts.millisecond % 1000;
            ts.second++;
        }
        
        if( ts.second >= 60 ){
            ts.second = ts.second % 60;
            ts.minute++;
        }
        
        if( ts.minute >= 60 ){
            ts.minute = ts.minute % 60;
            ts.hour++;
        }
        
        if( ts.hour >= 60 ){
            ts.hour = ts.hour % 60;
            ts.day++;
        }
        
        unsigned int numDaysInMonth = 0;
        if( ts.month > 12 ){
            numDaysInMonth = getNumDaysInMonth( ts.month % 12 );
        }else numDaysInMonth = getNumDaysInMonth( ts.month );
            
            if( ts.day >= numDaysInMonth ){
                ts.day = ts.day - numDaysInMonth;
                ts.month++;
            }
        
        if( ts.month > 12 ){
            ts.month = ts.month % 12;
            ts.year++;
        }
        
        return ts;
    }

    TimeStamp& operator+=(const TimeStamp &rhs){
        if( this != &rhs ){
            this->year += rhs.year;
            this->month += rhs.month;
            this->day += rhs.day;
            this->hour += rhs.hour;
            this->minute += rhs.minute;
            this->second += rhs.second;
            this->millisecond += rhs.millisecond;
            
            if( this->millisecond >= 1000 ){
                this->millisecond = this->millisecond % 1000;
                this->second++;
            }
            
            if( this->second >= 60 ){
                this->second = this->second % 60;
                this->minute++;
            }
            
            if( this->minute >= 60 ){
                this->minute = this->minute % 60;
                this->hour++;
            }
            
            if( this->hour >= 60 ){
                this->hour = this->hour % 60;
                this->day++;
            }
            
            unsigned int numDaysInMonth = 0;
            if( this->month > 12 ){
                numDaysInMonth = getNumDaysInMonth( this->month % 12 );
            }else numDaysInMonth = getNumDaysInMonth( this->month );
            
            if( this->day >= numDaysInMonth ){
                this->day = this->day - numDaysInMonth;
                this->month++;
            }
            
            if( this->month > 12 ){
                this->month = this->month % 12;
                this->year++;
            }
        }
        return *this;
    }

    unsigned int getTimeInMilliseconds() const{
	    
		unsigned int secondInMs = 1000;
		unsigned int minuteInMs = 60*secondInMs;
		unsigned int hourInMs = 60*minuteInMs;
		unsigned int dayInMs = 24*hourInMs;
		//unsigned int yearInMs = 365*dayInMs;
	    
		//unsigned int firstJanTwentyTwelveInMS = 1325394000000;
		unsigned int yearTime = 0;
		unsigned int monthTime = 0;
		unsigned int dayTime = day * dayInMs;
		unsigned int hourTime = hour * hourInMs;
		unsigned int minuteTime = minute * minuteInMs;
		unsigned int secondTime = second * secondInMs;
	    
	/*
		unsigned int janInMs = 31*dayInMs;
		unsigned int febInMs = 29*dayInMs + janInMs;
		unsigned int marchInMs = 31*dayInMs + febInMs;
		unsigned int aprilInMs = 30*dayInMs + marchInMs;
		unsigned int mayInMs = 31*dayInMs + aprilInMs;
		unsigned int juneInMs = 30*dayInMs + mayInMs;
		unsigned int julyInMs = 31*dayInMs + juneInMs;
		unsigned int augInMs = 31*dayInMs + julyInMs;
		unsigned int sepInMs = 31*dayInMs + augInMs;
		unsigned int octInMs = 31*dayInMs + sepInMs;
		unsigned int novInMs = 30*dayInMs + octInMs;
	
		switch( month ){
			case 1:
				monthTime = 0;
				break;
			case 2:
				monthTime = janInMs;
				break;
			case 3:
				monthTime = febInMs;
				break;
			case 4:
				monthTime = marchInMs;
				break;
			case 5:
				monthTime = aprilInMs;
				break;
			case 6:
				monthTime = mayInMs;
				break;
			case 7:
				monthTime = juneInMs;
				break;
			case 8:
				monthTime = julyInMs;
				break;
			case 9:
				monthTime = augInMs;
				break;
			case 10:
				monthTime = sepInMs;
				break;
			case 11:
				monthTime = octInMs;
				break;
			case 12:
				monthTime = novInMs;
				break;
		}
	    */
        return (yearTime + monthTime + dayTime + hourTime + minuteTime + secondTime + millisecond);
    }

    bool setTimeStampAsNow(){
#if defined(__GRT_OSX_BUILD__) || defined(__GRT_LINUX_BUILD__)

        //Get the date and time
        time_t tim = time(NULL);
        tm *now = localtime( &tim );

        if( now == NULL ) return false;

        //Get the millisecon time
        struct timeval nowTimeval;
        gettimeofday( &nowTimeval, NULL );

        year = (unsigned int)now->tm_year + 1900;
        month = (unsigned int)now->tm_mon + 1;
        day = (unsigned int)now->tm_mday;
        hour = (unsigned int)now->tm_hour;
        minute = (unsigned int)now->tm_min;
        second = (unsigned int)now->tm_sec;
        millisecond = (unsigned int)nowTimeval.tv_usec/1000;

        return true;
#endif
#ifdef __GRT_WINDOWS_BUILD__
		SYSTEMTIME systemTime;
        GetSystemTime(&systemTime);
		year = (unsigned int)systemTime.wYear;
        month = (unsigned int)systemTime.wMonth;
        day = (unsigned int)systemTime.wDay;
        hour = (unsigned int)systemTime.wHour;
        minute = (unsigned int)systemTime.wMinute;
        second = (unsigned int)systemTime.wSecond;
        millisecond = (unsigned int)systemTime.wMilliseconds;
        return true;
#endif
        warningLog << "setTimeStampAsNow() - Failed to get time stamp value! Unknown OS!" << endl;
        return false;
    }
    
    bool setTimeStampFromString(const string &timeString){
	    
	    //Find all the _
	    vector<string> s;
	    string tempString;
	    for(unsigned int i=0; i<timeString.length(); i++ ){
		if( timeString[i] == '_' || timeString[i] == '\n' || timeString[i] == '\r'  ){
			s.push_back( tempString );
			tempString = "";
		}else tempString += timeString[i];
	    }
	    
	    if( tempString.size() > 0 ) s.push_back( tempString );
	    
	    if( s.size() != 7 ){
		    cout << "WARNING: Failed to set timestamp from string. Incorrect size! Size: " << s.size() << endl;
		    return false;
	    }
	    
	    year = Util::stringToInt( s[0] );
	    month = Util::stringToInt( s[1]  );
	    day = Util::stringToInt( s[2] );
	    hour = Util::stringToInt( s[3]  );
	    minute = Util::stringToInt( s[4] );
	    second = Util::stringToInt( s[5]  );
	    millisecond = Util::stringToInt( s[6]  );
	    
	    return true;
    }

    string getTimeStampAsString() const{
        string timeString = "";
        timeString += Util::toString(year) + "_" + Util::toString(month) + "_" + Util::toString(day);
        timeString += "_" + Util::toString(hour) + "_" + Util::toString(minute) + "_" + Util::toString(second) + "_" + Util::toString(millisecond);
        return timeString;
    }
    
    string getTimeStampAsJSONString() const{
        string timeString = "{";
        timeString += "\"year\":" + Util::toString(year) + ",";
        timeString += "\"month\":" + Util::toString(month) + ",";
        timeString += "\"day\":" + Util::toString(day) + ",";
        timeString += "\"hour\":" + Util::toString(hour) + ",";
        timeString += "\"minute\":" + Util::toString(minute) + ",";
        timeString += "\"second\":" + Util::toString(second) + ",";
        timeString += "\"millisecond\":" + Util::toString(millisecond) + ",";
        timeString += "\"timeInMS\":" + Util::toString(getTimeInMilliseconds());
        timeString += "}";
        return timeString;
    }
    
    unsigned int getNumDaysInMonth( const unsigned int month ){
        switch( month ){
			case 1://Jan
				return 31;
				break;
			case 2: //Feb
				return 29; //Leap Year?????
				break;
			case 3: //March
				return 31;
				break;
			case 4: //April
				return 30;
				break;
			case 5: //May
				return 31;
				break;
			case 6: //June
				return 30;
				break;
			case 7: //July
				return 31;
				break;
			case 8: //August
				return 31;
				break;
			case 9: //September
				return 31;
				break;
			case 10: //October
				return 31;
				break;
			case 11: //November
				return 30;
				break;
			case 12: //December
				return 31;
				break;
		}
        warningLog << "getNumDaysInMonth(const unsigned int month) - Bad month parameter: " << month << endl;
        return 0;
    }

    unsigned int year;
    unsigned int month;
    unsigned int day;
    unsigned int hour;
    unsigned int minute;
    unsigned int second;
    unsigned int millisecond;
    ErrorLog errorLog;
    WarningLog warningLog;
    
};

} //End of namespace GRT
#endif //GRT_TIMESTAMP_HEADER
