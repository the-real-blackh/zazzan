#!/bin/sh -e
if test "$Z_ENV" = "" ; then echo "Please set Z_ENV environment variable" ; false ; fi
goal asset send \
    --assetid `cat ../env/$Z_ENV/ZAN-asset-id.txt` \
    --from `cat ../env/$Z_ENV/genesis-addr.txt` \
    --to `cat ../env/$Z_ENV/zazzan-app-addr.txt` \
    --amount 1000000000000000000
