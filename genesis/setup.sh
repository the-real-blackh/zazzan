#!/bin/sh -e
if test "$Z_ENV" = "" ; then echo "Please set Z_ENV environment variable" ; false ; fi
# Total supply in ZANs (we add six 0's on the end because the contracts wants microZans)
goal app call \
    --from `cat ../env/$Z_ENV/genesis-addr.txt` \
    --app-id `cat ../env/$Z_ENV/zazzan-app-id.txt` \
    --app-arg str:setup \
    --app-arg addr:`cat ../env/$Z_ENV/zazzan-admin-fund.txt` \
    --foreign-asset `cat ../env/$Z_ENV/ZAN-asset-id.txt`,`cat ../env/$Z_ENV/USDC-asset-id.txt`
