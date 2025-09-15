<cfoutput>
    <div id="home" class="page-header">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="/">
                        Home
                    </a>
                </li>
                <li class="breadcrumb-item">
                    <a href="#event.buildLink( 'main.index' )#">
                        #getSetting( 'h1Title' )#
                    </a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                    #rc.subtitle#
                </li>
            </ol>
        </nav>
        <h1>#getSetting( 'h1Title' )#</h1>
    </div>
    <div class="container space-bottom">
        <a class="btn btn-light btn-sm" href="#event.buildLink( 'beer.add' )#" role="button">
            <i class="fa-solid fa-square-plus text-success" aria-hidden="true"></i>
            <span class="text-success">
                Add Beer
            </span>
        </a>
    </div>
    <div class="container">
        <table id="beers" class="table table-bordered table-striped table-hover table-condensed table-dt">
            <thead>
                <th>
                    Name
                </th>
                <th>
                    Brewery
                </th>
                <th>
                    Type
                </th>
                <th>
                    <a href="##" data-toggle="tooltip" title="Alcohol By Volume">ABV</a>
                </th>
                <th>
                    <a href="##" data-toggle="tooltip" title="International Bitterness Units">IBU</a>
                </th>
                <th data-orderable="false">
                </th>
            </thead>
            <tbody>
                <cfloop query="rc.beers">
                    <tr>
                        <td class="text-left">
                            #rc.beers.name#
                        </td>
                        <td class="text-left">
                            #rc.beers.breweryName#
                        </td>
                        <td class="text-left">
                            #rc.beers.type#
                        </td>
                        <td class="text-right">
                            #rc.beers.abv#
                        </td>
                        <td class="text-right">
                            #rc.beers.ibu#
                        </td>
                        <td class="text-center text-nowrap">
                            <cfset queryString = { 'beerId' : rc.beers.id }>
                            <a class="btn btn-light btn-sm" href="#event.buildLink( 'beer.edit', queryString )#" title="Edit" role="button">
                                <i class="fa-regular fa-pen-to-square text-success" aria-hidden="true"></i>
                            </a>
                            &nbsp;
                            <a class="btn btn-light btn-sm" href="#event.buildLink( 'beer.delete', queryString )#" title="Delete" role="button">
                                <i class="fa-regular fa-trash-can text-danger" aria-hidden="true"></i>
                            </a>
                        </td>
                    </tr>
                </cfloop>
            </tbody>
        </table>
    </div>
</cfoutput>