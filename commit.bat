#!/bin/bash
git add .  
read -p "Commit description: " desc  
git config --global credential.helper "cache --timeout=84400"
git commit -m "$desc"
git pull  
git push origin master

#git clone bo24june@github.com:bo24june/Probeprojekt_test.git temp
#mv temp/.git  cisco_conf_test/.git
#rm -rf temp 
