component displayname="Brewery service" accessors="true" {

    public query function getAllBreweries () {
    
        return queryExecute( "
            SELECT  id
                    ,name
                    ,city
                    ,state
                    ,country
            FROM dbo.Brewery
            ORDER BY name" );
    }
    
    public query function getBrewery ( required numeric id ) {
        return queryExecute( "
            SELECT  id
                    ,name
                    ,city
                    ,state
                    ,country
            FROM dbo.Brewery
            WHERE id = :id
        ", {id={ value=arguments.id, cfsqltype='integer' } } );//<cfqueryparam value="#request.breweryId#" cfsqltype="cf_sql_integer">
    }
    
    public function save ( required numeric id ) {
        
    }
    
    public function delete ( required numeric id ) {
        
    }
}