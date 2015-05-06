#! /bin/sh


BASE_DIR="deliver${EXTN}"


now="$(date +'%d/%m/%Y')"

echo $now
tar cvfz ${BASE_DIR}${now}.tgz ${BASE_DIR}
