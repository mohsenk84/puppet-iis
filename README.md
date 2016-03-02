# puppet-iis
Create a website using puppet
--
The node name is : webserver1
webserver1 has a role called : webserver
webserver role includes two profiles: base and iis
profile base is doing nothing. reserverd for basic tools
profile iis: is being used in order to create a website with details below: 
--
url			: 'www.mysite.com':
path 		: 'C:\inetpub\wwwroot\mysite',
port   		: '80',
ip_address 	: '*',
host_header : 'www.mysite.com',
app_pool    : 'my_application_pool'

Note:
--

Module for puppet that can be used to create sites, application pools and virtual applications with IIS 7 and above.


This will result in an IIS Directory setup as follows:

* www.mysite.com
  * Application1
  
  
  
  Assumptions
  --
  
  - Dependencies, like PowerShell and stdlib,  for the module are installed on the webserver node (Normally part of profile::basic module)
  - Puppet Enterprise 3.x or Puppet 3.x or higher installed
  - windows: 2008R2, 2012, 2012R2 installed
  
  Limitations
  --
  
  - Issues mentioned on the website : https://forge.puppetlabs.com/puppet/iis/issues
  - Extra security layers on the website 
  - Advanced logging settings 
  
  Enhancements 
  --
  
  - Adding more modules to apply required securities  to the servers like changing the default iis user
  - Embed advance logging configuration into a current module or as another module, this would be helpful for future troubleshooting of the website
  - Some of these issues if related to the current production environment can also be fix by companies automated deployment tool like Octopus server
  