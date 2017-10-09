component displayname="Venue service" accessors="true" {

    // alternate way of using Dependency Injection to load necessary objects
    public any function init ( helperService ) {
        variables.hs = helperService;
    }
    
    public query function getAllVenues () {
        return queryExecute( 
           "SELECT  id
                    ,name
                    ,city
                    ,state
                    ,country
                    ,lat
                    ,lon
            FROM Venue
            ORDER BY name"
        ); // queryExecute equivalent to <cfquery>
    }
    
    public query function getVenue ( required numeric id ) {
        return queryExecute( 
           "SELECT  id
                    ,name
                    ,city
                    ,state
                    ,country
                    ,lat
                    ,lon
            FROM Brewery
            WHERE id = :id",
            { id = { value = arguments.id, cfsqltype = 'integer' } } // equivalent to <cfqueryparam>
        );
    }
    
    public numeric function save ( numeric id = 0, string name = '', string city='',
          string state = '', string country = '', numeric lat = 0, nuermic lon = 0 ) {
        var venueExists = getVenue( id ).recordcount;
        if ( arguments.id > 0 && venueExists ) {
            queryExecute(
               "UPDATE Venue
                SET name = :name
                    ,city = :city
                    ,state = :state
                    ,country = :country
                    ,lat = :lat
                    ,lon = :lon
                WHERE id = :id",
                {
                    id = { value = arguments.id, cfsqltype = 'integer'},
                    name = { value = arguments.name, 
                        null = hs.isEmptyString( arguments.name ), cfsqltype = 'varchar' },
                    city = { value = arguments.city, 
                        null = hs.isEmptyString( arguments.city ), cfsqltype = 'varchar' },
                    state = { value = arguments.state, 
                        null = hs.isEmptyString( arguments.state ), cfsqltype = 'varchar' },
                    country = { value = arguments.country, 
                        null = hs.isEmptyString( arguments.country ), cfsqltype = 'varchar' },
                    lat = { value = arguments.lat,
                        null = ( arguments.lat = 0 ), cfsqltype = 'decimal' },
                    lon = { value = arguments.lon,
                        null = ( arguments.lon = 0 ), cfsqltype = 'decimal' }
                }
            );
            return arguments.id;
        }
        else if ( arguments.id == 0 ){
            var result = '';
            queryExecute(
               "INSERT INTO Venue
                ( name, city, state, country, lat, lon )
                VALUES ( :name, :city, :state, :country, :lat, :lon )",
                {
                    name = { value = arguments.name, 
                        null = hs.isEmptyString( arguments.name ), cfsqltype = 'varchar' },
                    city = { value = arguments.city, 
                        null = hs.isEmptyString( arguments.city ), cfsqltype = 'varchar' },
                    state = { value = arguments.state, 
                        null = hs.isEmptyString( arguments.state ), cfsqltype = 'varchar' },
                    country = { value = arguments.country, 
                        null = hs.isEmptyString( arguments.country ), cfsqltype = 'varchar' },
                    lat = { value = arguments.lat,
                        null = ( arguments.lat = 0 ), cfsqltype = 'decimal' },
                    lon = { value = arguments.lon,
                        null = ( arguments.lon = 0 ), cfsqltype = 'decimal' }
                },
                { result = 'result'}
            );
            return result.generatedkey;
        }
    }
    
    public void function delete ( required numeric id ) {
        queryExecute( 
            "DELETE FROM Venue WHERE id = :id",
            { id={ value=arguments.id, cfsqltype='integer' } }
        );
    }
}