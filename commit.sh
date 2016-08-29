#/bin/bash

echo "pwd is: `pwd`"
repo="/srv/git/cisco/cisco_conf_test"

rsync -avh /srv/ftp/testuser/ /srv/git/cisco/cisco_conf_test/testuser/  --delete

git -C $repo add . 

git -C $repo config --global credential.helper "cache --timeout=84400"
git -C $repo commit -m "Cron-Job_aktualisierung"
git -C $repo pull  
git -C $repo push origin master 


 rsync -avW --delete-before -e  /srv/ftp/testuser/ /srv/git/cisco/cisco_conf_test/testuser/

cp -R /srv/git/cisco/cisco_conf_test/testuser/ /srv/ftp/









#git clone bo24june@github.com:bo24june/Probeprojekt_test.git temp
#mv temp/.git  cisco_conf_test/.git
#rm -rf temp 
