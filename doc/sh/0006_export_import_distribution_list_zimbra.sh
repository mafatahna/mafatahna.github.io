myPath=$(pwd)
/opt/zimbra/bin/zmprov gadl | while read listname;
do
   echo "/opt/zimbra/bin/zmprov cdl $listname" > $myPath/bk/$listname
   /opt/zimbra/bin/zmprov gdl $listname | grep zimbraMailForwardingAddress >  $myPath/bk/$listname.tmp
   cat $myPath/bk/$listname.tmp | sed 's/zimbraMailForwardingAddress: //g' |
   while read member; do
     echo "/opt/zimbra/bin/zmprov adlm $listname $member" >> $myPath/$listname
   done
   /bin/rm $myPath/bk/$listname.tmp
done
