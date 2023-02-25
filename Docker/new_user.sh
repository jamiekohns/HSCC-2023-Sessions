#!/bin/bash
USERNAME=""
PROJECT_NAME=""
WEB_PORT=""
IDE_PASSWORD=""
IDE_SUDO_PASSWORD=""

usage() {
  echo "Usage: new_user.sh -u USERNAME -n WEB_PORT [-p PASSWORD] [-s SUDO_PASSWORD]" 1>&2
}

exit_abnormal() {
  usage
  exit 1
}

while getopts "u:n:p:" options; do
    case "${options}" in
        u)
            USERNAME=${OPTARG}
            ;;
        n)
            WEB_PORT=${OPTARG}
            ;;
        p)
            IDE_PASSWORD=${OPTARG}
            ;;
        s)
            IDE_SUDO_PASSWORD=${OPTARG}
            ;;
        :)
            echo "Error: -${OPTARG} requires an argument."
            exit_abnormal
            ;;
        *)
            exit_abnormal
            ;;
    esac
done

IDE_PORT=$((WEB_PORT+1))
MAD_PORT=$((WEB_PORT+2))
DB_PORT=$((WEB_PORT+3))

if [ "$IDE_PASSWORD" = "" ]; then
    IDE_PASSWORD="hscc-atlanta"
fi

if [ "$IDE_SUDO_PASSWORD" = "" ]; then
    IDE_SUDO_PASSWORD="hscc-atlanta"
fi

# if test -f "${USERNAME}.env"; then
#     echo "User ${USERNAME} alredy exists."
#     exit 1
# fi

# WEB_PORT_IN_USE=$(grep -rl "_PORT=${WEB_PORT}" ./*.env)

# if [ -n "$WEB_PORT_IN_USE" ]; then
#     echo "WEB port is in use."
#     exit 1
# fi

mkdir /hscc/$USERNAME
mkdir /hscc/$USERNAME/html
chmod 777 /hscc/$USERNAME/html
mkdir /hscc/$USERNAME/logs
chmod 777 /hscc/$USERNAME/logs

export WORK_DIR="/hscc/$USERNAME"
export USERNAME="$USERNAME"
export WEB_PORT=$WEB_PORT
export DB_PORT=$DB_PORT
export IDE_PORT=$IDE_PORT
export IDE_PASSWORD="$IDE_PASSWORD"
export IDE_SUDO_PASSWORD="$IDE_SUDO_PASSWORD"
export MAD_PORT=$MAD_PORT
docker-compose --project-name="$USERNAME-dev" up -d
