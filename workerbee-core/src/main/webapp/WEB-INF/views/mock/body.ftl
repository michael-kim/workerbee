<#include "../header.ftl">
<page-header>
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container">
                <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target="#nav-collapse-01"></button>
                <a href="#" class="brand">WorkerBee</a>

                <div class="nav-collapse collapse">
                    <ul class="nav">
                        <li class="active">
                            <a href="#">서비스</a>
                            <ul>
                                <li><a href="#">하둡</a></li>
                                <li><a href="#">하이브</a></li>
                                <li><a href="#">주키퍼</a></li>
                            </ul>
                        </li>
                        <li><a href="#">호스트</a></li>
                        <li>
                            <a href="#">관리</a>
                            <ul class="pull-right">
                                <li><a href="#">사용자</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="nav-collapse collapse pull-right">
                    <ul class="nav">
                        <li>
                            <a href="#">admin</a>
                            <ul class="pull-right">
                                <li><a href="#">프로필</a></li>
                                <li><a href="#">정보 수정</a></li>
                                <li><a href="${rootPath}/j_spring_security_logout">로그 아웃</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <form class="navbar-search form-search pull-right" action="">
                    <div class="input-append">
                        <input type="text" class="search-query span2" placeholder="Search">
                        <button type="submit" class="btn btn-large">
                            <i class="fui-search"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</page-header>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span3">
            <ul class="nav nav-list nav-list-vivid">
                <li class="active"><a href="#">Link<span class="nav-counter">40</span></a></li>
                <li><a href="#">Link <span class="nav-counter">40</span></a></li>
                <li><a href="#">Link <span class="nav-counter">40</span></a></li>
                <li><a href="#">Link <span class="nav-counter">40</span></a></li>
            </ul>
        </div>

        <div class="span9">
        </div>
    </div>
</div>
<!-- /.container -->

<#include "../footer.ftl">
