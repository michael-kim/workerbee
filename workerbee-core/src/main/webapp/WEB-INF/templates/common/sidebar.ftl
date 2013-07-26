<!-- Start of sidebar.ftl -->
<nav id="sidebar" class="sidebar nav-collapse collapse" data-spy="affix" data-offset-top="70">
    <ul id="side-nav" class="side-nav">
        <li<#if sidebar?? && sidebar=='dashboard'> class="active"</#if>>
            <a rel="tooltip" title="Dashboard" href="${rc.contextPath}/empty"><i class="icon-dashboard"></i> <span class="name">대시보드</span></a>
        </li>
        <li class="accordion-group<#if sidebar?? && sidebar=='hadoop'> active</#if>">
            <a class="accordion-toggle<#if !sidebar?? || sidebar!='hadoop'> collapsed</#if>" data-toggle="collapse"
               data-parent="#side-nav" href="#side-item-admin"><i class="icon-edit"></i> <span class="name">하둡</span></a>
            <ul id="side-item-admin" class="accordion-body collapse<#if sidebar??&&sidebar=='hadoop'> in</#if>">
                <li <#if subbar??&&subbar=='jobtracker'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/jobtracker">Jobtracker</a></li>
                <li <#if subbar??&&subbar=='jobs'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/jobs">Jobs</a></li>
                <li <#if subbar??&&subbar=='machines'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/machines">Machines</a></li>
                <li <#if subbar??&&subbar=='jobdetails'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/jobdetails">Job Details</a></li>
                <li <#if subbar??&&subbar=='jobconf'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/jobconf">Jobconf</a></li>
                <li <#if subbar??&&subbar=='jobtasks'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/jobtasks">Job Tasks</a></li>
                <li <#if subbar??&&subbar=='taskdetails'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/taskdetails">Task Details</a></li>
                <li <#if subbar??&&subbar=='tasklog'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/tasklog">Task Log</a></li>
                <li <#if subbar??&&subbar=='taskstats'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/taskstats">Task Statistics</a></li>
                <li <#if subbar??&&subbar=='jobfailures'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/jobfailures">Job Failures</a></li>
                <li <#if subbar??&&subbar=='jobqueue_details'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/jobqueue_details">Job Queue Details</a></li>
                <li <#if subbar??&&subbar=='tasktracker'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/tasktracker">TaskTracker</a></li>
                <li <#if subbar??&&subbar=='dfshealth'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/dfshealth">Dfs Health</a></li>
                <li <#if subbar??&&subbar=='dfsnodelist'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/dfsnodelist">Dfs Node List</a></li>
                <li <#if subbar??&&subbar=='browser'>class="active"</#if>><a href="${rc.contextPath}/services/hadoop/browser">Dfs Browser</a></li>
            </ul>
        </li>
        <li class="accordion-group<#if sidebar?? && sidebar=='pages'> active</#if>">
            <a class="accordion-toggle<#if !sidebar?? || sidebar!='pages'> collapsed</#if>" data-toggle="collapse"
               data-parent="#side-nav" href="#special-collapse"><i class="icon-asterisk"></i> <span class="name">페이지들</span></a>
            <ul id="special-collapse" class="accordion-body collapse<#if sidebar??&&sidebar=='pages'> in</#if>"">
                <li <#if subbar??&&subbar=='test'>class="active"</#if>><a href="${rc.contextPath}/test">테스트</a></li>
                <li <#if subbar??&&subbar=='icon'>class="active"</#if>><a href="${rc.contextPath}/icons">아이콘</a></li>
                <li <#if subbar??&&subbar=='userlist'>class="active"</#if>><a href="${rc.contextPath}/users/list">사용자 목록</a></li>
                <li <#if subbar??&&subbar=='useradd'>class="active"</#if>><a href="${rc.contextPath}/users/add">사용자 추가</a></li>
                <li><a href="${rc.contextPath}/error/404">404 에러</a></li>
            </ul>
        </li>
        <li class="visible-phone">
            <a href="${rc.contextPath}/j_spring_security_logout"><i class="icon-signout"></i> <span class="name">로그 아웃</span></a>
        </li>
    </ul>
    <div id="sidebar-settings" class="settings">
        <button type="button"
                data-value="icons"
                class="btn-icons btn btn-transparent btn-small"><i class="icon-resize-small"></i></button>
        <button type="button"
                data-value="auto"
                class="btn-auto btn btn-transparent btn-small"><i class="icon-resize-full"></i></button>
    </div>
</nav>
<!-- End of sidebar.ftl -->