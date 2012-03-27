<%@ include file="/WEB-INF/views/common/include.jsp"%>
<html>
<head>
<title>Message List</title></head>
<body>
<h2>Welcome! <sec:authentication property="name" /></h2>
<sec:authentication property="authorities" var="authorities" />
Logged as ${username}
<ul>
	<c:forEach items="${authorities}" var="authority">
		<li>${authority.authority}</li>
	</c:forEach>
</ul>
<a href="<c:url value="/j_spring_security_logout" />">logout</a>
<c:forEach items="${messages}" var="message">
<table>
	<tr>
		<td>Author</td>
		<td>${message.author}</td>
	</tr>
	<tr>
		<td>Title</td>
		<td>${message.title}</td>
	</tr>
	<tr>
		<td>Body</td>
		<td>${message.body}</td>
	</tr>
	<sec:authorize ifAllGranted="ROLE_ADMIN">
	<tr>
		<td colspan="2">
			<a href="messageDelete?messageId=${message.id}">Delete</a>
		</td>
	</tr>
	</sec:authorize>
</table>
<hr/>
</c:forEach>
<a href="messagePost.htm">Post</a>
</body>
</html>