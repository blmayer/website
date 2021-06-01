#!/bin/bash
CWD=$(pwd)

function process_file() {
        for file in $@
        do
                echo "$file"
                if [[ -d $file ]]
                then
                        echo "is dir"
                        [ -d $CWD/web/$file ] || mkdir $CWD/web/$file
                        process_file $file/*
                else 
                        fi=$(basename $file)
                        echo -e "cat <<END_OF_TEXT\n$(cat $file)\nEND_OF_TEXT" | bash > $CWD/web/$file
                fi
        done
}

[ -e web/ ] || mkdir web
cd static/
process_file *
