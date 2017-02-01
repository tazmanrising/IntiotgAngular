#!/bin/bash
# download and unzup db files to App_Data folder

DB_SRC=//us-hq-ng-dev01/NextGenShare/hotel_alpha/*
DB_DST=./Ovs.Hotel.Ui/App_Data

echo Coping db files ...
cp -v ${DB_SRC} ${DB_DST}

echo Unzipping db files ...
cd ${DB_DST}
unzip -o '*.zip'
cd -
 
echo done.
