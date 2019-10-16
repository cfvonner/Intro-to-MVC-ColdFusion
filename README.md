# CFSummit2016-MVC
Presentation and demonstration app for my _Taking Application Development to the Next Level with ColdFusion_ presentation.

> DISCLAIMER:
>This code is simplified to clearly demonstrate an application written as both procedural code and MVC code.  It does not >necessarily represent best practices, does not include security measures, and does not include user input validation/sanitation.

## Installation
The database needs to be set up first. The presentation was designed for use with SQL Server (any edition will work including Express). Create an empty database named BeerTracker. Open the included `SQLServerDBSetup.sql` file in SQL Server Management Studio and run it to build all of the required tables.

The fastest way to get the app running is to use CommandBox. CommandBox can be downloaded from here: [][].  Once it is installed, launch `Box.exe`.

Navigate to the folder where you downloaded this project. Run `install` to install the depedencies for each app.

Type `server start`.  The first time this is run, CommandBox will download the ColdFusion 2016 .war file and place it in it's local repository, unpack it, start up ColdFusion server, and launch your default web browser to the app home page.  From that point on, `server start` will just start the server.  The included _server.json_ file provides the required settings for CommandBox to run ColdFusion.

## Contributions
Thank you to the following individuals who have contributed to these sample applications:
* [Brad Wood] (https://twitter.com/bdw429s) - ColdBox MVC demo application

[]: https://www.ortussolutions.com/products/commandbox
