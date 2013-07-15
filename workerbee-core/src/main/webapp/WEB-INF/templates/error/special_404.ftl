<!DOCTYPE html>
<html>
<head>
    <title>Workerbee</title>
    <link href="${rc.contextPath}/static/css/application.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="${rc.contextPath}/static/img/favicon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta charset="utf-8">
    <script src="${rc.contextPath}/static/lib/jquery/jquery.1.9.0.min.js"> </script>
    <!--<script src="lib/zepto/zepto.min.js"> </script>-->
    <script src="${rc.contextPath}/static/lib/parsley/parsley.js"> </script>
    <script src="${rc.contextPath}/static/lib/backbone/underscore-min.js"></script>
    <script src="${rc.contextPath}/static/js/settings.js"> </script>
</head>
<body>
<div class="logo">
    <h4><a href="${rc.contextPath}/empty">Worker<strong>Bee</strong></a></h4>
</div>
<div class="single-widget-container error-page">
    <section class="widget transparent widget-404">
        <div class="body">
            <div class="row-fluid">
                <div class="span5">
                    <h1 class="text-align-center">404</h1>
                </div>
                <div class="span7">
                    <div class="description">
                        <h3>Opps, it seems that this page does not exist here.</h3>
                        <p>If you are sure it should, search for it.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="widget widget-404-search">
        <div class="body no-margin">
            <form class="form-search no-margin text-align-center" method="get" action="special_search.html">
                <input type="search" class="search-field"
                       placeholder="Pages: Posts, Tags">
                <button class="btn btn-primary" type="submit">
                    &nbsp; Search &nbsp;
                </button>
            </form>
        </div>
    </section>
</div>
</body>
</html>