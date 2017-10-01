component output='false' {
    variables.curPath = Replace( GetDirectoryFromPath( GetCurrentTemplatePath() ), "\", "/", "ALL");
    variables.dbPath = Replace( variables.curPath, "ProceduralApp/", "" ) & 'DB/Derby/';

    this.name = hash( GetBaseTemplatePath() );
    this.applicationTimeout = CreateTimeSpan( 1, 0, 0, 0 );
    this.sessionManagement = true;
    this.sessionTimeout = CreateTimeSpan( 0, 2, 0, 0 );
    this.datasources = {
        BeerTracker = {
            url = "jdbc:derby:#variables.dbPath#;MaxPooledStatements=300", 
            driver = "Apache Derby Embedded"
        }
    };
    this.datasource = "BeerTracker";
    

    public boolean function OnApplicationStart() {
        return true;
    }

    public void function OnSessionStart() {
        return;
    }

    public boolean function OnRequestStart( required string targetpage ) {
        if( lcase( right( targetpage, 3 ) ) == 'cfc') {
            structDelete( this, 'OnRequest' );
        }

        return true;
    }

    public void function OnRequest( required string targetpage ) {
        request.h1Title = 'Procedural App';
        request.title = 'Procedural Demo';

        // merge the form and url scopes together into request scope for convenience
        if ( IsDefined( 'URL') ) request.append( url );
        if ( Isdefined( 'form' ) ) request.append( form );

        // include the requested page 
        cfinclude( template=arguments.targetpage );
    }
}
