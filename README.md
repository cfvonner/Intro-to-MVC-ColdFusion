# CFSummit2016-MVC
Presentation and demonstration app for my _Bringing Order to the Chaos: Take the MVC Plunge_ ColdFusion Summit 2016 session.

##DISCLAIMER:
This code is simplified to clearly demonstrate an application written as both procedural code and MVC code.  It does not necessarily represent best practices, does not include security measures, and does not include user input validation/sanitation.

## Installation
The fastest way to get the app running is to use CommandBox. CommandBox can be downloaded from here: [][].  Once it is installed,  launch `Box.exe`.  Navigate to the folder where you downloaded this project. Type `server start`.  The first time this is run, CommandBox will download the ColdFusion 2016 .war file and place it in it's local repository, unpack it, start up ColdFusion server, and launch your default web browser to the app home page.  From that point on, `server start` will just start the server.  The included _server-CFSummit2016-MVC.json_ file provides the required settings for CommandBox to run ColdFusion.

There is an issue with generating SES-friendly URLs in this app because the MVC version of the app is in a subfolder off of the webroot.  FW/1 writes SES-friendly URL paths as if the application runs directly from the web root, so the generated URLs are incorrect.  To work around that, the FW/1 config setting `baseURL : "useRequestURI"` has been used; however, this prevents the FW/1 `buildURL()` function from writing the URLs entirely in SES-friendly format.

[]: https://www.ortussolutions.com/products/commandbox
