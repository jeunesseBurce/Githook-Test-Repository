#This will serve as a shell script for githook on nodejs

path="C:/Users/Jeunesse/Desktop/gith_test/Githook-Test-Repository/scripts/git_files"
repository="https://github.com/jeunesseBurce/Githook-Test-Repository.git"
path_zipfile="C:/Users/Jeunesse/Desktop/gith_test/Githook-Test-Repository/master_repo.zip"
local_folder = git_files

echo "The path to where the zip file will be downloaded to is: "
echo $path

echo "The repository where the zip file will come from: "
echo $repository

# Get zip file from the repository
cd $local_folder && wget -O master_repo.zip $repository

# If zip file exists, unzip file 
#if [ -f $path_zipfile ]; then
    
 #   unzip -q $path_zipfile

# After file is unzip, delete the zip file
    
  #  rm $path_zipfile

#fi