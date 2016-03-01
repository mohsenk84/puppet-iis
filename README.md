# puppet-iis
Create a website using puppet

The node name is : webserver1
webserver1 has a role called : webserver
webserver role includes two provfiles: base and iis
profile base is doing nothing. reserverd for basic tools
profile iis: is being used in order to create a website with details below: 

url			: 'www.mysite.com':
path 		: 'C:\inetpub\wwwroot\mysite',
port   		: '80',
ip_address 	: '*',
host_header : 'www.mysite.com',
app_pool    : 'my_application_pool'

Module for puppet that can be used to create sites, application pools and virtual applications with IIS 7 and above.
This will result in an IIS Directory setup as follows:

* www.mysite.com
  * Application1