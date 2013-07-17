<#-- navbar.ftl -->
<header class="page-header">
    <div class="navbar">
        <div class="navbar-inner">
            <ul class="nav pull-right">
                <li class="dropdown">
                    <a href="#" title="Messages" id="messages"
                       class="dropdown-toggle"
                       data-toggle="dropdown">
                        <i class="icon-comments"></i>
                    </a>
                    <ul id="messages-menu" class="dropdown-menu messages" role="menu">
                        <li role="presentation">
                            <a href="#" class="message">
                                <img src="${rc.contextPath}/static/img/1.jpg" alt="">
                                <div class="details">
                                    <div class="sender">Jane Hew</div>
                                    <div class="text">
                                        Hey, John! How is it going? ...
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li role="presentation">
                            <a href="#" class="message">
                                <img src="${rc.contextPath}/static/img/3.jpg" alt="">
                                <div class="details">
                                    <div class="sender">Michał Rumiancaŭ</div>
                                    <div class="text">
                                        Is it really Lore ipsum? Lore ...
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li role="presentation">
                            <a href="#" class="text-align-center see-all">
                                모든 메시지 보기 <i class="icon-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" title="8 support tickets"
                       class="dropdown-toggle"
                       data-toggle="dropdown">
                        <i class="icon-group"></i>
                        <span class="count">8</span>
                    </a>
                    <ul id="support-menu" class="dropdown-menu support" role="menu">
                        <li role="presentation">
                            <a href="#" class="support-ticket">
                                <div class="picture">
                                    <span class="label label-important"><i class="icon-bell-alt"></i></span>
                                </div>
                                <div class="details">
                                    Check out this awesome ticket
                                </div>
                            </a>
                        </li>
                        <li role="presentation">
                            <a href="#" class="support-ticket">
                                <div class="picture">
                                    <span class="label label-warning"><i class="icon-question-sign"></i></span>
                                </div>
                                <div class="details">
                                    "What is the best way to get ...
                                </div>
                            </a>
                        </li>
                        <li role="presentation">
                            <a href="#" class="support-ticket">
                                <div class="picture">
                                    <span class="label label-success"><i class="icon-tag"></i></span>
                                </div>
                                <div class="details">
                                    This is just a simple notification
                                </div>
                            </a>
                        </li>
                        <li role="presentation">
                            <a href="#" class="support-ticket">
                                <div class="picture">
                                    <span class="label label-info"><i class="icon-info-sign"></i></span>
                                </div>
                                <div class="details">
                                    12 new orders has arrived today
                                </div>
                            </a>
                        </li>
                        <li role="presentation">
                            <a href="#" class="support-ticket">
                                <div class="picture">
                                    <span class="label label-important"><i class="icon-plus"></i></span>
                                </div>
                                <div class="details">
                                    One more thing that just happened
                                </div>
                            </a>
                        </li>
                        <li role="presentation">
                            <a href="#" class="text-align-center see-all">
                                See all tickets <i class="icon-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="divider"></li>
                <li class="hidden-phone">
                    <a href="#" id="settings"
                       title="Settings"
                       data-toggle="popover"
                       data-placement="bottom">
                        <i class="icon-cog"></i>
                    </a>
                </li>
                <li class="hidden-phone dropdown">
                    <a href="#" title="Account" id="account"
                       class="dropdown-toggle"
                       data-toggle="dropdown">
                        <i class="icon-user"></i>
                    </a>
                    <ul id="account-menu" class="dropdown-menu account" role="menu">
                        <li role="presentation" class="account-picture">
                            <img src="${rc.contextPath}/static/img/2.jpg" alt="">
                            마이클
                        </li>
                        <li role="presentation">
                            <a href="form_account.html" class="link">
                                <i class="icon-user"></i>
                                &nbsp;Profile
                            </a>
                        </li>
                        <li role="presentation">
                            <a href="component_calendar.html" class="link">
                                <i class="icon-calendar"></i>&nbsp;
                                Calendar
                            </a>
                        </li>
                        <li role="presentation">
                            <a href="#" class="link">
                                <i class="icon-inbox"></i>&nbsp;
                                Inbox
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="visible-phone">
                    <a href="#"
                       class="btn-navbar"
                       data-toggle="collapse"
                       data-target=".sidebar"
                       title="">
                        <i class="icon-reorder"></i>
                    </a>
                </li>
                <li class="hidden-phone dropdown">
                    <a href="#" title="Sign out" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-signout"></i>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li role="presentation">
                            <a href="${rc.contextPath}/j_spring_security_logout" class="link">
                                <i class="eicon-logout"></i> 로그 아웃
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <div class="notifications pull-right">
                <div class="alert pull-right">
                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                    <i class="icon-info-sign"></i> 오른쪽 <a id="notification-link" href="#">설정</a>을 확인하세요
                </div>
            </div>
        </div>
    </div>
</header>

