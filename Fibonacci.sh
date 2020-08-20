#fibonacci series

echo "enter the first number of the series"
read a  #first number
echo "enter the last number of the series"
read num
b=$(( $a+1 ))  #second number
c=0  #third number assume
echo " "
echo "$a"
echo "$b"

while [ 1 ]
do
   c=$(( $a + $b ))
   
   if [ $c -gt $num ]
   then
        break
   fi    
   echo "$c" 
   a=$b
   b=$c
   
done
   
   
