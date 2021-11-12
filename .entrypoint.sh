#!/bin/bash

pwd

ls -a

t_path=./translations

mkdir $t_path

cp ./${INPUT_PATH_TO_FILES}/* $t_path

files=

main=

for FILE in $(find $t_path -type f -name "*.json")
do 

    if [[ $FILE = $t_path/$INPUT_MAIN_FILE ]]
    then
        main=$FILE
    else
        files=$files" "$FILE
    fi
done

echo $main
echo $files

node index.js -m $main -f $files
