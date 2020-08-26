echo "enter the number"
read num
val=0
while [ $num -gt 0 ]
do
   #rem=`expr $num % 10`
   #quo=`expr $num / 10`
   #val=`expr $rem + $val * 10`
   #num=$quo
   rem=$(( $num % 10 ))
   quo=$(( $num / 10 ))
   val=$(( $rem + $val * 10 ))
   num=$quo
done   
echo "Riverse number is $val"
echo "Nirmit is best companies"
