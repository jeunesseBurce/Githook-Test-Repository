#!/bin/sh

#This script will download the zip file from the Github Repository
#Convert this script in windows, using the command dos2unix (This will also remove all the carriage returns %0D)

path="C:/Users/Jeunesse/Desktop/gith_test/Githook-Test-Repository/scripts/git_files"
repository="https://github.com/jeunesseBurce/Githook-Test-Repository.git"
path_zipfile="C:/Users/Jeunesse/Desktop/gith_test/Githook-Test-Repository/scripts/git_files/gith_test.zip"
path_repo="https://github.com/jeunesseBurce/Githook-Test-Repository/blob/master/gith_test.zip?raw=true"
echo "The path to where the zip file will be downloaded to is: "
echo $path
echo "The repository where the zip file will come from: "
echo $repository
# Get zip file from the repository
cd git_files && wget -O gith_test.zip $path_repo
 
echo "Unzipping gith_test.zip..."
unzip -q gith_test.zip
# After file is unzip, delete the zip file
rm gith_test.zip
