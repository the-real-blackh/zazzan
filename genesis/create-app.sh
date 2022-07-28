#!/bin/sh -e
if test "$Z_ENV" = "" ; then echo "Please set Z_ENV environment variable" ; false ; fi
goal app create \
    --creator `cat ../env/$Z_ENV/genesis-addr.txt` \
    --approval-prog ../genesis/zazzan-genesis.teal \
    --clear-prog ../contracts/zazzan-clear.teal \
    --global-byteslices 50 \
    --global-ints 14 \
    --local-byteslices 8 \
    --local-ints 8 \
    --extra-pages 3
echo ""
echo "please enter the application id and press ENTER"
read id
echo $id > ../env/$Z_ENV/zazzan-app-id.txt
app_addr="$(goal app info --app-id `cat ../env/$Z_ENV/zazzan-app-id.txt` | awk '{ print $3 }' | head -2 | tail -1)"
echo $app_addr > ../env/$Z_ENV/zazzan-app-addr.txt
echo "New app address $app_addr stored in ../env/$Z_ENV/zazzan-app-addr.txt"
