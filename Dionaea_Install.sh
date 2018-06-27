#!/bin/bash
#*********Start Script**********

sudo apt-get -y update
sudo apt-get -y dist-upgrade
sudo apt-get -y install software-properties-common python-pip git unzip
sudo add-apt-repository ppa:honeynet/nightly
sudo apt-get -y update
sudo apt-get -y install dionaea  
sudo service dionaea start

echo "Dionaea Started Now installing DionaeaFR"

#********Start DionaeaFR***************Credit to Execute Malware for the Code*************

git clone https://github.com/executemalware/Honeypot-Visualizations.git
mv Honeypot-Visualizations/*.sh .
rm b*.sh
rm c*.sh
rm -rf Honeypot-Visualizations/
chmod +x *.sh
echo "Running dfr.sh by ExecuteMalware"
./dfr.sh

Modify Sql Database location
Line NAME:
/opt/dionaea/var/dionaea/dionaea.sqlite

Add Virus total API Key:
cp /opt/dionaea/etc/ihandlers-available/virustotal.yaml /opt/dionaea/etc/ihandlers-enabled/virustotal.yaml

service dionaea restart
./start_dfr.sh type yes when asked 

