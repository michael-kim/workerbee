<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>

<div class="page-header">
	<h1>User List
		<small>User list</small>
	</h1>
</div>
<div class="btn-toolbar">
	<div class="btn-group">
		<sec:authorize ifAllGranted="ROLE_ADMIN">
		<a class="btn" href="form"><i class="icon-plus"></i>&nbsp;Add User</a>
		</sec:authorize>
	</div>
</div>
<table class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>Active</th>
			<th>Username</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Group</th>
			<th>Actions</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${users}" var="user">
		<tr>
			<td>
				<c:if test="${user.enabled}"><span class="label label-success">Active</span></c:if>
				<c:if test="${not user.enabled}"><span class="label">Deactive</span></c:if>
			</td>
			<td>${user.username}</td>
			<td>${user.userProfile.firstName}</td>
			<td>${user.userProfile.lastName}</td>
			<td>${user.userProfile.email}</td>
			<td>${user.userProfile.userGroup.groupName}</td>
			<td>
				<sec:authorize ifAllGranted="ROLE_ADMIN">
				<a class="btn btn-mini" href="edit?userId=${user.id}"><i class="icon-pencil"></i>&nbsp;Edit</a>&nbsp;
				<a class="btn btn-mini btn-danger" href="delete?userId=${user.id}"><i class="icon-trash icon-white"></i>&nbsp;Delete</a>
				</sec:authorize>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>