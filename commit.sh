#/bin/bash

#rsync /srv/ftp/testuser /srv/git/cisco/cisco_conf_test

cp -R /srv/ftp/testuser/ /srv/git/cisco/cisco_conf_test/



 git add . 
 
git config --global credential.helper "cache --timeout=84400"
git commit -m "Cron-Job_aktualisierung"
git pull  
git push origin master

#rm -r /srv/ftp/
#mkdir /srv/ftp/testuser 
#cp -R /srv/git/cisco/cisco_conf_test/testuser/ /srv/ftp/


rsync -rPz  /srv/git/cisco/cisco_conf_test/testuser/  /srv/ftp/ 

#git clone bo24june@github.com:bo24june/Probeprojekt_test.git temp
#mv temp/.git  cisco_conf_test/.git
#rm -rf temp 
