#!/bin/bash

#BigRush's simple username check script

#User types his username and to get hi and his user name
echo -e "To get hi and your username please enter your user name,\nif you don't know your username, enter \"whoami\""
read -p ">" user
#
if [ "$user" = "$USER" ] 
	then
	echo "Hi $user"
#If the user doesn't know his user namme the script will tell him his user name
elif [ "$user" = "whoami" ]
	then
	echo "Your user name is $USER"
	echo "Now that you know you user name please enter it:"
	read -p ">" user
		case $user in
		#User is a good boy
		$USER) echo "Hi $user" ;;
		#User is a wiseass
		*) echo "That's not your user name, don't try to trick me, I'm out" ;;
		esac
#User is stupid
else
	echo "You could have just typed \"whoami\" you know..."
fi
