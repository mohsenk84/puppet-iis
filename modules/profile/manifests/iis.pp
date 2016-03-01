class profile::iis {
  
  ## Configure Website
		iis::manage_site {'www.mysite.com':
			  site_path     => 'C:\inetpub\wwwroot\mysite',
			  port          => '80',
			  ip_address    => '*',
			  host_header   => 'www.mysite.com',
			  app_pool      => 'my_application_pool'
			}
	
  ## Configure AppPool
	  iis::manage_app_pool {'my_application_pool':
			  enable_32_bit           => true,
			  managed_runtime_version => 'v4.0',
			}

  ## Configure Virtual Application
		iis::manage_virtual_application {'application1':
			  site_name   => 'www.mysite.com',
			  site_path   => 'C:\inetpub\wwwroot\application1',
			  app_pool    => 'my_application_pool'
			}
}
