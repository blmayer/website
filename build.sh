#!/bin/bash

[ -e web/ ] || mkdir web
cd static/
for file in *
do
        fi=$(basename $file)
        echo -e "cat <<END_OF_TEXT\n$(cat $file)\nEND_OF_TEXT" | bash > ../web/$fi
done