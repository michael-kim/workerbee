<!-- Start of sidebar.ftl -->
<nav id="sidebar" class="sidebar nav-collapse collapse" data-spy="affix" data-offset-top="70">
    <ul id="side-nav" class="side-nav">
        <li class="active">
            <a rel="tooltip" title="Dashboard" href="${rc.contextPath}/"><i class="icon-dashboard"></i> <span class="name">대시보드</span></a>
        </li>
        <li class="accordion-group">
            <a class="accordion-toggle collapsed" data-toggle="collapse"
               data-parent="#side-nav" href="#hadoop-collapse"><i class="icon-sitemap"></i> <span class="name">하둡</span></a>
            <ul id="hadoop-collapse" class="accordion-body collapse">
                <li><a href="#">Settings</a></li>
            </ul>
        </li>
        <li class="accordion-group">
            <a class="accordion-toggle collapsed" data-toggle="collapse"
               data-parent="#side-nav" href="#side-item-hive"><i class="icon-edit"></i> <span class="name">하이브</span></a>
            <ul id="side-item-hive" class="accordion-body collapse">
                <li><a href="#">Settings</a></li>
            </ul>
        </li>
        <li class="accordion-group">
            <a class="accordion-toggle collapsed" data-toggle="collapse"
               data-parent="#side-nav" href="#side-item-admin"><i class="icon-edit"></i> <span class="name">관리자</span></a>
            <ul id="side-item-admin" class="accordion-body collapse">
                <li><a href="${rc.contextPath}/users/list">사용자 목록</a></li>
                <li><a href="${rc.contextPath}/users/add">사용자 추가</a></li>
                <li><a href="${rc.contextPath}/users/edit">사용자 정보 수정</a></li>
            </ul>
        </li>
        <li class="accordion-group">
            <a class="accordion-toggle collapsed" data-toggle="collapse"
               data-parent="#side-nav" href="#special-collapse"><i class="icon-asterisk"></i> <span class="name">페이지들</span></a>
            <ul id="special-collapse" class="accordion-body collapse">
                <li><a href="${rc.contextPath}/test">테스트</a></li>
                <li><a href="${rc.contextPath}/icons">아이콘</a></li>
                <li><a href="${rc.contextPath}/users/list">사용자 목록</a></li>
                <li><a href="#">로그인</a></li>
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