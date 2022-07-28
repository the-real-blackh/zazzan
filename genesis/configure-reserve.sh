#!/bin/sh -e
if test "$Z_ENV" = "" ; then echo "Please set Z_ENV environment variable" ; false ; fi
goal asset config \
    --creator `cat ../env/$Z_ENV/genesis-addr.txt` \
    --manager `cat ../env/$Z_ENV/genesis-addr.txt` \
    --assetid `cat ../env/$Z_ENV/ZAN-asset-id.txt` \
    --new-reserve `cat ../env/$Z_ENV/zazzan-app-addr.txt` \
    -o out.txn
