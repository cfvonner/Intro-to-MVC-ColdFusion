component displayname="Brewery controller"  accessors="true" {

    property breweryService; // Dependency Injection in action!

    public any function init ( fw ) {
        variables.fw = fw;
        return this;
    }
    
    public void function default ( rc ) {
        variables.fw.redirect( action='brewery.list', append='none');
    }
    
    public void function list ( rc ) {
        rc.breweries = breweryService.getAllBreweries();
    }
    //maybe don't need this one, if use edit() w/ id=0
    public void function add ( rc ) {
        
    }
    
    public void function edit ( rc ) {
        
    }
    
    public void function save ( rc ) {
        
    }
    
    public void function delete ( rc ) {
        
    }
}