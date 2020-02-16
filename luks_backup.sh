#/bin/bash
# Nalezy pamietac, ze oruginalny dysk musi byc na sdb a kopia na sdc.
# Zmienna luks_org to nasz orygianly dysk

luks_org=MS83N582310203L3F
first_free_slot=/dev/sdb
luks_mounted=`sudo smartctl -a ${first_free_slot} | grep Serial | awk '{print $3}'`
echo Oryginaly Serial dysku z danymi to $luks_org
echo $first_free_slot to serial number $luks_mounted

if [ "$luks_org" == "$luks_mounted" ]
then
  echo "Kopiuje dane ..."
  dd bs=4M if=/dev/sdb of=/dev/sdc status=progress oflag=sync
else
  echo "Nie mozna kopiowac poniewaz /dev/sdb nie jest dyskiem pierwotnym"
fi

exit 0
