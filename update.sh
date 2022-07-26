#!/bin/sh -e
goal app update \
    --from D7QJEHMPNGK6CVW5MZF3KT3Z5RXYPGEN2VGS6LN4VQ6ZD6T6FZR4R6CTGU \
    --app-id `cat zazzan-app-id.txt` \
    --approval-prog zazzan.teal \
    --clear-prog zazzan-clear.teal

