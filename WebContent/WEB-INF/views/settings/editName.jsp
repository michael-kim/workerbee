<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<div class="row">
<div class="span2">
	<div class="well" style="padding: 8px 0;">
		<ul class="nav nav-list">
		  <li class="active"><a href="#">General</a></li>
		  <li><a href="#">Notifications</a></li>
		</ul>
	</div><!-- /well -->
	</div><!-- /span2 -->
<div class="span10">
	<div class="page-header">
		<h1>General Account Settings</h1>
	</div>
	<table class="table table-bordered">
		<tbody>
		<tr>
			<th style="width:100px">Username</th>
			<td colspan="2">${user.username}</td>
		</tr>
		<tr style="background-color:#f9f9f9">
			<th>Name</th>
			<td colspan="2">
<form:form method="post" cssClass="form-horizontal" modelAttribute="userProfile">
	<fieldset>
		<div class="control-group">
			<label class="control-label">First:</label>
			<div class="controls">
				<form:input path="firstName"/>
				<form:errors path="firstName" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Last:</label>
			<div class="controls">
				<form:input path="lastName"/>
				<form:errors path="lastName" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Display as:</label>
			<div class="controls">
			<label class="radio">
                <input type="radio" name="displayAs" id="optionsRadios1" value="option1" checked>
                ${userProfile.firstName}&nbsp;${userProfile.lastName}
              </label>
              <label class="radio">
                <input type="radio" name="displayAs" id="optionsRadios2" value="option2">
                ${userProfile.lastName}&nbsp;${userProfile.firstName}
              </label>
			</div>
		</div>
		<div calss="control-group">
			<div class="controls">
				<input class="btn btn-primary" type="submit" value="Save Changes" />
				<a class="btn" href="${ContextPath}/settings">Cancel</a>
			</div>
		</div>
	</fieldset>
</form:form>
		</td>
		</tr>
<!-- Email -->
		<tr>
			<th>Email</th>
			<td>${userProfile.email}</td>
			<td><a href="#">Edit</a></td>
		</tr>
		<tr style="background-color:#f9f9f9">
			<th>Email</th>
			<td colspan="2">
<form:form method="post" cssClass="form-horizontal" modelAttribute="userProfile">
	<fieldset>
		<div class="control-group">
			<label class="control-label">Email:</label>
			<div class="controls">
				<form:input path="email"/>
				<form:errors path="email" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="control-group">
			<div class="controls" style="margin-left:60px">
			<span class="help-inline">To save these settings, please enter your password.</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Password:</label>
			<div class="controls">
				<input type="password" />
			</div>
		</div>
		<div calss="control-group">
			<div class="controls">
				<input class="btn btn-primary" type="submit" value="Save Changes" />
				<a class="btn" href="${ContextPath}/settings">Cancel</a>
			</div>
		</div>
	</fieldset>
</form:form>
			</td>
		</tr>
		<tr>
			<th>Password</th>
			<td>Password never changed.</td>
			<td><a href="#">Edit</a></td>
		</tr>
		<tr style="background-color:#f9f9f9">
			<th>Password</th>
			<td colspan="2">
<form:form method="post" cssClass="form-horizontal" modelAttribute="user">
	<fieldset>
		<div class="control-group">
			<label class="control-label">Current:</label>
			<div class="controls">
				<input type="password" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">New:</label>
			<div class="controls">
				<input type="password" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Re-type New:</label>
			<div class="controls">
				<input type="password" />
			</div>
		</div>
		<div calss="control-group">
			<div class="controls">
				<input class="btn btn-primary" type="submit" value="Save Changes" />
				<a class="btn" href="${ContextPath}/settings">Cancel</a>
			</div>
		</div>
	</fieldset>
</form:form>
			</td>
		</tr>
		<tr>
			<th>Language</th>
			<td>English (US)</td>
			<td><a href="#">Edit</a></td>
		</tr>
		<tr style="background-color:#f9f9f9">
			<th>Language</th>
			<td colspan="2">
			<form:form method="post" cssClass="form-horizontal" modelAttribute="user">
	<fieldset>
		<div class="control-group">
			<label class="control-label">Choose Primary:</label>
			<div class="controls">
				<select class="span2">
                	<option>English (US)</option>
              	</select>
			</div>
		</div>
		<div calss="control-group">
			<div class="controls">
				<input class="btn btn-primary" type="submit" value="Save Changes" />
				<a class="btn" href="${ContextPath}/settings">Cancel</a>
			</div>
		</div>
	</fieldset>
</form:form>
			</td>
		</tr>
		</tbody>
	</table>
</div><!-- /span -->
</div><!-- /row -->
