#!/bin/bash
set +e

source /etc/environment

echo "Downloading TZ snapshot from $TZ_SNAPSHOTS_URI."


TZ_SNAPSHOTS_FILE_NAME=snapshot

mkdir ~/tezos-snapshots
wget -O ~/tezos-snapshots/$TZ_SNAPSHOTS_FILE_NAME $TZ_SNAPSHOTS_URI
octez-node snapshot import ~/tezos-snapshots/$TZ_SNAPSHOTS_FILE_NAME
rm ~/tezos-snapshots/$TZ_SNAPSHOTS_FILE_NAME


echo "TZ snapshot is ready !!!"
