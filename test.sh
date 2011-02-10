#!/bin/sh
echo './htable-ex --alias=const1=123 --alias=const2=234 const1'
./htable-ex --alias=const1=123 --alias=const2=234 const1 || echo FAIL
if [ $(./htable-ex --alias=const1=123 --alias=const2=234 const1) = 123 ]
then
    echo OK
else
    echo FAIL
fi