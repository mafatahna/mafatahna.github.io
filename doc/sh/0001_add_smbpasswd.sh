#!/bin/sh
pass=passwordApaSaja
for i in `more user.txt`
do
echo -e "$pass\n$pass" | smbpasswd -s -a $i
echo "Password Account $i sudah ditambahkan"
done

# user.txt daftar user untuk samba, file buat dulu ya
# pass, password massal yang akan dipakai
