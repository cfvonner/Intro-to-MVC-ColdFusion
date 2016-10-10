component  displayname="Brewery service" accessors="true" {
    
    public query function getAllBreweries () {
        
        return queryExecute( "
            SELECT  id
                    ,name
                    ,city
                    ,state
                    ,country
            FROM dbo.Brewery
            ORDER BY name"
        );
    }
    
    
}