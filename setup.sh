#!/bin/sh -e
goal app call \
    --from D7QJEHMPNGK6CVW5MZF3KT3Z5RXYPGEN2VGS6LN4VQ6ZD6T6FZR4R6CTGU \
    --app-id `cat zazzan-app-id.txt` \
    --app-arg str:setup \
    --foreign-asset 10458941,100900625

