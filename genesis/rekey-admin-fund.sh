#!/bin/sh -e
#goal asset optin \
#    --account `cat ../zazzan-admin-fund.txt` \
#    --assetid 100900625
goal clerk send \
    --from `cat ../zazzan-admin-fund.txt` \
    --to `cat ../zazzan-admin-fund.txt` \
    --amount 0 \
    --rekey-to `cat ../zazzan-app-addr.txt`
