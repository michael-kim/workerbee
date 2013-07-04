<!DOCTYPE html>
<html>
<head>
    <title>Light Blue - Admin Template</title>
    <link href="${rc.contextPath}/static/css/application.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="${rc.contextPath}/static/img/favicon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta charset="utf-8">
</head>
<body class="background-dark">
<div class="logo">
    <h4><a href="${rc.contextPath}/">Worker<strong>Bee</strong></a></h4>
</div>
<nav id="sidebar" class="sidebar nav-collapse collapse">
    <ul id="side-nav" class="side-nav">
        <li class="active">
            <a href="${rc.contextPath}/"><i class="icon-desktop"></i> <span class="name">Dashboard</span></a>
        </li>
        <li class="accordion-group">
            <a class="accordion-toggle collapsed" data-toggle="collapse"
               data-parent="#side-nav" href="#forms-collapse"><i class="icon-edit"></i> <span class="name">Forms</span></a>
            <ul id="forms-collapse" class="accordion-body collapse">
                <li><a href="form_account.html">Account</a></li>
                <li><a href="form_article.html">Article</a></li>
                <li><a href="form_elements.html">Elements</a></li>
                <li><a href="form_validation.html">Validation</a></li>
            </ul>
        </li>
        <li class="accordion-group">
            <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#side-nav" href="#stats-collapse"><i class="icon-bar-chart"></i> <span class="name">Statistics</span></a>
            <ul id="stats-collapse" class="accordion-body collapse">
                <li><a href="stat_statistics.html">Stats</a></li>
                <li><a href="stat_charts.html">Charts</a></li>
                <li><a href="stat_realtime.html">Realtime</a></li>
            </ul>
        </li>
        <li class="accordion-group">
            <a class="accordion-toggle collapsed" data-toggle="collapse"
               data-parent="#side-nav" href="#ui-collapse"><i class="icon-magic"></i> <span class="name">User Interface</span></a>
            <ul id="ui-collapse" class="accordion-body collapse">
                <li><a href="ui_buttons.html">Buttons</a></li>
                <li><a href="ui_dialogs.html">Dialogs</a></li>
                <li><a href="ui_icons.html">Icons</a></li>
                <li><a href="ui_tabs.html">Tabs</a></li>
                <li><a href="ui_accordion.html">Accordion</a></li>
            </ul>
        </li>
        <li class="accordion-group">
            <a class="accordion-toggle collapsed" data-toggle="collapse"
               data-parent="#side-nav" href="#components-collapse"><i class="icon-bookmark-empty"></i> <span class="name">Components</span></a>
            <ul id="components-collapse" class="accordion-body collapse">
                <li><a href="component_calendar.html">Calendar</a></li>
                <li><a href="component_maps.html">Maps</a></li>
                <li><a href="component_gallery.html">Gallery</a></li>
                <li><a href="component_fileupload.html">Fileupload</a></li>
            </ul>
        </li>
        <li class="accordion-group">
            <a class="accordion-toggle collapsed" data-toggle="collapse"
               data-parent="#side-nav" href="#tables-collapse"><i class="icon-table"></i> <span class="name">Tables</span></a>
            <ul id="tables-collapse" class="accordion-body collapse">
                <li><a href="tables_static.html">Static</a></li>
                <li><a href="tables_dynamic.html">Dynamic</a></li>
            </ul>
        </li>
        <li>
            <a href="grid.html"><i class="icon-reorder"></i> <span class="name">Grid</span></a>
        </li>
        <li class="accordion-group">
            <a class="accordion-toggle collapsed" data-toggle="collapse"
               data-parent="#side-nav" href="#special-collapse"><i class="icon-asterisk"></i> <span class="name">Special</span></a>
            <ul id="special-collapse" class="accordion-body collapse">
                <li><a href="special_search.html">Search</a></li>
                <li><a href="login.html">Login</a></li>
                <li><a href="special_404.html">404</a></li>
            </ul>
        </li>
        <li class="visible-phone">
            <a href="login.html"><i class="icon-signout"></i> <span class="name">Sign Out</span></a>
        </li>
    </ul>
    <div id="sidebar-settings" class="settings">
        <button type="button"
                data-value="icons"
                class="btn-icons btn btn-transparent btn-small">Icons</button>
        <button type="button"
                data-value="auto"
                class="btn-auto btn btn-transparent btn-small">Auto</button>
    </div>
