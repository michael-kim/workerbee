<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>

<div class="page-header">
	<h1>User Group List
		<small>User Group List</small>
	</h1>
</div>
<div class="btn-toolbar">
	<div class="btn-group">
		<sec:authorize ifAllGranted="ROLE_ADMIN">
		<a class="btn" href="add"><i class="icon-plus"></i>&nbsp;Add Group</a>
		</sec:authorize>
	</div>
</div>
<table class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>Group Name</th>
			<th>Description</th>
			<th>Permissions</th>
			<th>Users</th>
			<th>Actions</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${userGroups}" var="userGroup">
		<tr>
			<td>${userGroup.groupName}</td>
			<td>${userGroup.description}</td>
			<td>
				<c:forEach items="${userGroup.permissions}" var="permission" varStatus="status">${permission.authority}<c:out value="${status.last ? '': ', '}" /></c:forEach>
			</td>
			<td>
				<c:forEach items="${userGroup.userProfiles}" var="userProfile" varStatus="status">${userProfile.user.username}<c:out value="${status.last ? '': ', '}" /></c:forEach>
			</td>
			<td>
				<sec:authorize ifAllGranted="ROLE_ADMIN">
				<a class="btn btn-mini" href="edit?userGroupId=${userGroup.id}"><i class="icon-pencil"></i>&nbsp;Edit</a>&nbsp;
				<a class="btn btn-mini btn-danger" href="delete?userGroupId=${userGroup.id}"><i class="icon-trash icon-white"></i>&nbsp;Delete</a>
				</sec:authorize>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<%@ include file="/WEB-INF/views/common/pagination.jsp"%>