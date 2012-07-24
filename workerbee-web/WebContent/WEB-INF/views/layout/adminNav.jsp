<%@ include file="/WEB-INF/views/common/include.jsp"%>
<div class="well" style="padding: 8px 0;">
	<ul class="nav nav-list">
	  <li class="nav-header">
	  Administration
	  </li>
	  <li class="<tiles:insertAttribute name='nav.usergroups' defaultValue=''/>">
	  	<a href="${ContextPath}/usergroups/list">User Groups</a>
	  </li>
	  <li class="<tiles:insertAttribute name='nav.users' defaultValue=''/>">
	  	<a href="${ContextPath}/users/list">Users</a>
	  </li>
	</ul>
</div><!-- /well -->
