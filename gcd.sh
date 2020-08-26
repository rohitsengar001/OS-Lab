echo "kindly enter any two numbers"
read a b #scaning the value
max=0
if [ $a -lt $b ]
then 
     max=$b
else
     max=$a     
fi


while [ $max -ne 0 ] 
do
   x=$(( $a % max ))
   y=$(( $b % max ))     
   
   if [ $x -eq 0 -a $y -eq 0 ] 
   then
        echo gcd of $a and $b is $max
        break
   fi
   max=$(( $max - 1 ))
   
done        
