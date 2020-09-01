echo "enter the range of natural number i.e 2 23 that means 2to23"
read lb ub
sum=0

while [ $lb -le $ub ]
do
  sum=$(( $sum + $lb ))
  lb=$(( $lb + 1 )) 
done
  
echo "sum of natural Nuber is : $sum"
