<cfoutput>
    <div id="home" class="page-header">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="/">
                        Home
                    </a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                    #getSetting( 'h1Title' )#
                </li>
            </ol>
        </nav>
        <h1>#getSetting( 'h1Title' )#</h1>
    </div>
    <div class="container">
        <ul>
            <li>
                <a href="#event.buildLink( 'brewery.list' )#">Brewery List</a>
            </li>
            <li>
                <a href="#event.buildLink( 'beer.list' )#">Beer List</a>
            </li>
        </ul>
    </div>
</cfoutput>