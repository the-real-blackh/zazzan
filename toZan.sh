#!/bin/sh -e
goal asset send \
    --from TBZHBPL54XZBY7WFOAL37R2TMHQYFIYE2JQ5PWNR5QSY7HRNNCIECKUW5Q \
    --assetid 10458941 \
    --amount 500000000 \
    --to `cat zazzan-addr.txt` \
    -o txn1.out
goal app call \
    --from TBZHBPL54XZBY7WFOAL37R2TMHQYFIYE2JQ5PWNR5QSY7HRNNCIECKUW5Q \
    --app-id `cat zazzan-app-id.txt` \
    --app-arg string:toZan \
    --foreign-asset 100900625 \
    -o txn2.out
cat txn1.out txn2.out > txns.out
goal clerk group -i txns.out -o txngroup.out
goal clerk sign -i txngroup.out -o txngroup-signed.out
goal clerk rawsend -f txngroup-signed.out
