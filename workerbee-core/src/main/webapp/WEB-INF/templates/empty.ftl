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


</head>
<body class="background-dark">
<div class="logo">
    <h4><a href="${rc.contextPath}/">Worker<strong>Bee</strong></a></h4>
</div>
<#include "./common/sidebar.ftl" />


<div class="wrap">
<#include "./common/navbar.ftl" />
    <div class="content container-fluid">
<div class="row-fluid">
    <div class="span12">
        <h2 class="page-title">Dashboard <small>Statistics and more</small></h2>
    </div>
</div>
<div class="row-fluid">
    <div class="span12">
        Empty!
    </div>
</div>
</div>
</div>

<#include "./common/jquery.ftl" />

<#include "./common/backbone.ftl" />

<#include "./common/bootstrap.ftl"/>

<!-- basic application js-->
<script src="${rc.contextPath}/static/js/app.js"></script>
<script src="${rc.contextPath}/static/js/settings.js"></script>

<!-- page specific -->
<script src="${rc.contextPath}/static/js/index.js"></script>
<script src="${rc.contextPath}/static/js/chat.js"></script>

<script type="text/template" id="sidebar-settings-template">
    <% auto = sidebarState == 'auto'%>
    <% if (auto) {%>
    <button type="button"
            data-value="icons"
            class="btn-icons btn btn-transparent btn-small"><i class="icon-resize-small"></i></button>
    <button type="button"
            data-value="auto"
            class="btn-auto btn btn-transparent btn-small"><i class="icon-resize-full"></i></button>
    <%} else {%>
    <button type="button"
            data-value="auto"
            class="btn btn-transparent btn-small"><i class="icon-resize-full"></i></button>
    <% } %>
</script>

<script type="text/template" id="message-template">
    <div class="sender pull-left">
        <div class="icon">
            <img src="${rc.contextPath}/static/img/2.jpg" class="img-circle" alt="">
        </div>
        <div class="time">
            just now
        </div>
    </div>
    <div class="chat-message-body">
        <span class="arrow"></span>
        <div class="sender">Tikhon Laninga</div>
        <div class="text">
        <#-- text -->
        </div>
    </div>
</script>

<script type="text/template" id="settings-template">
    <div class="setting clearfix">
        <div>Background</div>
        <div id="background-toggle" class="pull-left btn-group" data-toggle="buttons-radio">
            <% dark = background == 'dark'; light = background == 'light';%>
            <button type="button" data-value="dark" class="btn btn-small btn-transparent <%= dark? 'active' : '' %>">Dark</button>
            <button type="button" data-value="light" class="btn btn-small btn-transparent <%= light? 'active' : '' %>">Light</button>
        </div>
    </div>
    <div class="setting clearfix">
        <div>Sidebar on the</div>
        <div id="sidebar-toggle" class="pull-left btn-group" data-toggle="buttons-radio">
            <% onRight = sidebar == 'right'%>
            <button type="button" data-value="left" class="btn btn-small btn-transparent <%= onRight? '' : 'active' %>">Left</button>
            <button type="button" data-value="right" class="btn btn-small btn-transparent <%= onRight? 'active' : '' %>">Right</button>
        </div>
    </div>
    <div class="setting clearfix">
        <div>Sidebar</div>
        <div id="display-sidebar-toggle" class="pull-left btn-group" data-toggle="buttons-radio">
            <% display = displaySidebar%>
            <button type="button" data-value="true" class="btn btn-small btn-transparent <%= display? 'active' : '' %>">Show</button>
            <button type="button" data-value="false" class="btn btn-small btn-transparent <%= display? '' : 'active' %>">Hide</button>
        </div>
    </div>
</script>

</body>
</html>