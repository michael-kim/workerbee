<#include "./common/header.ftl">

<div class="logo">
    <h4><a href="${rc.contextPath}/">Worker<strong>Bee</strong></a></h4>
</div>

<#include "./common/sidebar.ftl">

<div class="wrap">
<#include "./common/navbar.ftl">
    <div class="content container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <h2 class="page-title">Dashboard <small>Statistics and more</small></h2>
            </div>
        </div>
        <div class="row-fluid">
            <div class="span12">
                Empty
            </div>
        </div>
    </div>
</div>

<#include "./common/jquery.ftl">

<#include "./common/backbone.ftl">

<#include "./common/bootstrap.ftl">

<!-- basic application js-->
<script src="${rc.contextPath}/static/js/app.js"></script>
<script src="${rc.contextPath}/static/js/settings.js"></script>

<!-- page specific -->
<script src="${rc.contextPath}/static/js/index.js"></script>
<script src="${rc.contextPath}/static/js/chat.js"></script>

<#include "./common/footer.ftl">
