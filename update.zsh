ONLINE_DRIVE="Drive:"
OFFLINE_DRIVE="/home/iago/Desktop/Offline Drive"

function update()
{
    if [ "$1" = "drive" ]; then
        if [ "$2" = "from" ]; then
            rclone copy $ONLINE_DRIVE $OFFLINE_DRIVE --max-size 500M
        else
            rclone copy $OFFLINE_DRIVE $ONLINE_DRIVE
        fi
    elif [ "$1" = "system" ]; then
        sudo apt update
        sudo apt upgrade
    else
        echo "$1 is not an option of the 'update' command."
    fi
}