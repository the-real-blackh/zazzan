#!/bin/sh -e
goal asset send \
    --from TBZHBPL54XZBY7WFOAL37R2TMHQYFIYE2JQ5PWNR5QSY7HRNNCIECKUW5Q \
    --assetid 100900625 \
    --amount $1 \
    --to `cat zazzan-app-addr.txt` \
    -o txn1.out
goal app call \
    --from TBZHBPL54XZBY7WFOAL37R2TMHQYFIYE2JQ5PWNR5QSY7HRNNCIECKUW5Q \
    --app-id `cat zazzan-app-id.txt` \
    --app-arg string:toFiat \
    --foreign-asset 10458941,100900625 \
    -o txn2.out
cat txn1.out txn2.out > txns.out
goal clerk group -i txns.out -o txngroup.out
goal clerk sign -i txngroup.out -o txngroup-signed.out
goal clerk rawsend -f txngroup-signed.out
rm -f txn1.out txn2.out txns.out txngroup.out txngroup-signed.out
