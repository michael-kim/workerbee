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
</head>
<body>
<div class="logo">
    <h4><a>Worker<strong>Bee</strong></a></h4>
</div>
<div class="single-widget-container">
    <section class="widget login-widget">
        <header class="text-align-center">
            <h4>Login to your account</h4>
        </header>
        <div class="body">
            <form class="no-margin"
                  action="${rc.getContextPath()}/j_spring_security_check" method="post">

                <fieldset>

                    <div class="control-group no-margin">
                        <label class="control-label" for="j_username">Username</label>
                        <div class="control">
                            <div class="input-prepend input-padding-increased">
                                <span class="add-on">
                                    <i class="eicon-user icon-large"></i>
                                </span>
                                <input id="j_username" type="text" name="j_username"
                                       placeholder="Username">
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="j_password" >Password</label>
                        <div class="control">
                            <div class="input-prepend input-padding-increased">
                                <span class="add-on">
                                    <i class="icon-lock icon-large"></i>
                                </span>
                                <input id="j_password" type="password" name="j_password"
                                       placeholder="Your Password">
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                    <#if isError?? && isError?string == "true" && Session.SPRING_SECURITY_LAST_EXCEPTION??>
                        <div class="error">${Session.SPRING_SECURITY_LAST_EXCEPTION.message}</div>
                    </#if>
                    </div>

                </fieldset>
                <div class="form-actions">
                    <button type="submit" class="btn btn-block btn-large btn-danger">
                        <span class="small-circle"><i class="icon-caret-right"></i></span>
                        <small>Sign In</small>
                    </button>
                    <div class="forgot"><a class="forgot" href="#">Forgot Username or Password?</a></div>
                </div>
            </form>
        </div>
        <footer>
            <div class="facebook-login">
                <a href="index.html"><span><i class="eicon-user-add icon-large"></i> Sign Up</span></a>
            </div>
        </footer>
    </section>
    <script type="text/javascript">
        document.getElementById("j_username").focus();
    </script>
</div>
</body>
</html>