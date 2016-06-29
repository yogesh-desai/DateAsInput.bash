#!/bin/bash

StartDate=`date +"%Y%m%d" -d $1`  #"20160121"`
EndDate=`date +"%Y%m%d" -d $2`    #"20160123"`
src=/home/yogesh/
dest=/home/yogesh/

if [ $# -ne 2 ]
then
    echo "Usage:`basename $0` Start_Date End_Date"
    exit $E_BADARGS
fi

if [[ ! -d $src || ! -d $dest ]]
then
    echo "Given source or destination path doesn't exist."
    exit $E_NOFILE
fi

echo "Now: "$StartDate
echo "End: "$EndDate
echo "src: "$src
echo "dest: "$dest

while [ "$StartDate" -le "$EndDate" ] ; 
do 
    #echo $src$StartDate
   # if [[ -d $src$StartDate ]]
   # then
        echo $StartDate #Do it here  what you want
   # fi       
    	StartDate=`date +"%Y%m%d" -d "$StartDate + 1 day"`; 
done
echo "All Done"
