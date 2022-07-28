#!/bin/sh -e
if test "$Z_ENV" = "" ; then echo "Please set Z_ENV environment variable" ; false ; fi
goal account new
echo "please enter the address above here and press ENTER"
read addr
echo $addr > ../env/$Z_ENV/zazzan-admin-fund.txt
echo wrote admin fund address $addr to ../env/$Z_ENV/zazzan-admin-fund.txt
