component {
    variables.curPath = Replace( GetDirectoryFromPath( GetCurrentTemplatePath() ), "\", "/", "ALL");
    variables.dbPath = variables.curPath & 'DB/Derby/';

    this.name = "Intro-To-MVC";
    this.datasources = {
        BeerTracker = {
            url = "jdbc:derby:#variables.dbPath#;create=true;MaxPooledStatements=300", //variables.dbURL, 
            driver = "Apache Derby Embedded"
        }
    };
    this.datasource = 'BeerTracker';


    public boolean function onApplicationStart() { 
        /*if ( FileExists( variables.dbPath ) ) {
            variables.feedback = 'Database not set up yet.';
            createDatabase();
        }*/
        return true; 
    } 

    public void function onRequest(required string targetPage) { 
        if ( !DirectoryExists( variables.dbPath ) ) {
            include "buildDB.cfm";
            location("/", "false");
        }
        else {
            include arguments.targetPage;
        }
        return; 
    }

}