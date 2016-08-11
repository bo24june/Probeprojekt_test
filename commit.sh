#/bin/bash

rsync -avh /srv/ftp/testuser/ /srv/git/cisco/cisco_conf_test/testuser/  --delete

git add . 
 
git config --global credential.helper "cache --timeout=84400"
git commit -m "Cron-Job_aktualisierung"
git pull  
git push origin master


 rsync -avW --delete-before -e  /srv/ftp/testuser/ /srv/git/cisco/cisco_conf_test/testuser/

cp -R /srv/git/cisco/cisco_conf_test/testuser/ /srv/ftp/









#git clone bo24june@github.com:bo24june/Probeprojekt_test.git temp
#mv temp/.git  cisco_conf_test/.git
#rm -rf temp 
