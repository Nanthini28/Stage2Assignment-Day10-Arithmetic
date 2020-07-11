#!/bin/bash
read -p "Enter the value:" a
read -p "Enter the value:" b
read -p "Enter the value:" c`
d=$(($a + $b))
res=$(($d * $c))
echo "ResultU2:"$res
e=$(( (($a * $b)) + $c))
echo "ResultU3:"$e