</nav>
<div class="wrap">
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
                                    <img src="${rc.contextPath}/static/img/2.jpg" alt="">
                                    <div class="details">
                                        <div class="sender">Alies Rumiancaŭ</div>
                                        <div class="text">
                                            I'll definitely buy this template
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
                                    See all messages <i class="icon-arrow-right"></i>
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
                                Philip Daineka
                            </li>
                            <li role="presentation">
                                <a href="form_account.html" class="link">
                                    <i class="icon-user"></i>
                                    Profile
                                </a>
                            </li>
                            <li role="presentation">
                                <a href="component_calendar.html" class="link">
                                    <i class="icon-calendar"></i>
                                    Calendar
                                </a>
                            </li>
                            <li role="presentation">
                                <a href="#" class="link">
                                    <i class="icon-inbox"></i>
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
                    <li class="hidden-phone"><a href="login.html"><i class="icon-signout"></i></a></li>
                </ul>
                <div class="notifications pull-right">
                    <div class="alert pull-right">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <i class="icon-info-sign"></i> Check out Light Blue <a id="notification-link" href="#">settings</a> on the right!
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="content container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <h2 class="page-title">Dashboard <small>Statistics and more</small></h2>
            </div>
        </div>
        <div class="row-fluid">
            <div class="span8">
                <section class="widget">
                    <header>
                        <h4>
                            <i class="icon-group"></i>
                            Visits
                            <small>
                                Based on a three months data
                            </small>
                        </h4>
                    </header>
                    <div class="body no-margin">
                        <div id="visits-chart" class="chart visits-chart">
                            <svg></svg>
                        </div>
                        <div class="visits-info well well-small">
                            <div class="row-fluid">
                                <div class="span3">
                                    <div class="key"><i class="eicon-users"></i> Total Traffic</div>
                                    <div class="value">24 541 <i class="icon-caret-up color-green"></i></div>
                                </div>
                                <div class="span3">
                                    <div class="key"><i class="eicon-user"></i> Unique Visits</div>
                                    <div class="value">14 778 <i class="icon-caret-down color-red"></i></div>
                                </div>
                                <div class="span3">
                                    <div class="key"><i class="icon-plus-sign-alt"></i> Revenue</div>
                                    <div class="value">$3 583.18 <i class="icon-caret-up color-green"></i></div>
                                </div>
                                <div class="span3">
                                    <div class="key"><i class="icon-user"></i> Total Sales</div>
                                    <div class="value">$59 871.12 <i class="icon-caret-down color-red"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="widget">
                    <header>
                        <h4>
                            <i class="icon-shopping-cart"></i>
                            Traffic Sources
                            <small>
                                One month tracking
                            </small>
                        </h4>
                    </header>
                    <div class="body">
                        <table class="table table-striped no-margin sources-table">
                            <thead>
                            <tr>
                                <th class="source-col-header">Source</th>
                                <th>Amount</th>
                                <th>Change</th>
                                <th class="hidden-phone">Percent.,%</th>
                                <th>Target</th>
                                <th class="chart-col-header hidden-phone">Trend</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><span class="label label-important">Direct</span></td>
                                <td>713</td>
                                <td><strong class="color-green">+53</strong></td>
                                <td class="hidden-phone">+12</td>
                                <td>900</td>
                                <td class="chart-cell hidden-phone">
                                    <div id="direct-trend"></div>
                                </td>
                            </tr>
                            <tr>
                                <td><span class="label label-warning">Refer</span></td>
                                <td>562</td>
                                <td><strong>+84</strong></td>
                                <td class="hidden-phone">+64</td>
                                <td>500</td>
                                <td class="chart-cell hidden-phone">
                                    <div id="refer-trend"></div>
                                </td>
                            </tr>
                            <tr>
                                <td><span class="label label-success">Social</span></td>
                                <td>148</td>
                                <td><strong class="color-red">-12</strong></td>
                                <td class="hidden-phone">+3</td>
                                <td>180</td>
                                <td class="chart-cell hidden-phone">
                                    <div id="social-trend"></div>
                                </td>
                            </tr>
                            <tr>
                                <td><span class="label label-info">Search</span></td>
                                <td>653</td>
                                <td><strong class="color-green">+23</strong></td>
                                <td class="hidden-phone">+43</td>
                                <td>876</td>
                                <td class="chart-cell hidden-phone">
                                    <div id="search-trend"></div>
                                </td>
                            </tr>
                            <tr>
                                <td><span class="label label-inverse">Internal</span></td>
                                <td>976</td>
                                <td><strong>+101</strong></td>
                                <td class="hidden-phone">-7</td>
                                <td>844</td>
                                <td class="chart-cell hidden-phone">
                                    <div id="internal-trend"></div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </section>
                <section class="widget large">
                    <header>
                        <h4>
                            <i class="eicon-chat"></i>
                            Chat
                        </h4>
                    </header>
                    <div class="body">
                        <div id="chat" class="chat">
                            <div id="chat-messages" class="chat-messages">
                                <div class="chat-message">
                                    <div class="sender pull-left">
                                        <div class="icon">
                                            <img src="${rc.contextPath}/static/img/2.jpg" class="img-circle" alt="">
                                        </div>
                                        <div class="time">
                                            4 min
                                        </div>
                                    </div>
                                    <div class="chat-message-body">
                                        <span class="arrow"></span>
                                        <div class="sender"><a href="#">Tikhon Laninga</a></div>
                                        <div class="text">
                                            Hey Sam, how is it going? But I must explain to you how all this mistaken
                                            idea of denouncing of a pleasure and praising pain was born
                                        </div>
                                    </div>
                                </div>
                                <div class="chat-message">
                                    <div class="sender pull-right">
                                        <div class="icon">
                                            <img src="${rc.contextPath}/static/img/1.jpg" class="img-circle" alt="">
                                        </div>
                                        <div class="time">
                                            3 min
                                        </div>
                                    </div>
                                    <div class="chat-message-body on-left">
                                        <span class="arrow"></span>
                                        <div class="sender"><a href="#">Cenhelm Houston</a></div>
                                        <div class="text">
                                            Pretty good. Doing my homework..  No one rejects, dislikes, or avoids
                                            pleasure itself, because it is pleasure, but because
                                        </div>
                                    </div>
                                </div>
                                <div class="chat-message">
                                    <div class="sender pull-left">
                                        <div class="icon">
                                            <img src="${rc.contextPath}/static/img/2.jpg" class="img-circle" alt="">
                                        </div>
                                        <div class="time">
                                            2 min
                                        </div>
                                    </div>
                                    <div class="chat-message-body">
                                        <span class="arrow"></span>
                                        <div class="sender"><a href="#">Tikhon Laninga</a></div>
                                        <div class="text">
                                            Any chance to go out? To take a trivial example, which of us ever undertakes
                                            laborious physical exercise, except to obtain some advantage
                                        </div>
                                    </div>
                                </div>
                                <div class="chat-message">
                                    <div class="sender pull-right">
                                        <div class="icon">
                                            <img src="${rc.contextPath}/static/img/1.jpg" class="img-circle" alt="">
                                        </div>
                                        <div class="time">
                                            2 min
                                        </div>
                                    </div>
                                    <div class="chat-message-body on-left">
                                        <span class="arrow"></span>
                                        <div class="sender"><a href="#">Cenhelm Houston</a></div>
                                        <div class="text">
                                            .. Maybe 40-50 mins. I don't know exactly. On the other hand, we denounce
                                            with righteous indignation and dislike men who are so beguiled
                                        </div>
                                    </div>
                                </div>
                                <div class="chat-message">
                                    <div class="sender pull-left">
                                        <div class="icon">
                                            <img src="${rc.contextPath}/static/img/2.jpg" class="img-circle" alt="">
                                        </div>
                                        <div class="time">
                                            1 min
                                        </div>
                                    </div>
                                    <div class="chat-message-body">
                                        <span class="arrow"></span>
                                        <div class="sender"><a href="#">Tikhon Laninga</a></div>
                                        <div class="text">
                                            Anyway sounds great! These cases are perfectly simple and easy to
                                            distinguish.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row-fluid non-responsive">
                                <footer class="chat-footer controls-row">
                                    <input id="new-message" type="text" class="span10" placeholder="Enter your message..">
                                    <button type="button" id="new-message-btn" class="btn btn-transparent span2">Send</button>
                                </footer>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="span4">
                <section class="widget large">
                    <header>
                        <h4>
                            <i class="eicon-share"></i>
                            Feed
                        </h4>
                        <div class="actions">
                            <button class="btn btn-transparent btn-mini">Show All <i class="icon-arrow-down"></i></button>
                        </div>
                    </header>
                    <div class="body">
                        <div id="feed" class="feed">
                            <div class="wrapper">
                                <div class="vertical-line"></div>
                                <section class="feed-item">
                                    <div class="icon pull-left">
                                        <i class="icon-comment"></i>
                                    </div>
                                    <div class="feed-item-body">
                                        <div class="text">
                                            <a href="#">John Doe</a> commented on <a href="#">What Makes Good Code Good</a>.
                                        </div>
                                        <div class="time pull-left">
                                            3 h
                                        </div>
                                    </div>
                                </section>
                                <section class="feed-item">
                                    <div class="icon pull-left">
                                        <i class="icon-ok color-green"></i>
                                    </div>
                                    <div class="feed-item-body">
                                        <div class="text">
                                            <a href="#">Merge request #42</a> has been approved by <a href="#">Jessica Lori</a>.
                                        </div>
                                        <div class="time pull-left">
                                            10 h
                                        </div>
                                    </div>
                                </section>
                                <section class="feed-item">
                                    <div class="icon pull-left">
                                        <img src="${rc.contextPath}/static/img/14.jpg" class="img-circle" alt="">
                                    </div>
                                    <div class="feed-item-body">
                                        <div class="text">
                                            New user <a href="#">Greg Wilson</a> registered.
                                        </div>
                                        <div class="time pull-left">
                                            Today
                                        </div>
                                    </div>
                                </section>
                                <section class="feed-item">
                                    <div class="icon pull-left">
                                        <i class="icon-bolt color-orange"></i>
                                    </div>
                                    <div class="feed-item-body">
                                        <div class="text">
                                            Server fail level raises above normal. <a href="#">See logs</a> for details.
                                        </div>
                                        <div class="time pull-left">
                                            Yesterday
                                        </div>
                                    </div>
                                </section>
                                <section class="feed-item">
                                    <div class="icon pull-left">
                                        <i class="eicon-database"></i>
                                    </div>
                                    <div class="feed-item-body">
                                        <div class="text">
                                            <a href="#">Database usage report</a> is ready.
                                        </div>
                                        <div class="time pull-left">
                                            Yesterday
                                        </div>
                                    </div>
                                </section>
                                <section class="feed-item">
                                    <div class="icon pull-left">
                                        <i class="icon-shopping-cart"></i>
                                    </div>
                                    <div class="feed-item-body">
                                        <div class="text">
                                            <a href="#">Order #233985</a> needs additional processing.
                                        </div>
                                        <div class="time pull-left">
                                            Wednesday
                                        </div>
                                    </div>
                                </section>
                                <section class="feed-item">
                                    <div class="icon pull-left">
                                        <i class="icon-arrow-down"></i>
                                    </div>
                                    <div class="feed-item-body">
                                        <div class="text">
                                            <a href="#">Load more...</a>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="widget widget-tabs">
                    <header>
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="#stats" data-toggle="tab">Users</a>
                            </li>
                            <li>
                                <a href="#report" data-toggle="tab">Favorites</a>
                            </li>
                            <li>
                                <a href="#dropdown1" data-toggle="tab">Commenters</a>
                            </li>
                        </ul>
                    </header>
                    <div class="body tab-content">
                        <div id="stats" class="tab-pane active clearfix">
                            <h5 class="tab-header"><i class="icon-group"></i> Last logged-in users</h5>
                            <ul class="users-list">
                                <li>
                                    <img src="${rc.contextPath}/static/img/1.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Finees Lund</a></div>
                                        <div class="position">Product Designer</div>
                                        <div class="time">Last logged-in: Mar 20, 18:46</div>
                                    </div>
                                </li>
                                <li>
                                    <img src="${rc.contextPath}/static/img/3.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Erebus Novak</a></div>
                                        <div class="position">Software Engineer</div>
                                        <div class="time">Last logged-in: Mar 23, 9:02</div>
                                    </div>
                                </li>
                                <li>
                                    <img src="${rc.contextPath}/static/img/2.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Leopoldo Reier</a></div>
                                        <div class="position">Chief Officer</div>
                                        <div class="time">Last logged-in: Jun 6, 15:34</div>
                                    </div>
                                </li>
                                <li>
                                    <img src="${rc.contextPath}/static/img/13.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Frans Garey</a></div>
                                        <div class="position">Financial Assistant</div>
                                        <div class="time">Last logged-in: Jun 8, 17:20</div>
                                    </div>
                                </li>
                                <li>
                                    <img src="${rc.contextPath}/static/img/14.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Jessica Johnsson</a></div>
                                        <div class="position">Sales Manager</div>
                                        <div class="time">Last logged-in: Jun 8, 9:13</div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div id="report" class="tab-pane">
                            <h5 class="tab-header"><i class="icon-star"></i> Popular contacts</h5>
                            <ul class="users-list user-list-no-hover">
                                <li>
                                    <img src="${rc.contextPath}/static/img/14.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Jessica Johnsson</a></div>
                                        <div class="options">
                                            <button class="btn btn-mini btn-success">
                                                <i class="icon-phone"></i>
                                                Call
                                            </button>
                                            <button class="btn btn-mini btn-warning">
                                                <i class="icon-envelope-alt"></i>
                                                Message
                                            </button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <img src="${rc.contextPath}/static/img/13.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Frans Garey</a></div>
                                        <div class="options">
                                            <button class="btn btn-mini btn-success">
                                                <i class="icon-phone"></i>
                                                Call
                                            </button>
                                            <button class="btn btn-mini btn-warning">
                                                <i class="icon-envelope-alt"></i>
                                                Message
                                            </button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <img src="${rc.contextPath}/static/img/3.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Erebus Novak</a></div>
                                        <div class="options">
                                            <button class="btn btn-mini btn-success">
                                                <i class="icon-phone"></i>
                                                Call
                                            </button>
                                            <button class="btn btn-mini btn-warning">
                                                <i class="icon-envelope-alt"></i>
                                                Message
                                            </button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <img src="${rc.contextPath}/static/img/2.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Leopoldo Reier</a></div>
                                        <div class="options">
                                            <button class="btn btn-mini btn-success">
                                                <i class="icon-phone"></i>
                                                Call
                                            </button>
                                            <button class="btn btn-mini btn-warning">
                                                <i class="icon-envelope-alt"></i>
                                                Message
                                            </button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <img src="${rc.contextPath}/static/img/1.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Finees Lund</a></div>
                                        <div class="options">
                                            <button class="btn btn-mini btn-success">
                                                <i class="icon-phone"></i>
                                                Call
                                            </button>
                                            <button class="btn btn-mini btn-warning">
                                                <i class="icon-envelope-alt"></i>
                                                Message
                                            </button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div id="dropdown1" class="tab-pane">
                            <h5 class="tab-header"><i class="icon-comments"></i> Top Commenters</h5>
                            <ul class="users-list">
                                <li>
                                    <img src="${rc.contextPath}/static/img/13.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Frans Garey</a></div>
                                        <div class="comment">
                                            Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                                            sed quia
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <img src="${rc.contextPath}/static/img/1.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Finees Lund</a></div>
                                        <div class="comment">
                                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore
                                            eu fugiat.
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <img src="${rc.contextPath}/static/img/14.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Jessica Johnsson</a></div>
                                        <div class="comment">
                                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                                            deserunt.
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <img src="${rc.contextPath}/static/img/3.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Erebus Novak</a></div>
                                        <div class="comment">
                                            Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium
                                            doloremque.
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <img src="${rc.contextPath}/static/img/2.jpg" alt="" class="pull-left img-circle"/>
                                    <div class="user-info">
                                        <div class="name"><a href="#">Leopoldo Reier</a></div>
                                        <div class="comment">
                                            Laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis
                                            et quasi.
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </section>
                <section class="widget">
                    <header>
                        <h4>
                            <i class="icon-magnet"></i>
                            Server Overview
                        </h4>
                    </header>
                    <div class="body">
                        <ul class="server-stats">
                            <li>
                                <div class="key pull-right">CPU</div>
                                <div class="stat">
                                    <div class="info">60% / 37&deg;C / 3.3 Ghz</div>
                                    <div class="progress progress-small progress-danger">
                                        <div class="bar" style="width: 70%;"></div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="key pull-right">Mem</div>
                                <div class="stat">
                                    <div class="info">29% / 4GB (16 GB)</div>
                                    <div class="progress progress-small">
                                        <div class="bar" style="width: 29%;"></div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="key pull-right">LAN</div>
                                <div class="stat">
                                    <div class="info">6 Mb/s <i class="icon-caret-down"></i> &nbsp; 3 Mb/s <i class="icon-caret-up"></i></div>
                                    <div class="progress progress-small progress-inverse">
                                        <div class="bar" style="width: 48%;"></div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>

