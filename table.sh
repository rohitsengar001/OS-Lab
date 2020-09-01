echo "enter the number "
read num
i=1
echo " "
while [ $i -lt 11 ]
do
  tb=$(( $num * $i ))
  
  echo "$tb "
  i=$(( $i + 1 ))
done  
