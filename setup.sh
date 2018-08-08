#!/bin/bash

if [ -e ~/.bashrc ]
then
    rcfile=~/.bashrc
elif [ -e ~/.bash_profile ]
then
    rcfile=~/.bash_profile
else
    rcfile=~/.bashrc
fi

# does the DATA environment exist?
if [[ ! -z "$DATA" ]]
then
    dataenv=$DATA
else
    echo DATA environment variable undefined. Where should DATA point to?
    read dataenv
fi
echo DATA set to $dataenv

# Header
read -r -d '' hdr <<- ENDHEADER
####################
# User setup files #
####################
ENDHEADER
echo "" >> $rcfile
echo "" >> $rcfile
echo "$hdr" >> $rcfile
echo "" >> $rcfile

# the folder in this repository where source files are located
path=`pwd`/src

# Copy files to be sourced
# environments needs to be copied first!
envfile=$path/environs.src
echo source $envfile >> $rcfile
for filename in $path/*.src
do
    if [ ! "$filename" == "$envfile" ]
    then
        echo source $filename >> $rcfile
    fi
done


