#armstrong number
echo "enter the number"
read num
temp_num=$num
temp=$num
sum=0
n=0
count=0
# ----------find number of digits----------------
while [ $temp -gt 0 ]
do
  quo=$(( $temp / 10 ))
  rem=$(( $temp % 10 ))
  count=$(( $count + 1 ))
  temp=$quo
done  
echo "number of digit is $count"

#logic
while [ $temp_num -gt 0 ]
do
   quo=$(( $temp_num / 10 ))
   rem=$(( $temp_num % 10 ))
   
   n=$(( $rem ** $count))   
   sum=$(( $sum + $n ))
   temp_num=$quo
done
if [ $sum -eq $num ] 
then
  echo "it is an Armstrong number"
else
  echo "it is not Armstrong number" 
fi      
