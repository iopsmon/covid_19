Covid 19 app 

This apps provides a dashboard statistics relaated to the Corona Virus, its just for learning purposes. 

The data is based from January 2020 to March 2020 - so if you do use this app, ensure you search all time. 

![](images/covid19.jpg)

Dashboard Features:


- UK Total Confirmed Cases
- UK Total Deaths
- WUK Total Recovered
- UK Deaths Per Day
- World Total Deaths
- World Total Confirmed
- World Total Recovered
- Deaths and predicts over time
- Deaths Over Time 
- Deaths by country over time 
- Deaths by country Pie Chart 
- Table / Confirmed / Recovered / Deaths 
- Deaths Geo Map



Config: 
- index=covid
- sourcetype = covid_csv



Data: 
The data was from the https://github.com/CSSEGISandData/COVID-19 site 
csv data 

Install:

    Download the zip and extract the file, copy the covid19 folder to the Splunk Server
    sudo cp -R covid19 /opt/splunk/etc/apps
    sudo chown -R splunk:splunk /opt/splunk/etc/apps
    sudo -u splunk /opt/splunk/bin/splunk restart
	

Script for Data:- 

Use the bellow to downlaod the John Hopkins Data Set, the data is updated once a day into a CSV file format. You can set a cron job so it runs once a day
 
dc_covid_data.sh

Use:
Login to Splunk and go Covid app and select dashboards, you should see the covid 19 dashboard, click on this, you should see data  