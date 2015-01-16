#!/bin/bash
set -x

USERGROUP="guysgroup"
USERNAME="guy"
USERHOME=/home/"$USERNAME"

# ensure $UID and $GID are set
if [[ -z $UID ]]; then
    echo "Please specify environment variable UID (eg: -e UID=\$(id -u))"
    exit 1
elif [[ -z $GID ]]; then
    echo "Please specify environment variable GID (eg: -e GID=\$(id -g))"
    exit 1
fi

# create user and group
groupadd -g "$GID" -r "$USERGROUP"
mkdir -p "$USERHOME"
useradd -u "$UID" -r -g "$USERGROUP" -d "$USERHOME" -s /bin/bash "$USERNAME"
chown "$USERNAME":"$USERGROUP" "$USERHOME"

# kick off gulp with passed in args as user
su - "$USERNAME" -c "cd /mnt && $*"
