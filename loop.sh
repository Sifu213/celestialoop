#!/bin/sh

a=1

while [ $a -lt 100 ]
do
   echo "PFB number $a"

curl -X POST -d '{"namespace_id": "00000000dab4f48e",
  "data": "59417467574f7a76414c6659566766446a716467526256644b6770676b67",
  "gas_limit": 80000, "fee": 2000}' http://localhost:26659/submit_pfb

   a=`expr $a + 1`
done