<!-- jquery and friends -->
<script src="${rc.contextPath}/static/lib/jquery/jquery.1.9.0.min.js"> </script>
<script src="${rc.contextPath}/static/lib/jquery/jquery-migrate-1.1.0.min.js"> </script>

<!-- jquery plugins -->
<script src="${rc.contextPath}/static/lib/uniform/js/jquery.uniform.js"></script>
<script src="${rc.contextPath}/static/lib/sparkline/jquery.sparkline.js"></script>
<script src="${rc.contextPath}/static/lib/jquery-ui-1.10.1.custom.js"></script>
<script src="${rc.contextPath}/static/lib/jquery.slimscroll.js"></script>

<!-- d3, nvd3-->
<script src="${rc.contextPath}/static/lib/nvd3/lib/d3.v2.js"></script>
<script src="${rc.contextPath}/static/lib/nvd3/nv.d3.custom.js"></script>

<!-- nvd3 models -->
<script src="${rc.contextPath}/static/lib/nvd3/src/models/scatter.js"></script>
<script src="${rc.contextPath}/static/lib/nvd3/src/models/axis.js"></script>
<script src="${rc.contextPath}/static/lib/nvd3/src/models/legend.js"></script>
<script src="${rc.contextPath}/static/lib/nvd3/src/models/multiBar.js"></script>
<script src="${rc.contextPath}/static/lib/nvd3/src/models/multiBarChart.js"></script>
<script src="${rc.contextPath}/static/lib/nvd3/src/models/line.js"></script>
<script src="${rc.contextPath}/static/lib/nvd3/src/models/lineChart.js"></script>
<script src="${rc.contextPath}/static/lib/nvd3/stream_layers.js"></script>

