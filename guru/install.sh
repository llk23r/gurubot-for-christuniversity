#installing all the required dependencies
# cd ~/guru/
# x-terminal-emulator
chmod +x install.sh
touch ~/.bash_aliases
cat aliases >> ~/.bash_aliases
#Update the apt-get repo
sudo apt-get update -y
sudo apt-get upgrade -y

#Dependencies for Phantomjs
sudo apt-get install build-essential chrpath libssl-dev libxft-dev libfreetype6-dev libfreetype6 libfontconfig1-dev libfontconfig1 -y
#wget Phantomjs
sudo wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
#Extracting phantomjs to desired location
sudo tar xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2 -C /usr/local/share/
#Symlink of PhantomJs binary to systems bin directory
sudo ln -s /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/
#copy the required js files to the bin directory
cp /home/$USER/guru/js/* /home/$USER/Downloads/phantomjs-2.1.1-linux-x86_64/bin/
#Ruby Installation
sudo apt-get install ruby-full
#exporting path
echo "PATH=\$PATH:/usr/local/bin" >> ~/.bashrc
