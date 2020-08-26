echo "enter the year to check whether is a leap year or not"
read year

if [  $(( $year % 4 )) -ne 0 ]
then 
    echo "year is not a leap year"
elif [ $(( $year % 100 )) -eq 0 ]
then
    echo "year is not a leap year"
elif [ $(( $year % 400 )) -eq 0 ]    
then
      echo "year is a leap year"
else
    echo "this is leap year"      
fi    

