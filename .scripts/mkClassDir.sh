#!/bin/bash

echo -n "Please input the folders name: "
read -r folderName
echo -n "How many weeks?: "
read -r numWeeks

mkdir ${folderName}
mkdir ${folderName}/000_files
mkdir ${folderName}/000_projects
for ((i = 1; i <= $numWeeks; i++)); do
    if [[ ${i} -lt 10 ]]; then
        mkdir "${folderName}/0${i}_week"
    else
        mkdir "${folderName}/${i}_week"
    fi
done

