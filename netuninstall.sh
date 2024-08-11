#!/bin/sh

ABSOLUTE_FILENAME=$(readlink -f "$0")
HOME_FOLDER=$(dirname "$ABSOLUTE_FILENAME")
BASE_URL="https://github.com/Anonym-tsk/nfqws-keenetic/raw/master"

cd /tmp || exit 1

mkdir -p nfqws-keenetic/common

curl -SL# "$BASE_URL/uninstall.sh" -o nfqws-keenetic/uninstall.sh
curl -SL# "$BASE_URL/common/install_func.sh" -o nfqws-keenetic/common/install_func.sh

chmod +x nfqws-keenetic/*.sh

./nfqws-keenetic/uninstall.sh

rm -rf nfqws-keenetic
cd "$HOME_FOLDER" || exit 1

exit 0
