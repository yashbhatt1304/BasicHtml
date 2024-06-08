#!/bin/bash

cd /home/ubuntu/BasicHtml_CICD/
git pull

value=$(python3 -c "from checkCommitPython import commitCheck; commitCheck")

if [ "value" = "False" ]
then
        echo "No Action Required"
else
        sudo rm -rf /var/www/html/
        sudo cp -r /home/ubuntu/BasicHtml_CICD/ /var/www/html/  
        sudo service nginx restart
        echo "We've a new Commit! Running pipeline."
        echo $(pwd)
        echo $value
fi