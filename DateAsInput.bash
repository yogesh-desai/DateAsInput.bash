#!/bin/bash
# This code takes Date as input in YYYYMMDD Format.
# 

StartDate=`date +"%Y%m%d" -d $1`  #"20160601"`
EndDate=`date +"%Y%m%d" -d $2`    #"20160605"`

if [ $# -ne 2 ]
then
    echo "Usage:`basename $0` Start_Date End_Date"
    echo "bash `basename $0` 20160601 20160605"
    exit $E_BADARGS
fi
echo "Now: "$StartDate
echo "End: "$EndDate

while [ "$StartDate" -le "$EndDate" ] ; 
do 
    #echo $src$StartDate
        echo $StartDate #Do it here  what you want
        # Increment Date by one day
    	StartDate=`date +"%Y%m%d" -d "$StartDate + 1 day"`; 
done
echo "All Done"
