#/bin/bash

#rsync /srv/ftp/testuser /srv/git/cisco/cisco_conf_test


cp -R /srv/ftp/testuser/ /srv/git/cisco/cisco_conf_test/testuser


git add . 
 
git config --global credential.helper "cache --timeout=84400"
git commit -m "Cron-Job_aktualisierung"
git pull  
git push origin master


#cp /srv/git/cisco/cisco_conf_test/testuser/ /srv/ftp/testuser/


#rsync  /srv/git/cisco/cisco_conf_test  /srv/ftp/testuser/ 

#git clone bo24june@github.com:bo24june/Probeprojekt_test.git temp
#mv temp/.git  cisco_conf_test/.git
#rm -rf temp 
