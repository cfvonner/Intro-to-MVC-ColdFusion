<!DOCTYPE html>
<cfsilent>
    <cfquery name="getAllBreweries">
        SELECT  id
                ,name
                ,city
                ,state
                ,country
        FROM Brewery
        ORDER BY name
    </cfquery>
</cfsilent>

<html lang="en">
    <head>
        <cfinclude template="header.cfm">
        <title>
            <cfoutput>#request.title#</cfoutput>
        </title>
    </head>
    <body role="document">
        <cfoutput>
            <div class="container" role="main">
                <div id="home" class="page-header">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="/">
                                    Home
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="index.cfm">#request.h1Title#</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                Brewery List
                            </li>
                        </ol>
                    </nav>
                    <h1>#request.h1Title#</h1>
                </div>
                <div class="container space-bottom">
                    <a class="btn btn-light btn-sm" href="brewery-edit.cfm" role="button">
                        <i class="fa-solid fa-square-plus text-success" aria-hidden="true"></i>
                        <span class="text-success">
                            Add Brewery
                        </span>
                    </a>
                </div>
                <div class="container">
                    <table id="breweries" class="table table-bordered table-striped table-hover table-condensed table-dt">
                        <thead>
                            <th>
                                Name
                            </th>
                            <th>
                                City
                            </th>
                            <th>
                                State/Province/Region
                            </th>
                            <th>
                                Country
                            </th>
                            <th data-orderable="false">
                            </th>
                        </thead>
                        <tbody>
                            <cfloop query="getAllBreweries">
                                <tr>
                                    <td class="text-left">
                                        #getAllBreweries.name#
                                    </td>
                                    <td class="text-left">
                                        #getAllBreweries.city#
                                    </td>
                                    <td class="text-left">
                                        #getAllBreweries.state#
                                    </td>
                                    <td class="text-left">
                                        #getAllBreweries.country#
                                    </td>
                                    <td class="text-center text-nowrap">
                                        <a class="btn btn-light btn-sm" href="brewery-edit.cfm?edit&breweryId=#getAllBreweries.id#" title="Edit" role="button">
                                            <i class="fa-regular fa-pen-to-square text-success" aria-hidden="true"></i>
                                        </a>
                                        &nbsp;
                                        <a class="btn btn-light btn-sm" href="brewery-edit.cfm?delete&breweryId=#getAllBreweries.id#" title="Delete" role="button">
                                            <i class="fa-regular fa-trash-can text-danger" aria-hidden="true"></i>
                                        </a>
                                    </td>
                                </tr>
                            </cfloop>
                        </tbody>
                    </table>
                </div>
            </div>
        </cfoutput>
        <cfinclude template="/ProceduralApp/footer.cfm">
    </body>
</html>