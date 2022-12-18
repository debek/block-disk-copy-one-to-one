## block-disk-copy 1:1

### Description:

The script is making backup disc copy 1:1 with master disc protection.

### HOW-TO:

You have to change Your `luks_org` variable to your Serial disc.

How to get disc serial: `smartctl -a /dev/sdb | grep Serial | awk '{print $3}'`

`master_disc` - path to the master disc

`backup_disc` - path to the backup

`luks_org` - LUKS serial
