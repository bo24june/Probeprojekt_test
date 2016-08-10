#!/bin/bash
git add . 
 
git config --global credential.helper "cache --timeout=84400"
git commit -m "Cron-Job_aktualisierung"
git pull  
git push origin master

#git clone bo24june@github.com:bo24june/Probeprojekt_test.git temp
#mv temp/.git  cisco_conf_test/.git
#rm -rf temp 
