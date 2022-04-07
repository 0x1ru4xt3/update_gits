#/bin/bash


for line in $(sudo find / -name .git -type d -exec dirname {} \;)
do
    echo $line
    cd $line
    git pull origin master
done

echo "Done"
