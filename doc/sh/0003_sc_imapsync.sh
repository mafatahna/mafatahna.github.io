#!/bin/sh
 
#Hapus Layar
clear
 
LOCATION=`pwd`
USER_LIST="daftar_user.txt"
USERS=`cat $LOCATION/$USER_LIST`
 
echo "Looping for all users"
for ACCOUNT in $USERS; do
        ACC1=`echo $ACCOUNT | awk -F@ '{print $1}'`;
        ACC2=`echo $ACCOUNT | cut -d '.' -f1`
 
#Import email
imapsync --host1 [ganti dg ip host1] --user1 $ACCOUNT --authuser1 [ganti dg user host1] --password1 [ganti dg password host1] --host2 [ganti dg ip host2] --user2 $ACCOUNT --authuser2 [ganti dg user host2] --password2 [ganti dg host2] --noauthmd5 --ssl1 --ssl2 --nofoldersizes --nofoldersizesatend

        echo ""
        echo "Import data email account : $ACCOUNT telah selesai, Tekan ENTER untuk proses data berikutnya..."
        echo ""
#       read presskey
done
echo "Proses sinkronisasi email selesai dilakukan"

# file daftar_user.txt bisa didapatkan dari perintah Mail Zimbra zmprov -l gaa [domain.com]