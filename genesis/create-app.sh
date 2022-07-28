#!/bin/sh -e
goal app create \
    --creator D7QJEHMPNGK6CVW5MZF3KT3Z5RXYPGEN2VGS6LN4VQ6ZD6T6FZR4R6CTGU \
    --approval-prog ../genesis/zazzan-genesis.teal \
    --clear-prog ../contracts/zazzan-clear.teal \
    --global-byteslices 50 \
    --global-ints 14 \
    --local-byteslices 8 \
    --local-ints 8
