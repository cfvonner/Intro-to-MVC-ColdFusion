component {
	
	function configure() {
		coldbox = {
			requestStartHandler	= "main.onRequestStart",
						
			// Dev settings only!
			reinitPassword		= '',
			customErrorTemplate = '/coldbox/system/includes/BugReport.cfm'
		};
		
		settings = {
			h1Title = 'ColdBox MVC App',
            title = 'ColdBox MVC Demo'
		};
	
		debugger = {
			debugMode=true
		};
		
	}
	
}