# rhoconnect example app

## prerequisites

Ruby 1.9.3-p125 was used to testing on this app

## start
Assumes redis is running (TODO doc setup of redis)

		bundle install
		rhoconnect start 
		rhoconnect web

un:rhoadmin  pw:

Go to http://localhost:9292/console/#home 

Copy the api token to the settings.yml and restart (#TODO - for real? seems suspect, but it was the only thing that worked)

		:development:
		  :licensefile: settings/license.key
		  :redis: localhost:6379
		  :syncserver: http://localhost:9292/api/application/
		  :push_server: http://appname:secret@localhost:8675/
		  :api_token: d630de69ceef409f8e731d13d2ccfc31
  
## setting this project up from scratch (or how we got to what's in this project right now)

Create project

		rhoconnect app rho-connect-example

Enable stats - uncomment this line in config.ru

		Rhoconnect::Server.enable  :stats
