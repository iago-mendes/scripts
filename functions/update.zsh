ONLINE_DRIVE="Drive:"
OFFLINE_DRIVE="/home/iago/Drive"

function update()
{
    if [ "$1" = "drive" ]; then
        if [ "$2" = "from" ]; then
            rclone copy $ONLINE_DRIVE $OFFLINE_DRIVE --max-size 500M
        else
            rclone sync $OFFLINE_DRIVE $ONLINE_DRIVE
        fi
    elif [ "$1" = "system" ]; then
        sudo apt update
        sudo apt upgrade -y
        sudo apt autoremove -y
    else
        echo "$1 is not an option of the 'update' command."
    fi
}