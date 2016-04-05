#! /bin/bash


######## Krishna Confidential #######$


DIR=$PWD

# Get the linkset file
LINKSET=$(cat $DIR/linkset | grep -i 'http' |  tr -d '\r' | head -5)


#wget to all the links
for link in  ${LINKSET[@]}
do
   echo "The link from which your file will be downloded is:"
   echo "$link"

    `wget  $link > /dev/null 2>&1 `
done

`cat *.ts >> merged.flv`
if [[ $? -eq 0 ]];then
    echo "Downloaded and Merged Successfully and is available in merged.flv"
fi


`rm *.ts`
