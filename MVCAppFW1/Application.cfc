component {
    variables.curPath = Replace( GetDirectoryFromPath( GetCurrentTemplatePath() ), "\", "/", "ALL");
    variables.dbPath = Replace( variables.curPath, "MVCAppFW1/", "" ) & 'DB/Derby/';

    this.name = hash( getBaseTemplatePath() );
    this.applicationTimeout = CreateTimeSpan( 1, 0, 0, 0 );
    this.sessionManagement = true;
    this.sessionTimeout = CreateTimeSpan( 0, 2, 0, 0 );
    this.datasources = {
        BeerTracker = {
            url = "jdbc:derby:#variables.dbPath#;MaxPooledStatements=300"
            ,driver = "Apache Derby Embedded"
        }
    };
    this.datasource = "BeerTracker";
    this.mappings['/framework'] = expandpath( '/MVCApp-FW1/fw1/framework' );

    // FW/1 Configuration
    function _get_framework_one() {
        if ( !structKeyExists( request, '_framework_one' ) ) {
            request._framework_one = new MyApplication({
                trace : true
                ,reloadApplicationOnEveryRequest : true
                //,generateSES : true
                //,SESOmitIndex : true 
            });
        }
        return request._framework_one;
    }

    // delegation of lifecycle methods to FW/1:
    function onApplicationStart() {
        return _get_framework_one().onApplicationStart();
    }
    function onError( exception, event ) {
        return _get_framework_one().onError( exception, event );
    }
    function onRequest( targetPath ) {
        return _get_framework_one().onRequest( targetPath );
    }
    function onRequestEnd() {
        return _get_framework_one().onRequestEnd();
    }
    function onRequestStart( targetPath ) {
        return _get_framework_one().onRequestStart( targetPath );
    }
    function onSessionStart() {
        return _get_framework_one().onSessionStart();
    }
}
