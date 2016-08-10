#!/bin/bash
git add .  
read -p "Commit description: " desc  
git commit -m "$desc"  
git push origin master 

git pull

git clone bo24june@github.com:bo24june/Probeprojekt_test.git temp
mv temp/.git  cisco_conf_test/.git
rm -rf temp 
