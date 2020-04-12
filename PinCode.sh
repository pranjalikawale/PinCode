#!/bin/bash -x

echo "Enter the pincode"
read pinCode
# indian pincode start with (1-9)
pinCodePattern="^[1-9]{1}[0-9]{2}[ ][0-9]{3}$"

# check for pincode validation
function validation()
{
   if [[ $1 =~ $2  ]]
   then
      echo "$1 is valid"
   else
      echo "$1 is invalid"
   fi
}

validation $pinCode $pinCodePattern

