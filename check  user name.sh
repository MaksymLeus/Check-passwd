!/bin/bash
file=/srv/Scripts/lesson/passwd.backup
a=`cmp -s /etc/passwd /srv/Scripts/lesson/passwd.backup` && echo 'CKs'
if [ -f $file ]; then

$a

else
sudo cp -r /etc/passwd /srv/Scripts/lesson/passwd.backup || cmp -s /etc/shadow /srv/Scripts/lesson/passwd.backup && echo "Create vs Pass comleat is fine"

fi