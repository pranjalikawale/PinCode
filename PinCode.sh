#!/bin/bash -x

echo "Enter the pincode"
read pinCode
pinCodePattern="^[0-9]{6}$"

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

