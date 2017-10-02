component {
    
    function configure() {
        coldbox = {
            requestStartHandler	= "main.onRequestStart",
                        
            // Dev settings only!
            reinitPassword		= '',
            customErrorTemplate = '/coldbox/system/includes/BugReport.cfm'
        };

        /*interceptors = [
            { class="coldbox.system.interceptors.SES" }
        ];*/

        settings = {
            h1Title = 'ColdBox MVC App',
            title = 'ColdBox MVC Demo'
        };
    
        debugger = {
            debugMode = false
        };
        
    }
    
}