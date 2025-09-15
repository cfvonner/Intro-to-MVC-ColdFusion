component {

    function configure() {
        coldbox = {
            requestStartHandler	= "main.onRequestStart",

            // Dev settings only!
            reinitPassword		= '',
            customErrorTemplate = '/coldbox/system/exceptions/BugReport.cfm'
        };

        /*interceptors = [
            { class="coldbox.system.interceptors.SES" }
        ];*/

        settings = {
            h1Title = 'Beer Tracker (ColdBox MVC)',
            title = 'ColdBox MVC Demo'
        };

        debugger = {
            debugMode = false
        };

    }

}