<!--backbone and friends -->
<script src="${rc.contextPath}/static/lib/backbone/underscore-min.js"></script>
<script src="${rc.contextPath}/static/lib/backbone/backbone-min.js"></script>
<script src="${rc.contextPath}/static/lib/backbone/backbone.localStorage-min.js"></script>

<!-- bootstrap default plugins -->
<script src="${rc.contextPath}/static/js/bootstrap/bootstrap-transition.js"></script>
<script src="${rc.contextPath}/static/js/bootstrap/bootstrap-collapse.js"></script>
<script src="${rc.contextPath}/static/js/bootstrap/bootstrap-alert.js"></script>
<script src="${rc.contextPath}/static/js/bootstrap/bootstrap-tooltip.js"></script>
<script src="${rc.contextPath}/static/js/bootstrap/bootstrap-popover.js"></script>
<script src="${rc.contextPath}/static/js/bootstrap/bootstrap-button.js"></script>
<script src="${rc.contextPath}/static/js/bootstrap/bootstrap-tab.js"> </script>
<script src="${rc.contextPath}/static/js/bootstrap/bootstrap-dropdown.js"></script>

<!-- basic application js-->
<script src="${rc.contextPath}/static/js/app.js"></script>
<script src="${rc.contextPath}/static/js/settings.js"></script>

