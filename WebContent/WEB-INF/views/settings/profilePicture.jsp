<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<style type="text/css">
	th.col1,td.col1{
		width:100px;
	}
	th.col2,td.col2{
		width:70px;
	}
	tr.activeRow{
		background-color:#f9f9f9;
	}
</style>
<div class="row">
<div class="span2">
	<div class="well" style="padding: 8px 0;">
		<ul class="nav nav-list">
		  <li><a href="${ContextPath}/settings/general/account">General</a></li>
		  <li><a href="${ContextPath}/settings/basicInformation">Basic Information</a></li>
		  <li class="active"><a href="${ContextPath}/settings/profilePicture">Profile Picture</a></li>
		  <li><a href="${ContextPath}/settings/preferences">Preferences</a></li>
		</ul>
	</div><!-- /well -->
	</div><!-- /span2 -->
<div class="span10">
	<div class="page-header">
		<h1>Profile Picture</h1>
	</div>
</div><!-- /span10 -->
</div><!-- /row -->