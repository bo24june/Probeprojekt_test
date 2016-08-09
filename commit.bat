#!/bin/bash
git add .  
read -p "Commit description: " desc  
git commit -m "$desc"  
git push origin master 


#git clone https://github.com/bo24june/Probeprojekt_test/tree/cisco 


#Clone just the repository's .git folder (excluding files as they are already in
# `existing-dir`) into an empty temporary directory
git clone --no-checkout https://github.com/bo24june/Probeprojekt_test/tree/cisco /srv/git/cisco_conf_test/cisco

# Move the .git folder to the directory with the files.
# This makes `existing-dir` a git repo.
mv /srv/git/cisco_conf_test/cisco.tmp/ srv/git/cisco_conf_test/cisco

# Delete the temporary directory
rmdir /srv/git/cisco_conf_test/cisco.tmp
cd /srv/git/cisco_conf_test/cisco
