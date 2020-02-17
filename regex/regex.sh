#!/bin/bash/ 
CheckFirstName()
{

	printf "Enter your First Name : (first character should uppercase followed by any number of character) "
	read firstname
	if [[ $firstname =~ ^[[:upper:]]{1}[[:lower:]]*$ ]];
	then
		echo "Valid first name"
	else
		echo "Invalid first name"
		CheckFirstName
	fi
}

CheckLastName(){
	printf "Enter your last name: (firstcharacter should be uppercase followed by any number of character) "
	read lastname
	if [[ $lastname =~ ^[[:upper:]]{1}[[:lower:]]*$ ]];
	then
		echo "valid Last name"
	else
		echo"Invalid Last name"
		CheckLastName
	fi
}

CheckMobileNumber(){
	printf "Enter your mobile No.: (+91(space)(10 digits))"
	read mobilenumber
	if [[ $mobilenumber =~ ^[+91]{3}[[:space:]]{1}[[:digit:]]{10}$ ]];
	then
		echo "Valid mobile no."
	else
		echo "Invalid mobile number"
		CheckMobileNumber
	fi
}

CheckEmail(){
	printf "Enter the Email id: ( ___@__.com ) "
	read email
	if [[ $email =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[com]{3}$ ]];
	then
		echo "Valid Email Id"
	else
		echo "Invalid Email id"
		CheckEmail
	fi
}

CheckPwd(){
	echo "Enter the password minimun 8 character : ( miniumum 8 charater along with special charater #%^* and digit )"
	read pwd
	if [[ $pwd =~ [a-z,A-Z,0-9,#%^*]{8,} ]];
	then
		echo "Valid password"
	else
		echo "Invalid Password"
		CheckPwd
	fi
}
CheckFirstName
CheckLastName
CheckMobileNumber
CheckEmail
CheckPwd
echo "first name : $firstname"
echo " last name : $lastname"
echo "mobile number : $mobilenumber"
echo "email-id : $email"
echo "password : $pwd "
