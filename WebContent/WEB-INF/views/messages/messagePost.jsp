<%@ include file="/WEB-INF/views/common/include.jsp"%>
<html>
<head>
<title>Message Post</title></head>
<body>
<form:form method="POST" modelAttribute="message">
<table>
	<tr>
		<td>Title</td>
		<td><form:input path="title" /></td>
	</tr>
	<tr>
		<td>Body</td>
		<td><form:textarea path="body" /></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="Post" />
		</td>
	</tr>
</table>
</form:form>
<a href="messageList">List</a>
</body>
</html>