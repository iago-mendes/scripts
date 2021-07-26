function connect()
{
	if [ "$1" = "ssh" ]; then
		if [ "$2" = "starview" ]; then
			ssh -i $STARVIEW_KEY_PATH iago@$STARVIEW_IP
		else
			echo "$2 is not an option of available ssh connections"
		fi
	else
		echo "$1 is not an option of the 'connect' command"
	fi
}