# Rhomobile Example Apps

Rhomobile is an open source platform/framework that allows you to "easily" develop native code for a wide range of mobile devices.

Getting all the moving parts working is a challenge.  Their eBook on it is out of date, and piecing together all the documentation (which is excellent) is time consuming.

This project is a hello-world for rhomobile.  It currently contains:

* ***rho-rails-example*** A sample rails application which serves as an API for the mobile device and rho-connect
* ***rho-connect-example*** Rhomobile uses Rhoconnect to manage data exchanges between the mobile device and rails.  It basically does a bunch of caching and polling via redis and resque to make things work smoothly.
* ***rho-mobile-example*** A sample iPhone app that currently manages products and logins.  

Since we'll be adding things to this as we go we've broken it into seperate examples on branches.  This is so you can have just what you need when trying to figure something out.

## Examples

### Hello World

***branch*** <https://github.com/reinteractive-open/rho-example/tree/feature/example-01-hello-world>

This branch does the absolute basics.  It allows you to manage Products.  The authentication is "true" meaning you can login in with whatever you like.

***To Use***

	git clone git://github.com/reinteractive-open/rho-example.git
	cd rho-example
	git checkout --track -b feature/example-01-hello-world origin/feature/example-01-hello-world

And follow the README on the branch for more info.

