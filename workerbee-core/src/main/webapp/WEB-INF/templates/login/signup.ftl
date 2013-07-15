<!DOCTYPE html>
<html>
<head>
    <title>Workerbee</title>
    <link href="${rc.contextPath}/static/css/application.css" rel="stylesheet">
    <link rel="shortcut icon" href="${rc.getContextPath()}/static/img/favicon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta charset="utf-8">
    <script src="${rc.contextPath}/static/lib/jquery/jquery.1.9.0.min.js"> </script>
    <script src="${rc.contextPath}/static/lib/backbone/underscore-min.js"></script>
    <script src="${rc.contextPath}/static/js/settings.js"> </script>
    <style type="text/css">
        #wrapper {
            margin-top: 40px;
        }
    </style>
</head>
<body>
<div class="logo">
    <h4><a>Worker<strong>Bee</strong></a></h4>
</div>
<div class="single-widget-container">
    <section class="widget login-widget">
        <header class="text-align-center">
            <h4>Sign Up</h4>
        </header>
        <div class="body">
            <form class="no-margin"
                  action="${rc.getContextPath()}/signup" method="get">

                <fieldset>

                    <div class="control-group no-margin">
                        <!--<label class="control-label" for="j_username">Username</label>-->
                        <div class="control">
                            <div class="input-prepend input-padding-increased">
                                <span class="add-on"><i class="eicon-user icon-large"></i></span>
                                <input id="j_username" type="text" name="j_username" placeholder="Username">
                            </div>
                        </div>
                    </div>

                    <div class="control-group no-margin">
                        <!--<label class="control-label" for="email">Email</label>-->
                        <div class="control">
                            <div class="input-prepend input-padding-increased">
                                <span class="add-on"><i class="icon-envelope-alt icon-large"></i></span>
                                <input id="email" type="text" name="email" placeholder="Email">
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <!--<label class="control-label" for="j_password" >Password</label>-->
                        <div class="control">
                            <div class="input-prepend input-padding-increased">
                                <span class="add-on"><i class="icon-lock icon-large"></i></span>
                                <input id="j_password" type="password" name="j_password" placeholder="Your Password">
                            </div>
                        </div>
                    </div>

                </fieldset>
                <div class="form-actions">
                    <button type="submit" class="btn btn-block btn-large btn-primary">
                        <i class="eicon-user-add"></i> <small>Create Account</small>
                    </button>
                    <div class="forgot"><a class="forgot" href="${rc.contextPath}/signin">Cancel</a></div>
                </div>
            </form>
        </div>
    </section>
    <script type="text/javascript">
        document.getElementById("j_username").focus();
    </script>
</div>
</body>
</html>