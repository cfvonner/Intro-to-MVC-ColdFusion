# CFSummit2016-MVC
Presentation and demonstration app for my _Taking Application Development to the Next Level with ColdFusion_ presentation.

> DISCLAIMER:
>This code is simplified to clearly demonstrate an application written as both procedural code and MVC code.  It does not >necessarily represent best practices, does not include security measures, and does not include user input validation/sanitation.

## Installation


The fastest way to get the app running is to use CommandBox. CommandBox can be downloaded from here: [][].  Once it is installed, launch `Box.exe`.

Navigate to the folder where you downloaded this project. Run `install` to install the depedencies for each app.

Type `server start`.  The first time this is run, CommandBox will download the ColdFusion 2016 .war file and place it in it's local repository, unpack it, start up ColdFusion server, and launch your default web browser to the app home page.  From that point on, `server start` will just start the server.  The included _server.json_ file provides the required settings for CommandBox to run ColdFusion.

The application will use an Apache Derby database (the Java JDBC driver for Derby is bundled with Adobe ColdFusion) that is already defined in the Application.cfc file. The first time the CommandBox server is started up, it will create the required database, create the required tables, and populate some sample data.  The database will be placed inside a new folder named `Derby` that will be placed inside the `./DB` folder within the application.

## Contributions
Thank you to the following individuals who have contributed to these sample applications:
* [Brad Wood] (https://twitter.com/bdw429s) - ColdBox MVC demo application

[]: https://www.ortussolutions.com/products/commandbox
