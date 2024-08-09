#!/bin/bash
a=shan
b=40
c=55
d=300
if [ $b -gt $c ]
then
    echo "$b is greater than $c"
else
    echo "$c is greater than $b"
fi



if [ $b -gt $c ] && [ $b -gt $d ]; then
        echo "large value is $b "
elif [ $c -gt $b ] && [ $c -gt $d ]; then
        echo "large value is $c"
else
        echo "large value is $d"
fi


echo "my name is $a" > ./son
