<cfscript>
    setBaseURL("http://#cgi.HTTP_HOST#/MVCAppColdBox");
    //setAutoReload( true );
    addRoute(":handler/:action?");
</cfscript>