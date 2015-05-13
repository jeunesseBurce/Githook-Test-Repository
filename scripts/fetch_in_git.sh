#!/bin/sh

#This shell script will run for every 5 or 10 minutes, to check for pull updates in Github Repository

folder_path="C:\Users\Jeunesse\Desktop\gith_test\Githook-Test-Repository\scripts\git-pull-requests"
local_folder_path="C:\Users\Jeunesse\Desktop\gith_test\Githook-Test-Repository"
echo 'Fetch files from Github...'

if [ -f $folder_path ] #if folder for Git Pull Requests is available
    then
    rm -f $folder_path
    cd $local_folder_path && git pull #pull updates to local folder path
fi