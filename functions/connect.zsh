function connect()
{
	if [ "$1" = "ssh" ]; then
		if [ "$2" = "starview" ]; then
			ssh -i $STARVIEW_KEY_PATH iago@$STARVIEW_IP
		elif [ "$2" = "digital-ocean" ]; then
			ssh iago@$DIGITAL_OCEAN_IP
		elif [ "$2" = "cs-oberlin" ]; then
			sshpass -p $OBERLIN_CS_PASS ssh $OBERLIN_CS_USER@$OBERLIN_CS_ADDRESS
		else
			echo "$2 is not an option of available ssh connections"
		fi
	elif [ "$1" = "vpn" ]; then
		if [ "$2" = "oberlin" ]; then
			echo $VPN_OBERLIN_PASS | sudo openconnect vpn.cc.oberlin.edu --authgroup=OC --user=$VPN_OBERLIN_USER --passwd-on-stdin
		else
			echo "$2 is not an option of available vpn connections"
		fi
	else
		echo "$1 is not an option of the 'connect' command"
	fi
}