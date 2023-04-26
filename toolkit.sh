#!/bin/bash

#Author: Zachary Lee

#Created Date: 4/26

#Last modified: 4/26

#Description: Toolkit to use cruft_remover and folder_organizer

#Usage Information
#Run ./toolkit.sh from this directory. Select which tool you want (1/2) then follow the remaining prompts if any.

PS3="Which script do you want to execute: "

select script in cruft_remover folder_organizer;
        do
                case "$script" in
                        cruft_remover) ./cruft_remover.sh ;;
                        folder_organizer) ./folder_organizer.sh ;;
                esac
                break
        done
