<!DOCTYPE html>
<cfsilent>
    <cfquery name="getBreweries">
        SELECT  id
                ,name
                ,city
                ,state
                ,country
        FROM dbo.Brewery
        ORDER BY name
    </cfquery>
</cfsilent>

<html>
    <head>
        <cfinclude template="header.cfm">
        <title>Procedural Demo</title>
    </head>
    <body role="document">
        <div class="container" role="main">
            <div id="home" class="page-header">
                <h1>CFSummit2016 Beer App</h1>
                <h3>Brewery List</h3>
            </div>
            <div class="container">
                <a class="btn btn-default" href="brewery-edit.cfm" role="button">Add Brewery</a>
            </div>
            <div class="container">
                <table id="breweries" class="table table-bordered 
                    table-striped table-hover table-condensed table-dt">
                    <thead>
                        <th>Name</th>
                        <th>City</th>
                        <th>State/Province/Region</th>
                        <th>Country</th>
                        <th></th>
                    </thead>
                    <tbody>
                        <cfoutput query="getBreweries">
                            <tr>
                                <td class="text-left">#getBreweries.name#</td>
                                <td class="text-left">#getBreweries.city#</td>
                                <td class="text-left">#getBreweries.state#</td>
                                <td class="text-left">#getBreweries.country#</td>
                                <td class="text-left">
                                    <a href="brewery-edit.cfm?breweryId=#getBreweries.id#">Edit</a>
                                </td>
                            </tr>
                        </cfoutput>
                    </tbody>
                </table>
            </div>
        </div>
        <cfinclude template="/ProceduralApp/footer.cfm">
    </body>
</html>
