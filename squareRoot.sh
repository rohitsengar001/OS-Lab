echo "enter the number"
read num
cnum=$num
i=1
if [ $num -gt 0 ]
then
    while [ $i -le $num ]
    do
       sqrt=$(( ( $cnum + $num / $cnum )/2 ))
       cnum=$sqrt
       i=$(( $i + 1 ))
    done
fi

echo "square root is $sqrt"       
