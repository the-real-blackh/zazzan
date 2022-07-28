#!/bin/sh -e
if test "$Z_ENV" = "" ; then echo "Please set Z_ENV environment variable" ; false ; fi
goal app update \
    --from `cat ../env/$Z_ENV/genesis-addr.txt` \
    --app-id `cat ../env/$Z_ENV/zazzan-app-id.txt` \
    --approval-prog zazzan-genesis.teal \
    --clear-prog ../contracts/zazzan-clear.teal
