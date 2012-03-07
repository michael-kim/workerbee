<%@ include file="/WEB-INF/views/common/include.jsp"%>
<h1>
	Hello world!
</h1>
<p> message source welcome message :  <spring:message code="welcome.message" text="message doesn't find!"/> </p>
<P>  The time on the server is ${serverTime}. </P>
<p> core : <c:out value="core taglib" /></p>