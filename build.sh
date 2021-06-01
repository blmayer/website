#!/bin/bash
CWD=$(pwd)
function import() {
        echo -e "cat <<END_OF_TEXT\n$(cat $@)\nEND_OF_TEXT" | bash
}
export -f import

function process_file() {
        for file in $@
        do
                echo "$file"
                if [[ -d $file ]]
                then
                        [ -d $CWD/web/$file ] || mkdir $CWD/web/$file
                        process_file $file/*
                else 
                        import $file > $CWD/web/$file
                fi
        done
}

[ -e web/ ] || mkdir web
cd static/
process_file *
