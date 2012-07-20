<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<style type="text/css">
	th.col1,td.col1{
		width:150px;
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
		  <li><a href="${ContextPath}/settings/profilePicture">Profile Picture</a></li>
		  <li class="active"><a href="${ContextPath}/settings/preferences">Preferences</a></li>
		</ul>
	</div><!-- /well -->
	</div><!-- /span2 -->
<div class="span10">
	<div class="page-header">
		<h1>Preferences</h1>
	</div>
	<table class="table table-bordered">
		<tbody>
<c:if test="${tab!='timezone'}">
		<tr class="tr-hover">
			<th class="col1">Time Zone</th>
			<td>(GMT+09000) Seoul</td>
			<td class="col2"><a href="${ContextPath}/settings/preferences/timezone">Edit</a></td>
		</tr>
</c:if>
<c:if test="${tab=='timezone'}">
		<tr class="activeRow">
			<th class="col1">Time Zone</th>
			<td colspan="2">
			<form:form method="post" cssClass="form-horizontal">
				<fieldset>
					<div class="control-group">
						<label class="control-label">Time Zone</label>
						<div class="controls">
							<select>
								<option>(GMT+09000) Seoul</option>
							</select>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input class="btn btn-primary" type="submit" value="Save Changes" />
							<a class="btn" href="${ContextPath}/settings/preferences">Cancel</a>
						</div>
					</div>
				</fieldset>
			</form:form>
			</td>
		</tr>
</c:if>
<c:if test="${tab!='keyboard'}">
		<tr class="tr-hover">
			<th class="col1">Keyboard shortcuts</th>
			<td>Enabled</td>
			<td class="col2"><a href="${ContextPath}/settings/preferences/keyboard">Edit</a></td>
		</tr>
</c:if>
<c:if test="${tab=='keyboard'}">
		<tr class="activeRow">
			<th class="col1">Keyboard Shortcuts</th>
			<td colspan="2">
			<form:form method="post" cssClass="form-horizontal">
				<fieldset>
					<div class="control-group">
						<label class="control-label">Keyboard Shortcuts</label>
						<div class="controls">
							<select>
								<option>Enabled</option>
								<option>Disabled</option>
							</select>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input class="btn btn-primary" type="submit" value="Save Changes" />
							<a class="btn" href="${ContextPath}/settings/preferences">Cancel</a>
						</div>
					</div>
				</fieldset>
			</form:form>
			</td>
		</tr>
</c:if>
		</tbody>
	</table>
</div><!-- /span10 -->
</div><!-- /row -->