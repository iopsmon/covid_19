#!/bin/sh
#+-------------------------------------------------------------------------------+
#DESCRIPTION: Clones Covid John Hopkins Data - CSV File - They only update the files 1 per day, so data is 1 day old
#But still good for learning- The CSV file will get ingested by my app and when new ones are copied into my apps 
# data folder, they will also get ingested.
#USE:sudo -u <SUDO USER> <./FILENNAME>
#DATE:17/03/2020
#AUTHOR:Deepak Chohan
#VERSION:
#+-------------------------------------------------------------------------------+

#+-------------------------------------------------------------------------------+
#README
# To use this script you need:-
# - git 
# - Internet Access 
# - sudo access
# - My Covid 19  App installed (Before you use this script - https://github.com/iopsmon/covid_19)

# For reference the data collected is from the https://github.com/CSSEGISandData/COVID-19
#+-------------------------------------------------------------------------------+

#Get Data 
get_covid_data ()
{
echo "Getting data"
echo ""
sudo rm -fr /tmp/covid_data	
sudo mkdir /tmp/covid_data 
cd  /tmp/covid_data
sudo git init 
sudo git clone https://github.com/CSSEGISandData/COVID-19 
sudo cp -u /tmp/covid_data/COVID-19/csse_covid_19_data/csse_covid_19_daily_reports/*.csv /opt/splunk/etc/apps/covid19/data/daily
sudo chown -R splunk:splunk /opt/splunk/etc/apps/covid19/data/daily
sudo -u splunk ls -lrt /opt/splunk/etc/apps/covid19/data/daily
echo ""
echo "Data has been downloaded and copied to Splunk server"
echo "Run search index=covid sourcetype=covid_csv "
}


#+-------------------------------------------------------------------------------+
#Function Calls

#Create Logfile
get_covid_data
