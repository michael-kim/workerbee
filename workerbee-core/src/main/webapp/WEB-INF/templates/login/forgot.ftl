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
            <h4>Reset Password</h4>
        </header>
        <div class="body">
            <form class="no-margin" action="#" method="get">
                <fieldset>
                    <div class="control-group">
                        Please use the form below to initiate a password reset.
                        An email will be sent to the email address we have on file with instructions on how to complete the password reset process.
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="j_username">Email</label>
                        <div class="control">
                            <div class="input-prepend input-padding-increased">
                                <span class="add-on">
                                    <i class="eicon-user icon-large"></i>
                                </span>
                                <input id="i_email" type="email" name="j_username"
                                       placeholder="Email">
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="form-actions">
                    <button type="submit" class="btn btn-block btn-large">
                        <span class="circle-middle"><i class="icon-refresh"></i></span>&nbsp;
                        <small>Reset password</small>
                    </button>
                    <div class="forgot"><a class="forgot" href="${rc.contextPath}/signin">Cancel</a></div>
                </div>
            </form>
        </div>
    </section>
    <script type="text/javascript">
        document.getElementById("i_email").focus();
    </script>
</div>
</body>
</html>