# Rhomobile Example Apps

Rhomobile is an open source platform/framework that allows you to "easily" develop native code for a wide range of mobile devices.

Getting all the moving parts working is a challenge.  Their eBook on it is out of date, and piecing together all the documentation (which is excellent) is time consuming.

This project is a hello-world for rhomobile.  It currently contains:

* ***rho-rails-example*** A sample rails application which serves as an API for the mobile device and rho-connect
* ***rho-connect-example*** Rhomobile uses Rhoconnect to manage data exchanges between the mobile device and rails.  It basically does a bunch of caching and polling via redis and resque to make things work smoothly.
* ***rho-mobile-example*** A sample iPhone app that currently manages products and logins.  

