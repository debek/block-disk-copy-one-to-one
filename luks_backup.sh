#/bin/bash

luks_org="MS83N582310203L3F"
master_disc="/dev/sdb"
backup_disc="/dev/sdc"
luks_mounted=`sudo smartctl -a ${first_free_slot} | grep Serial | awk '{print $3}'`

echo "Oryginal serial disc number is ${luks_org}"
echo "${master_disc} serial number is ${luks_mounted}"

if [ "${luks_org}" == "${luks_mounted}" ]
then
  echo "Cpying data ..."
  dd bs=4M if=${master_disc} of=${baskup_disc} status=progress oflag=sync
else
  echo "Can't copy because ${master_disc} is not primary disc"
fi

exit 0
