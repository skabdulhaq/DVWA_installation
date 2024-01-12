cd ~
git clone https://github.com/skabdulhaq/DVWA_installation
cd DVWA_installation
chmod +x *
sudo cp ./start_DVWA.sh /bin/ 
cd ~ 
rm -rf DVWA_installation
gpasswd -a $USER docker
clear
echo $'installation completed successfully\n\n\n\nEnter this command to start DVWA\nstart_DVWA.sh'