<!-- page specific -->
<script src="${rc.contextPath}/static/js/index.js"></script>
<script src="${rc.contextPath}/static/js/chat.js"></script>

<script type="text/template" id="message-template">
        <div class="sender pull-left">
            <div class="icon">
                <img src="img/2.jpg" class="img-circle" alt="">
            </div>
            <div class="time">
                just now
            </div>
        </div>
        <div class="chat-message-body">
            <span class="arrow"></span>
            <div class="sender">Tikhon Laninga</div>
            <div class="text">
                <%- text %>
            </div>
        </div>
</script>

<script type="text/template" id="settings-template">
    <div class="setting clearfix">
        <div>Background</div>
        <div id="background-toggle" class="pull-left btn-group" data-toggle="buttons-radio">
            <% dark = background == 'dark'; light = background == 'light';%>
            <button type="button" data-value="dark" class="btn btn-small btn-transparent <%= dark? 'active' : '' %>">Dark</button>
            <button type="button" data-value="light" class="btn btn-small btn-transparent <%= light? 'active' : '' %>">Light</button>
        </div>
    </div>
    <div class="setting clearfix">
        <div>Sidebar on the</div>
        <div id="sidebar-toggle" class="pull-left btn-group" data-toggle="buttons-radio">
            <% onRight = sidebar == 'right'%>
            <button type="button" data-value="left" class="btn btn-small btn-transparent <%= onRight? '' : 'active' %>">Left</button>
            <button type="button" data-value="right" class="btn btn-small btn-transparent <%= onRight? 'active' : '' %>">Right</button>
        </div>
    </div>
    <div class="setting clearfix">
        <div>Sidebar</div>
        <div id="display-sidebar-toggle" class="pull-left btn-group" data-toggle="buttons-radio">
            <% display = displaySidebar%>
            <button type="button" data-value="true" class="btn btn-small btn-transparent <%= display? 'active' : '' %>">Show</button>
            <button type="button" data-value="false" class="btn btn-small btn-transparent <%= display? '' : 'active' %>">Hide</button>
        </div>
    </div>
</script>

<script type="text/template" id="sidebar-settings-template">
    <% auto = sidebarState == 'auto'%>
    <% if (auto) {%>
    <button type="button"
            data-value="icons"
            class="btn-icons btn btn-transparent btn-small">Icons</button>
    <button type="button"
            data-value="auto"
            class="btn-auto btn btn-transparent btn-small">Auto</button>
    <%} else {%>
    <button type="button"
            data-value="auto"
            class="btn btn-transparent btn-small">Auto</button>
    <% } %>
</script>

</body>
</html>