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
		  <li class="active"><a href="${ContextPath}/settings/basicInformation">Basic Information</a></li>
		  <li><a href="${ContextPath}/settings/profilePicture">Profile Picture</a></li>
		  <li><a href="${ContextPath}/settings/preferences">Preferences</a></li>
		</ul>
	</div><!-- /well -->
	</div><!-- /span2 -->
<div class="span10">
	<div class="page-header">
		<h1>Basic Information</h1>
	</div>
	<form:form method="post" cssClass="form-horizontal">
	<table class="table table-bordered">
		<tbody>
		<tr>
			<th class="col1">I Am</th>
			<td><select><option>Male</option><option>Female</option></select></td>
		</tr>
		<tr>
			<th class="col1">About Me</th>
			<td><textarea  rows="4"></textarea></td>
		</tr>
		<tr>
			<th class="col1">Position</th>
			<td><input type="text"></td>
		</tr>
		<tr>
			<th class="col1">Department</th>
			<td><input type="text"></td>
		</tr>
		<tr>
			<th class="col1">Location</th>
			<td><input type="text"></td>
		</tr>
		<tr class="activeRow">
			<td colspan="2">
					<div class="control-group">
						<div class="controls">
							<input class="btn btn-primary" type="submit" value="Save Changes" />
							<a class="btn" href="${ContextPath}/settings/basicInformation">Cancel</a>
						</div>
					</div>
			</td>
		</tr>
		</tbody>
	</table>
	</form:form>
</div><!-- /span10 -->
</div><!-- /row -->