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
		  <li class="active"><a href="${ContextPath}/settings/general/account">General</a></li>
		  <li><a href="${ContextPath}/settings/basicInformation">Basic Information</a></li>
		  <li><a href="${ContextPath}/settings/profilePicture">Profile Picture</a></li>
		  <li><a href="${ContextPath}/settings/preferences">Preferences</a></li>
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
			<th class="col1">Username</th>
			<td colspan="2"><sec:authentication property="name" /></td>
		</tr>
<c:if test="${tab!='name'}">
		<tr class="tr-hover">
			<th>Name</th>
			<td>${userProfile.firstName}&nbsp;${userProfile.lastName}</td>
			<td class="col2"><a href="${ContextPath}/settings/general/name">Edit</a></td>
		</tr>
</c:if>
<c:if test="${tab=='name'}">
		<tr class="activeRow">
			<th>Name</th>
			<td colspan="2">
<form:form method="post" cssClass="form-horizontal" modelAttribute="userProfile">
	<fieldset>
		<form:errors path="*" cssClass="alert alert-error"/>
		<div class="control-group">
			<label class="control-label">First:</label>
			<div class="controls">
				<form:input path="firstName" cssClass="focus_on_me"/>
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
		<c:if test="false">
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
		</c:if>
		<div class="control-group">
			<div class="controls">
				<input class="btn btn-primary" type="submit" value="Save Changes" />
				<a class="btn" href="${ContextPath}/settings/general/account">Cancel</a>
			</div>
		</div>
	</fieldset>
</form:form>
		</td>
		</tr>
</c:if>
<!-- Email -->
<c:if test="${tab!='email'}">
		<tr class="tr-hover">
			<th>Email</th>
			<td>${userProfile.email}</td>
			<td class="col2"><a href="${ContextPath}/settings/general/email">Edit</a></td>
		</tr>
</c:if>
<c:if test="${tab=='email'}">
		<tr class="activeRow">
			<th>Email</th>
			<td colspan="2">
<form:form method="post" cssClass="form-horizontal" modelAttribute="userProfile">
	<fieldset>
		<div class="control-group">
			<label class="control-label">Email:</label>
			<div class="controls">
	            <div class="input-prepend">
	              <span class="add-on"><i class="icon-envelope"></i></span><form:input path="email" cssClass="focus_on_me"/>
	            </div>
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
				<form:password path="verifyPassword"/>
				<form:errors path="verifyPassword" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<input class="btn btn-primary" type="submit" value="Save Changes" />
				<a class="btn" href="${ContextPath}/settings/general/account">Cancel</a>
			</div>
		</div>
	</fieldset>
</form:form>
			</td>
		</tr>
</c:if>
<!-- phone -->
<c:if test="${tab!='phone'}">
		<tr class="tr-hover">
			<th>Phone</th>
			<td>
				<c:choose>
				<c:when test="${empty(userProfile.phone)}"><spring:message code="phone.empty" /></c:when>
				<c:otherwise>${userProfile.phone}</c:otherwise>
				</c:choose>
			</td>
			<td class="col2"><a href="${ContextPath}/settings/general/phone">Edit</a></td>
		</tr>
</c:if>
<c:if test="${tab=='phone'}">
		<tr class="activeRow">
			<th>Email</th>
			<td colspan="2">
<form:form method="post" cssClass="form-horizontal" modelAttribute="userProfile">
	<fieldset>
		<div class="control-group">
			<label class="control-label">Phone:</label>
			<div class="controls">
	            <form:input path="phone" cssClass="focus_on_me"/>
				<form:errors path="phone" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<input class="btn btn-primary" type="submit" value="Save Changes" />
				<a class="btn" href="${ContextPath}/settings/general/account">Cancel</a>
			</div>
		</div>
	</fieldset>
</form:form>
			</td>
		</tr>
</c:if>
<c:if test="${tab!='password'}">
		<tr class="tr-hover">
			<th>Password</th>
			<td>
			<c:if test="${empty(userProfile.user.passwordLastModified)}"><spring:message code="password.never.changed" /></c:if>
			<c:if test="${!empty(userProfile.user.passwordLastModified)}"><spring:message code="password.last.modified" arguments="${userProfile.user.passwordLastModified}"/></c:if>
			</td>
			<td><a href="${ContextPath}/settings/general/password">Edit</a></td>
		</tr>
</c:if>
<c:if test="${tab=='password'}">
		<tr class="activeRow">
			<th>Password</th>
			<td colspan="2">
			<form:form method="post" cssClass="form-horizontal" modelAttribute="changePasswordCommand">
				<fieldset>
					<div class="control-group">
						<label class="control-label">Current:</label>
						<div class="controls">
							<form:password path="currentPassword" cssClass="focus_on_me"/>
							<form:errors path="currentPassword"  cssClass="alert alert-error"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">New:</label>
						<div class="controls">
							<form:password path="newPassword"/>
							<form:errors path="newPassword" cssClass="alert alert-error"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Re-type New:</label>
						<div class="controls">
							<form:password path="retypePassword"/>
							<form:errors path="retypePassword" cssClass="alert alert-error" />
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input class="btn btn-primary" type="submit" value="Save Changes" />
							<a class="btn" href="${ContextPath}/settings/general/account">Cancel</a>
						</div>
					</div>
				</fieldset>
			</form:form>
			</td>
		</tr>
</c:if>
<c:if test="${tab!='language'}">
		<tr class="tr-hover">
			<th>Language</th>
			<td>${userProfile.primaryLanguage.displayText}</td>
			<td><a href="${ContextPath}/settings/general/language">Edit</a></td>
		</tr>
</c:if>
<c:if test="${tab=='language'}">
		<tr class="activeRow">
			<th>Language</th>
			<td colspan="2">
			<form:form method="post" cssClass="form-horizontal" modelAttribute="userProfile">
				<fieldset>
					<div class="control-group">
						<label class="control-label">Choose Primary:</label>
						<div class="controls">
							<form:select path="primaryLanguage">
								<form:options items="${languages}" itemLabel="displayText" />
							</form:select>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input class="btn btn-primary" type="submit" value="Save Changes" />
							<a class="btn" href="${ContextPath}/settings/general/account">Cancel</a>
						</div>
					</div>
				</fieldset>
			</form:form>
			</td>
		</tr>
</c:if>
		</tbody>
	</table>
</div><!-- /span -->
</div><!-- /row -->
