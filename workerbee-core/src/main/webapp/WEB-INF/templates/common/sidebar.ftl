<!-- Start of sidebar.ftl -->
<nav id="sidebar" class="sidebar nav-collapse collapse">
    <ul id="side-nav" class="side-nav">
        <li class="active">
            <a rel="tooltip" title="Dashboard" href="${rc.contextPath}/"><i class="icon-dashboard"></i> <span class="name">Dashboard</span></a>
        </li>
        <li class="accordion-group">
            <a class="accordion-toggle collapsed" data-toggle="collapse"
               data-parent="#side-nav" href="#hadoop-collapse"><i class="icon-sitemap"></i> <span class="name">Hadoop</span></a>
            <ul id="hadoop-collapse" class="accordion-body collapse">
                <li><a href="#">Settings</a></li>
            </ul>
        </li>
        <li class="accordion-group">
            <a class="accordion-toggle collapsed" data-toggle="collapse"
               data-parent="#side-nav" href="#hive-collapse"><i class="icon-edit"></i> <span class="name">Hive</span></a>
            <ul id="hive-collapse" class="accordion-body collapse">
                <li><a href="#">Settings</a></li>
            </ul>
        </li>
        <li class="accordion-group">
            <a class="accordion-toggle collapsed" data-toggle="collapse"
               data-parent="#side-nav" href="#special-collapse"><i class="icon-asterisk"></i> <span class="name">Pages</span></a>
            <ul id="special-collapse" class="accordion-body collapse">
                <li><a href="${rc.contextPath}/">Index</a></li>
                <li><a href="${rc.contextPath}/icons">Icons</a></li>
                <li><a href="${rc.contextPath}/user/list">Users</a></li>
                <li><a href="#">Login</a></li>
                <li><a href="${rc.contextPath}/error/404">404</a></li>
            </ul>
        </li>
        <li class="visible-phone">
            <a href="${rc.contextPath}/j_spring_security_logout"><i class="icon-signout"></i> <span class="name">Sign Out</span></a>
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
