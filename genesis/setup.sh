#!/bin/sh -e
# Total supply in ZANs (we add six 0's on the end because the contracts wants microZans)
supply=1000000
goal app call \
    --from D7QJEHMPNGK6CVW5MZF3KT3Z5RXYPGEN2VGS6LN4VQ6ZD6T6FZR4R6CTGU \
    --app-id `cat ../zazzan-app-id.txt` \
    --app-arg str:setup \
    --app-arg int:${supply}000000 \
    --app-arg addr:`cat ../zazzan-admin-fund.txt` \
    --foreign-asset 100900625,10458941
