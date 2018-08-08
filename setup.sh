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

path=`pwd`/src
#echo source $path/environs.src >> $rcfile

# Header
read -r -d '' hdr <<- ENDHEADER
################
# Custom setup #
################
ENDHEADER
echo "" >> $rcfile
echo "" >> $rcfile
echo "$hdr" >> $rcfile
echo "" >> $rcfile


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


