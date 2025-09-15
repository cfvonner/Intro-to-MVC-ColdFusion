component displayname="Beer controller"  accessors="true" {

    property beerService; // Dependency Injection in action!
    property breweryService;

    public any function init ( fw ) {
        variables.fw = fw;
        return this;
    }

    public void function default ( rc, prc ) {
        variables.fw.redirect( action='beer.list', append='none');
    }

    public void function list ( rc, prc ) {
        rc.beers = beerService.getAllBeers();
        rc.subtitle = "Beer List";
    }

    public void function add ( rc, prc ) {
        rc.beerId = 0;
        rc.breweryID = 0;
        rc.beerName = '';
        rc.beerType = '';
        rc.beerABV = 0;
        rc.beerIBU = 0;
        rc.beerTypes = beerService.getBeerTypes();
        rc.breweries = breweryService.getAllBreweries();
        rc.subtitle = 'Add Beer';
        variables.fw.setView( 'beer.edit' );
    }

    public void function edit ( rc, prc ) {
        if ( StructKeyExists( rc, 'beerId' ) && rc.beerId > 0 ) {
            var beer = beerService.getBeer( rc.beerId );
            rc.breweryId = beer.breweryId;
            rc.beerName = beer.name;
            rc.beerType = beer.Type;
            rc.beerABV = beer.ABV;
            rc.beerIBU = beer.IBU;
        }
        rc.beerTypes = beerService.getBeerTypes();
        rc.breweries = breweryService.getAllBreweries();
        rc.subtitle = 'Edit Beer';
    }

    public void function save ( rc, prc ) {
        rc.beerId = beerService.save( rc.beerId, rc.beerName, rc.breweryId,
            rc.beerType, rc.beerABV, rc.beerIBU );
        rc.subtitle = 'Edit Beer';
        variables.fw.redirect( action='beer.edit', append='beerId');
    }

    public void function delete ( rc, prc ) {
        if ( StructKeyExists( rc, 'beerId' ) && rc.beerId > 0 ) {
            beerService.delete( rc.beerId );
        }
        variables.fw.redirect( action='beer.list', append='none');
    }
}