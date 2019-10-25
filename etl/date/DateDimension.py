#!/usr/local/bin/python

import pandas as pd
from datetime import date, timedelta
import boto3

def getDates(begin_date, end_date, td):
    current_date = begin_date
    #list = [date(1900,1,1)]
    list=[]
    while current_date <= end_date:
        list.append(current_date)
        current_date += td
    return list

begin_date = date(2000, 1, 1)
end_date = date(2050, 12, 31)
td = timedelta(days=1)
mydates = getDates(begin_date, end_date, td)


df = pd.DataFrame(mydates, columns=['FullDate'], copy=True)

df.insert(0,'DateKey', df.apply(lambda d: d['FullDate'].year*10000 + d['FullDate'].month*100 + d['FullDate'].day*1, axis=1).values)

df.insert(len(df.columns),'DateDisplay', df.apply(lambda d: str(d['FullDate'].month) + "/" + str(d['FullDate'].day) + "/" + str(d['FullDate'].year), axis=1).values)

df.insert(len(df.columns),'Weekday', df.apply(lambda d: d['FullDate'].weekday(), axis=1).values)

d = {
        'Weekday': [0,1,2,3,4,5,6],
        'DayOfWeek': ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
    }
DayOfWeekMapping = pd.DataFrame(data=d)

df = df.merge(DayOfWeekMapping, how='left',  on='Weekday')
df = df.drop(['Weekday'], axis=1)

df.insert(len(df.columns),'DayOfMonth', df.apply(lambda d: d['FullDate'].day, axis=1).values)

df.insert(len(df.columns),'MonthNumber', df.apply(lambda d: d['FullDate'].month, axis=1).values)

d = {
        'MonthNumber': [1,2,3,4,5,6,7,8,9,10,11,12],
        'MonthName': ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'Novemnber', 'December'],
        'QuarterNumber': [1,1,1,2,2,2,3,3,3,4,4,4],
        'QuarterDisplay': ['Q1','Q1','Q1','Q2','Q2','Q2','Q3','Q3','Q3','Q4','Q4','Q4']
    }

MonthNameMapping = pd.DataFrame(data=d)
df = df.merge(MonthNameMapping, how='left',  on='MonthNumber')

df.insert(len(df.columns),'YearNumber', df.apply(lambda d: d['FullDate'].year, axis=1).values)

df.insert(len(df.columns),'MonthYear', df.apply(lambda d: d['MonthName'] + ", " + str(d['YearNumber']), axis=1).values)

df.insert(len(df.columns),'QuarterYear', df.apply(lambda d: d['QuarterDisplay'] + ", " + str(d['YearNumber']), axis=1).values)

unknown_dates = [{
"DateKey": 0,
"FullDate": "1900-01-02",
"DateDisplay": "Unknown",
"DayOfWeek": "Unknown",
"DayOfMonth": 0,
"MonthNumber": 0,
"MonthName": "Unknown",
"QuarterNumber": 0,
"QuarterDisplay": "Unknown",
"YearNumber": 0,
"MonthYear": "Unknown",
"QuarterYear": "Unknown"

},
{
"DateKey": -1,
"FullDate": "1900-01-01",
"DateDisplay": "Missing",
"DayOfWeek": "Missing",
"DayOfMonth": -1,
"MonthNumber": -1,
"MonthName": "Missing",
"QuarterNumber": -1,
"QuarterDisplay": "Missing",
"YearNumber": -1,
"MonthYear": "Missing",
"QuarterYear": "Missing"

}]
df = df.append(unknown_dates,ignore_index=True)
df.sort_values(by="DateKey").to_csv("./DimDate.csv", index=False)

s3 = boto3.client("s3")
s3.upload_file("./DimDate.csv", "vtpanda-data-lake", "stage/DimDate/DimDate.csv" )
