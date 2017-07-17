#!/bin/bash
function hey {
	echo "hello ..."
}

function hi {
	echo "hi!.."
}

function name {
	echo "I am Acharya's Machine!"
}

function state {
	echo "All good here! How are you doing?"
}

function tm {
	echo "The current date and time is"
	date 
}

function telegram {
	/home/rahul/Downloads/Telegram/Telegram &
}

function clhst {
	rm ~/.mozilla/firefox/*.default/*.sqlite ~/.mozilla/firefox/*default/sessionstore.js
	rm -r ~/.cache/mozilla/firefox/*.default/*
	killall firefox
}

function cpu {
	echo "Your CPU model is: "
	cat /proc/cpuinfo  | grep 'name'| uniq
}

function killtele {
	killall  /home/rahul/Downloads/Telegram/Telegram
}

function calc {
	gnome-calculator
}

function attpng {
	  ruby /media/rahul/part/skyscraper/login_details.rb
	  ruby /media/rahul/part/skyscraper/attendance_details.rb 	  
	  cd ~/Downloads/phantomjs-2.1.1-linux-x86_64/bin/
	  phantomjs attpng.js
	  xdg-open currattn.png
	  cd
}

function attpdf {
	  ruby /media/rahul/part/skyscraper/login_details.rb
	  ruby /media/rahul/part/skyscraper/attendance_details.rb	  
	  wkhtmltopdf attendancenew.html attendance.pdf	
	  google-chrome attendance.pdf &
}

function absentpng {
	  ruby /media/rahul/part/skyscraper/login_details.rb 	
	  ruby /media/rahul/part/skyscraper/absence_details.rb	  
	  cd ~/Downloads/phantomjs-2.1.1-linux-x86_64/bin/
	  phantomjs absntpng.js
	  xdg-open currabsnt.png
	  cd
}

function absentpdf {
	  ruby /media/rahul/part/skyscraper/login_details.rb
	  ruby /media/rahul/part/skyscraper/absence_details.rb
	  wkhtmltopdf absencenew.html absent.pdf
	  google-chrome absent.pdf &
} 

function ciapng {
	  ruby /media/rahul/part/skyscraper/login_details.rb
	  ruby /media/rahul/part/skyscraper/cia_details.rb	  
	  cd ~/Downloads/phantomjs-2.1.1-linux-x86_64/bin/
	  phantomjs cia.js
	  xdg-open cia.png
	  cd
}

function ciapdf {
	  ruby /media/rahul/part/skyscraper/login_details.rb
	  ruby /media/rahul/part/skyscraper/cia_details.rb
	  wkhtmltopdf cianew.html cia.pdf
	  google-chrome cia.pdf &
}

function progress {
	  ruby /media/rahul/part/skyscraper/login_details.rb
	  ruby /media/rahul/part/skyscraper/academic_details.rb
	  wkhtmltopdf academic.html academic.pdf	
	  google-chrome academic.pdf &
}

function weather {
	echo "Fetching weather details!"
	firefox -search weather

}

function culogin {
	ruby /media/rahul/part/skyscraper/culogin.rb
}

function location {
	echo "Fetching Current Location!"
	google-chrome --app https://www.google.co.in/maps/
}

function attcalc {
	clear 
	ruby /media/rahul/part/skyscraper/attcalc_details_temp.rb
}