# rho mobile example app

## prerequisites

Ruby 1.9.3-p125 was used for testing

## quick start

		sudo gem install rhodes --pre
		rake run:iphone
		tail -f rholog.txt

When iphone simulator comes up... login using anything you want.  You should then see a list of products

If you get something like this back:

		xcodebuild: error: SDK "iphonesimulator5.0" cannot be located.

		cd /Users/wiseleyb/.rbenv/versions/1.9.3-p125/lib/ruby/gems/1.9.1/gems/rhodes-3.3.3

		ERROR: invalid SDK in BUILD.YML !
		iphonesimulator5.0 is NOT installed on this computer !
		See all installed SDKs on this computer :
		PWD: /Users/wiseleyb/.rbenv/versions/1.9.3-p125/lib/ruby/gems/1.9.1/gems/rhodes-3.3.3
		CMD: /Developer/usr/bin/xcodebuild -showsdks
		RET: Mac OS X SDKs:
		RET: 	Mac OS X 10.6                 	-sdk macosx10.6
		RET: 	Mac OS X 10.7                 	-sdk macosx10.7
		RET: 
		RET: iOS SDKs:
		RET: 	iOS 4.3                       	-sdk iphoneos4.3
		RET: 
		RET: iOS Simulator SDKs:
		RET: 	Simulator - iOS 4.3           	-sdk iphonesimulator4.3
		RET: 

Simply add iphonesimulator4.3 to build.yml and restart (#TODO lame - figure out why 5.0 isn't installing, has to do with xcode install I think - which takes way to long to fix right now)

## setting this project up from scratch (or how we got to what's in this project right now)

Create app/model

		rhogen app rho-mobile-example
		rhogen model Product name

Uncomment sync line in app/Product/product.rb

		# Uncomment the following line to enable sync with Product.
  	enable :sync

Set sync/connect server

		# sync server url, typically this will look like 'http://<hostname>:<port>/application'
		# for example: 'http://localhost:9292/application
		syncserver = 'http://localhost:9292/application'

Add a link to products in app/index.erb with a check for login

    <% if SyncEngine::logged_in > 0 %>
      <li><a href="<%= url_for :controller => :Product, :action => :index %>">Products</a></li>
    <% end %>
    