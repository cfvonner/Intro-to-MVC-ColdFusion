<!DOCTYPE html>
<html lang="en">
    <cfoutput>
        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous" />
            <link href="https://cdn.datatables.net/2.3.4/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
            <link href="/assets/fontawesome/css/fontawesome.min.css" rel="stylesheet" />
            <link href="/assets/fontawesome/css/regular.min.css" rel="stylesheet" />
            <link href="/assets/fontawesome/css/solid.min.css" rel="stylesheet" />
            <link rel="stylesheet" href="/assets/css/custom.css" />
            <title>#getSetting( 'title' )#</title>
        </head>
        <body role="document">
            <div class="container" role="main">
                #renderView()#	<!--- body is result of views --->
            </div>
            <footer class="footer">
                <div class="container">
                    <p class="text-muted text-center">
                        <a href="https://github.com/cfvonner/Intro-to-MVC-ColdFusion", target="blank">
                            Find this code on github</a>
                    </p>
                    <p class="text-muted text-center small">
                        Powered by CFML version #server.coldfusion.productversion#,
                        ColdBox version #getSetting( 'version', true )#, Bootstrap 5.3.8, jQuery 3.7.1,
                        DataTables 2.3.4, and Font Awesome 7.<br>
                        This request took <cfoutput>#getTickCount() - rc.startTime#</cfoutput>ms.
                    </p>
                </div>
            </footer>
        </body>
    </cfoutput>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/2.3.4/js/dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/2.3.4/js/dataTables.bootstrap5.min.js"></script>
    <script src="/assets/js/global.js"></script>
</html>