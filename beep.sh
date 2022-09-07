#!/bin/bash

# The user should have write privilleges to the terminal /dev/tty25
# sudo chown <USERNAME> /dev/tty25

while :
do
	ping -c1 8.8.8.8 &> /dev/null

	if [ $? -ne 0 ];
	then
		echo -ne '\007' > /dev/tty25;
		sleep 3;
	else
		
		echo Connection Established!
		sleep 1;
		for i in {1..3}; 
		do 
			echo -ne '\007' > /dev/tty25; 
			sleep .5;
		done
		break
	fi

done
