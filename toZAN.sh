#!/bin/sh -e
if test "$Z_ENV" = "" ; then echo "Please set Z_ENV environment variable" ; false ; fi
goal asset send \
    --from $1 \
    --assetid `cat env/$Z_ENV/USDC-asset.txt` \
    --amount $2 \
    --to `cat zazzan-app-addr.txt` \
    -o txn1.out
goal app call \
    --from $1 \
    --app-id `cat zazzan-app-id.txt` \
    --app-arg string:toZAN \
    --foreign-asset `cat env/$Z_ENV/USDC-asset.txt`,`cat env/$Z_ENV/ZAN-asset.txt` \
    -o txn2.out
cat txn1.out txn2.out > txns.out
goal clerk group -i txns.out -o txngroup.out
goal clerk sign -i txngroup.out -o txngroup-signed.out
goal clerk rawsend -f txngroup-signed.out
rm -f txn1.out txn2.out txns.out txngroup.out txngroup-signed.out
