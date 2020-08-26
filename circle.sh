pi=3.14
echo "enter the radius of circle"
read r

area=`echo $pi \* $r \* $r |bc ` 
pera=`echo $pi \* $pi \* $r |bc `

echo "area = $area"
echo "perameter = $pera"


