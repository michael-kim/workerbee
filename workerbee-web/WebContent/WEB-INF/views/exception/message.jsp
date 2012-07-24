<%@ include file="/WEB-INF/views/common/include.jsp"%>
<html>
<head>
	<title> Error</title>
</head>
<body>
	<spring:message code="${exception.code}" arguments="${exception.arguments}" />
</body>
</html>