#!/bin/bash
chmod +x ~/guru/invoke.sh
source ~/guru/invoke.sh 
    k=$(date +%s);
	if [ $1 == 'hey' ]; then
		hey
	elif [[ $1 == 'now' ]] || [[ $1 == 'time' ]]; then 
		tm
	elif [ $1 == 'hi' ]; then
		hi
	elif [ $1 == 'name' ]; then
		name
	elif [ $1 == 'wazzup?' ]; then		
		state
	elif [ $1 == 'search' ]; then
		echo "Searching term: " $2; 
		firefox -search $2 & 	
	elif [ $1 == 'tele' ]; then
		telegram &
	elif [ $1 == 'install' ]; then
		echo "g will now install: " $2
		sudo apt-get install $2
	elif [ $1 == 'clhst' ]; then
		clhst
	elif [ $1 == 'login' ]; then
		login	
	elif [ $1 == 'cpu' ]; then
		cpu		
	elif [ $1 == 'cltele' ]; then
	 	killtele	
	elif [ $1 == 'calc' ]; then 
		calc
	elif [[ $1 == 'att' ]] && [[ $2 == 'pdf' ]]; then 
		 attpdf 
	elif [ $1 == 'att' ]; then
	 	 attpng	 	 
	elif [[ $1 == 'abs' ]] && [[ $2 == 'pdf' ]]; then 
		 absentpdf  
	elif [ $1 == 'abs' ]; then
	 	 absentpng
	elif [[ $1 == 'cia' ]] && [[ $2 == 'pdf' ]]; then
	 	 ciapdf
	elif [ $1 == 'cia' ]; then
	 	 ciapng
	elif [ $1 == 'prog' ]; then
		 progress
	elif [ $1 == 'weather' ]; then
		 weather 
	elif [ $1 == 'location' ]; then 
		 location
	elif [ $1 == 'cu-login' ]; then
		  culogin
	elif [ $1 == 'att-calc' ]; then
		  attcalc 	  	 	  	 
	elif [ $1 == 'dice-roll' ]; then 
		echo "Rolling a dice"
		sleep 1
		echo " Rolling....";
		sleep 2
		clear 
		echo " Rolling completed!"
		echo $(( k % 6 + 1 ))
	elif [ $1 == 'coin-toss' ]; then
		 echo "Coin placed on the thumb"
		 sleep 0.15
		 echo "Flipping the coin"
		 sleep 0.15
		 clear
		 echo "Toss completed"
 		if [ $(( k % 2 + 1 )) == 1 ]; then
 		 echo "==================="
 		 echo "=     Heads!      ="
 		 echo "==================="
 		else 
 		 echo "==================="	
 		 echo "=     Tails!      ="
 		 echo "===================" 	  
		fi
fi





















