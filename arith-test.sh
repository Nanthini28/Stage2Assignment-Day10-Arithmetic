#!/bin/bash
read -p "Enter the value:" a b c
d=$(($a + $b))
res=$(($d * $c))
echo "ResultU2:"$res
e=$(( (($a * $b)) + $c))
echo "ResultU3:"$e
f=$(( (($c + $a)) / $b))
echo "ResultU4:"$f
g=$((  (($a%$b)) + $c))
echo "ResultU5:"$g
#Store the result in dictonary and read the values from dictonary into array
declare -A Result
Result[res]=$res
Result[e]=$e
Result[f]=$f
Result[g]=$g

echo "U1" ${Result[res]}
echo "U2" ${Result[e]}
echo "U3" ${Result[f]}
echo "U4" ${Result[g]}
for resu in ${!Result[@]}
do
	echo ${resu} ${Result[${resu}]}
done
echo "Sorted Result in Descending order:" ${Result[@]} | tr " " "\n" | sort -nr | tr "\n" " "
echo "Sorted Result in Ascending Order:" ${Result[@]} | tr " " "\n" | sort -n | tr"\n" " "
