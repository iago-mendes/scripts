function fix() {
	if [ "$1" = "stylus" ]; then
		sudo modprobe -r -v  wacom
		sudo modprobe -v  wacom
		lsmod | grep wacom
		echo "\nDone!"
	else
		echo "'$1' is not accepted in this command."
	fi
}