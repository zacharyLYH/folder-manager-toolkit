#!/bin/bash

#Author: Zachary Lee

#Created Date: 4/26

#Last modified: 4/26

#Description: Organizes folders

#Usage Information
#Run ./folder_organizer.sh from this directory.

destination=""
while read files; do
        case "$files" in 
                *.txt | *.doc | *.docx | *.pdf) destination="documents" ;;
                *jpeg | *.jpg | *.png) destination="images" ;;
                *.xls | *.xlsx | *.csv) destination="spreadsheets";;
                *.zip | *tar | *tar.gz | *tar.bz) destination="archives";;
                *.ppt | *.pptx) destination="presentations";;
                *.mp3) destination="audio";;
                *.mp4) destination="video";;
        esac
        mv "$files" ./"$destination"
done < <(ls .)
