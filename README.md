# hiveos-tempcontrol
NVIDIA Auto Temperature Control for HiveOS

This script was adapted from nvOC to use on HiveOS.

Install Guide:

	Copy tempcontrol and tempcheck.sh to /hive/sbin/ (You can pick another directory but will need to edit 'tempcheck.sh')

	chmod +x tempcontrol
	chmod +x tempcheck.sh

	Edit /hive/etc/crontab.root and add the following at the end of the file.

	* * * * * /hive/sbin/tempcheck.sh

You will need to edit tempcontrol to set your preferred temperature limit.

Inside the HiveOS Web UI, you will want to set your fan speed to 90%.

Doing this allows your rig to start out at 90% and then will throttle the fans down with the script, to avoid overheating.

Keep in mind, this script does nothing once fans are at 100%, the logic to cut the power limit on the cards probably needs to be added back in, but we're hoping HiveOS adds their auto temp control soon.  It would be wise to set a temp limit in your miner config in the meantime.
