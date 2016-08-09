#!/bin/bash
git add .  
read -p "Commit description: " desc  
git commit -m "$desc"  
git push origin master 


#git clone https://github.com/bo24june/Probeprojekt_test.git temp
mv temp/.git  /srv/git/cisco/cisco_conf_test/.git
rm -rf temp 
