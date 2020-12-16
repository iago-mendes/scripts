function vpn()
{
	if [ "$1" = "oberlin" ]; then
		echo $VPN_OBERLIN_PASS | sudo openconnect vpn.cc.oberlin.edu --authgroup=OC --user=$VPN_OBERLIN_USER --passwd-on-stdin
	else
		echo "$1 is not an option of the 'vpn' command."
	fi
}