#!/bin/bash

cd /home/ubuntu/BasicHtml_CICD/
git pull

newcommit=$(git log --pretty=format:"%H" -1)

if [ "$(cat /home/ubuntu/oldcommit.txt)" = "$newcommit" ]
then
        echo "No Action Required"
else
        #sudo rm -rf /var/www/html/BasicHtml_CICD
        sudo cp -r /home/ubuntu/BasicHtml_CICD/ /var/www/html/  
        sudo service nginx restart
        echo "We've a new Commit! Running pipeline."
        echo $(git log --pretty=format:"%H" -1) > oldcommit.txt
        echo $(pwd)
        echo $newcommit
fi