# Dionaea-DionaeaFR
Install Script for Dionaea and DionaeaFR


This is a script that is a combination of what I have found to be the easiest way to install Dionaea and DionaeaFR. The second hlaf of the script is using https://github.com/executemalware/Honeypot-Visualizations by ExecuteMalware to install DionaeaFR. I ran into a couple of things using this script so I added them before starting his. After the install you will still need to do the following. 

Modify Sql Database location in file /opt/DionaeaFR/DionaeaFR/settings.py
Line NAME:
/opt/dionaea/var/dionaea/dionaea.sqlite

You will need to copy the virustotal.yaml from the available to the enabled and add your API key if you have one. 

cp /opt/dionaea/etc/ihandlers-available/virustotal.yaml /opt/dionaea/etc/ihandlers-enabled/virustotal.yaml
nano virustotal.yaml - Enter your API key in this file

service dionaea reastart 
./start_dfr.sh


