# gurubot-for-christuniversity

Welcome to the Christ University students' suite. This bot allows you to fetch attendance right from the terminal in PDF or as a PNG image. It also provides additional functionality like that of Bunkmate.in, but with more features like medical/co-curricular leave added into it. Due to the recent captcha addition, users are required to manually feed in the cookie to the bot from time to time but a better workaround can be expected soon. 

gurubot or g-bot is written in three different scripting languages : Ruby, Shell and JavaScript. It uses PhantomJs to render the PNG files. 

<br/>

To install the bot and the required dependencies, please follow these steps:

If you have git configured, type the following commands in the terminal.

1. $ cd ~/
2. $ git clone git@github.com:llk23r/gurubot-for-christuniversity.git
3. $ cd ~/gurubot-for-christuniversity/guru/
4. $ bash install.sh
5. $ g name

If you don't have git configured, type the following commands in the terminal to install it at home directory. 

1. $ google-chrome https://github.com/llk23r/gurubot-for-christuniversity/archive/master.zip
2. $ cd ~/Downloads
3. $ tar -xvzf gurubot-for-christuniversity
4. $ cd ~/
5. $ mkdir gurubot
6. $ mv ~/Downloads/gurubot-for-christuniversity/* ~/guru
7. $ cd guru/guru
8. $ bash install.sh
9. $ g name


If you get "I am Acharya's Machine!", the bot is set up successfully! You can try out the following commands after that.

<br/>

							Christ University g-bot command


*			 g pdf att => Fetch attendance in PDF

* 			 g img att => Fetch attendance in a PNG image

* 			 g pdf abs => Fetch absence details in PDF
	
*  			 g img abs => Fetch absence details in PNG image

*  			 g pdf cia => Fetch CIA details in PDF

* 			 g img cia => Fetch CIA details in PNG image

* 			 g prog    => Fetch academic Progress details in PDF

*			 g cu-login	=> Internet Login at 192.168.100.100:8090

*			 g dice-roll => Rolls a dice [Generates a random number from 1 to 6]

*			 g coin-toss => Toss a coin [Generates a side of coin randomly]

*			 g clhst => Clears firefox cookies, history and closes the browser

*			 g att-calc => Attendance, Absence, Leave, Bunks calculator suite

<br/>

![PNG Attendance](https://raw.githubusercontent.com/llk23r/gurubot-for-christuniversity/master/guru/sample/attendance.png)

<br/>

![Terminal Bot](https://raw.githubusercontent.com/llk23r/gurubot-for-christuniversity/master/guru/sample/attendancebot.png)

<br/>

![PDF Attendance](https://raw.githubusercontent.com/llk23r/gurubot-for-christuniversity/master/guru/sample/attpdf.png)

<br/>


To fetch attendance, cookie has to be copied and pasted. In chrome, you can do that using fn+F12 => Find the attendance URL,
then find cookie that begins with 'J..'. Copy that and paste it once when asked. 