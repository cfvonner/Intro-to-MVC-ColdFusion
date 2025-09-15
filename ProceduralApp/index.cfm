<!DOCTYPE html>
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
                            <li class="breadcrumb-item active">
                                #request.h1Title#
                            </li>
                        </ol>
                    </nav>
                </div>
                <h1>#request.h1Title#</h1>
                <div class="container">
                    <ul>
                        <li>
                            <a href="brewery-list.cfm">Brewery List</a>
                        </li>
                        <li>
                            <a href="beer-list.cfm">Beer List</a>
                        </li>
                    </ul>
                </div>
            </div>
        </cfoutput>
        <cfinclude template="/ProceduralApp/footer.cfm">
    </body>
</html>
