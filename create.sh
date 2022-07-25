#!/bin/sh -e
goal app create \
    --creator D7QJEHMPNGK6CVW5MZF3KT3Z5RXYPGEN2VGS6LN4VQ6ZD6T6FZR4R6CTGU \
    --approval-prog zazzan.teal \
    --clear-prog zazzan-clear.teal \
    --global-byteslices 10 \
    --global-ints 10 \
    --local-byteslices 8 \
    --local-ints 8

