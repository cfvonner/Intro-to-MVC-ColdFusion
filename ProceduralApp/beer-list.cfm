<!DOCTYPE html>
<cfquery name="getBeers" cachedwithin="#CreateTimeSpan(0,0,1,0)#">
    SELECT  id
            ,breweryId
            ,name
            ,type
            ,abv
            ,ibu
    FROM dbo.Beer
    ORDER BY name
</cfquery>

<html>
    <head>
        <cfinclude template="header.cfm">
        <title>Procedural Demo</title>
    </head>
    <body role="document">
        <div class="container" role="main">
            <div id="home" class="page-header">
                <h1>CFSummit2016 Beer App</h1>
                <h3>Beer List</h3>
            </div>
            <div class="container">
                <table id="beers" class="table table-bordered 
                    table-striped table-hover table-condensed table-dt">
                    <thead>
                        <th>Name</th>
                        <th>Type</th>
                        <th>
                            <a href="#" data-toggle="tooltip" 
                                title="Alcohol By Volume">ABV</a>
                        </th>
                        <th>
                            <a href="#" data-toggle="tooltip" 
                                title="International Bitterness Units">IBU</a>
                        </th>
                        <th></th>
                    </thead>
                    <tbody>
                        <cfoutput query="getBeers">
                            <tr>
                                <td class="text-left">#getBeers.name#</td>
                                <td class="text-left">#getBeers.type#</td>
                                <td class="text-right">#getBeers.abv#</td>
                                <td class="text-right">#getBeers.ibu#</td>
                                <td class="text-left">
                                    <a href="beer-edit?beer=#getBeers.id#">Edit</a>
                                </td>
                            </tr>
                        </cfoutput>
                    </tbody>
                </table>
                
                <cfdump var="#getBeers#" label="getBeers" expand="false">
            </div>
        </div>
        <cfinclude template="/ProceduralApp/footer.cfm">
    </body>
</html>
