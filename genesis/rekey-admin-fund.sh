#!/bin/sh -e
if test "$Z_ENV" = "" ; then echo "Please set Z_ENV environment variable" ; false ; fi
goal asset optin \
    --account `cat ../env/$Z_ENV/zazzan-admin-fund.txt` \
    --assetid `cat ../env/$Z_ENV/ZAN-asset-id.txt`
goal clerk send \
    --from `cat ../env/$Z_ENV/zazzan-admin-fund.txt` \
    --to `cat ../env/$Z_ENV/zazzan-admin-fund.txt` \
    --amount 0 \
    --rekey-to `cat ../env/$Z_ENV/zazzan-app-addr.txt`
