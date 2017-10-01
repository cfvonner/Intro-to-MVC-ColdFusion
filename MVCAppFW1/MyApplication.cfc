component extends="framework.one" {

    function setupApplication() { }

    function setupEnvironment( env ) { }

    function setupSession() { }

    function setupRequest() {
        // use setupRequest to do initialization per request
        request.context.startTime = getTickCount();
    }

    function setupResponse( rc ) { }

    function setupSubsystem( module ) { }

    function setupView( rc ) { }

    function before( struct rc ) {
        rc.appSettings = {
            h1Title : 'FW/1 MVC App',
            title : 'FW/1 MVC Demo'
        };
    }
}
