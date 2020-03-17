Covid 19 app 

This apps provides a dashboard statistics relaated to the Corona Virus, its just for learning purposes. 

The data is based from January 2020 to March 2020 - so if you do use this app, ensure you search all time. 

Dashboard Features:


- UK total deaths
- UK deaths per day
- World total deaths
- World recovered over time
- Deaths and predicts over time
- Deaths over time
- Deaths by country over time
- Table / Confirmed / Recovered / Deaths

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