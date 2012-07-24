<%@ include file="/WEB-INF/views/common/include.jsp"%>
<html>
<head>
<title>
form controller</title>
</head>
<style>
.error{
	color:#ff0000;
	font-weight:bold;
}
</style>
<body>
	<form:form method="post" modelAttribute="reservation">
	<form:errors path="*" cssClass="error" />
	<table>
		<tr>
			<td>Id</td>
			<td><form:input path="id" disabled="true" /></td>
			<td><form:errors path="id" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><form:input path="name" /></td>
			<td><form:errors path="name" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Date</td>
			<td><form:input path="date" /></td>
			<td><form:errors path="date" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Hour</td>
			<td><form:input path="hour" /></td>
			<td><form:errors path="hour" cssClass="error"/></td>
		</tr>
		<tr>
			<td colspan="3"><input type="submit" /></td>
		</tr>
	</table>
	</form:form>
</body>
</html>
