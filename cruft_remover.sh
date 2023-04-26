#!/bin/bash

#Author: Zachary Lee

#Created Date: 4/26

#Last modified: 4/26

#Description: Removed crufts

#Usage Information
#Run ./cruft_remover.sh from this directory.

read -p "Which folder to remove cruft from?: " folder
read -p "How many days of unmodified data should we remove?: " days

# IFS=$'\0' read -d '' -a removable < <(find "$folder" -mtime "$days" -type f -print0)
readarray removable < <(find "$folder" -mtime "-$days" -type f)

for rem in "${removable[@]}"; do
    # echo "$rem"
    rm -i "$rem"
done

exit 0
