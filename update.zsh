ONLINE_DRIVE="/run/user/1000/gvfs/google-drive:host=oberlin.edu,user=ibrazmen"
OFFLINE_DRIVE="/home/iago/Desktop/Offline\ Drive"

function update()
{
    if [ "$1" = "drive" ]; then
        if [ "$2" = "from" ]; then
            cp -r -u $ONLINE_DRIVE $OFFLINE_DRIVE
        else
            cp -r -u $OFFLINE_DRIVE $ONLINE_DRIVE
        fi
    elif [ "$1" = "system" ]; then
        sudo apt update
        sudo apt upgrade
    else
        echo "$1 is not an option of the 'update' command."
    fi
}