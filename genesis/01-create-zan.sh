#!/bin/sh -e
if test "$Z_ENV" = "" ; then echo "Please set Z_ENV environment variable" ; false ; fi
goal asset create \
    --unitname "ZAN" \
    --name "Zazzan" \
    --asseturl "https://zazzan.org" \
    --decimals 6 \
    --creator `cat ../env/$Z_ENV/genesis-addr.txt` \
    --manager `cat ../env/$Z_ENV/zazzan-app-addr.txt` \
    --reserve `cat ../env/$Z_ENV/zazzan-app-addr.txt` \
    --no-clawback \
    --no-freezer \
    --total 1000000000000000000
echo "Please enter the asset ID above here and press ENTER"
read id
echo $id > ../env/$Z_ENV/ZAN-asset-id.txt
ehcho wrote asset ID $id to ../env/$Z_ENV/ZAN-asset-id.txt
