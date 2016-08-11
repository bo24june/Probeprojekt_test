#/bin/bash

#rsync -rPz /srv/ftp/testuser/ /srv/git/cisco/cisco_conf_test/testuser/

#cp -R /srv/ftp/testuser/ /srv/git/cisco/cisco_conf_test/


rsync -avWe --delete-before /srv/ftp/testuser/ /srv/git/cisco/cisco_conf_test/testuser/


 git add . 
 
git config --global credential.helper "cache --timeout=84400"
git commit -m "Cron-Job_aktualisierung"
git pull  
git push origin master

 
#cp -R /srv/git/cisco/cisco_conf_test/testuser/ /srv/ftp/


##rsync -rPz  /srv/git/cisco/cisco_conf_test/testuser/  /srv/ftp/testuser/ 

 rsync -avW --delete-before -e  /srv/git/cisco/cisco_conf_test/testuser /srv/ftp/testuser/










#git clone bo24june@github.com:bo24june/Probeprojekt_test.git temp
#mv temp/.git  cisco_conf_test/.git
#rm -rf temp 
