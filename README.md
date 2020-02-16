# block-disk-copy

Backup disc 1:1 with master protection

You have to change Your luks_org variable to Your disc Srial.
You can change it using this command:
smartctl -a /dev/sdb | grep Serial | awk '{print $3}'
