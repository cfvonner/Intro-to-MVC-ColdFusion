<cfscript>
    setBaseURL("http://#cgi.HTTP_HOST#/MVCAppColdBox");
    addRoute(":handler/:action?");
</cfscript>