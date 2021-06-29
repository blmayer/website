#!/bin/bash

template() {
    for file in "$@"
    do
        [[ "$file" =~ .+\.tpl ]] || { cat "$file"; continue; }
        while IFS=  read -r line
        do
            if grep -q '{{!' <<< "$line"
            then
                # replace {{!}} commands
                sed 's:\s*{{\!\s*\(.*\)\s*}}:\1:g' <<< "$line" | bash
            elif grep -q '{{' <<< "$line"
            then
                # replace files in {{}}
                template $(sed 's:\s*{{\s*\(.*\)\s*}}:\1:g' <<< "$line")
            else
                printf "%s\n" "$line"
            fi
        done < "$file"
    done
}

[[ -d out ]] || mkdir out

find "$@" -type f | while read -r tpl; do
    echo "$tpl"
    mkdir -p $(dirname out/$tpl)
    template "$tpl" > "out/${tpl%.tpl}"
done
