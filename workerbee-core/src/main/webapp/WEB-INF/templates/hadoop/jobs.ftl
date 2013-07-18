<#include "../layout/simple/header.ftl">

<!-- Start of body -->

<div class="row-fluid">
    <div class="span12">
        <h2 class="page-title">Hadoop Map/Reduce Jobs</h2>
    </div>
</div>
<div class="row-fluid">
    <div class="span12">
        <div data-spy="affix" data-offset-top="198"><div class="affix-inner"><div class="affix-content">
        <section class="widget widget-top">
            <div class="clearfix">
                <div class="input-append pull-left">
                    <input type="search" id="search-input" >
                    <select class="selectpicker dropdown-inverse" data-style="btn-default">
                        <option>모든 필드</option>
                        <option>아이디</option>
                        <option>이름</option>
                        <option>이메일</option>
                        <option>그룹</option>
                    </select>
                    <button type="button" class="btn btn-transparent">검색</button>
                </div>
            </div>
            <div class="clearfix">
                <div class="btn pull-left" style="cursor:default;padding:3px;">
                    <input id="all-select" type="checkbox" class="uniform">
                </div>
                <div class="btn-group dropdown-inverse pull-left">
                    <button class="btn dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-caret-down"></i>
                    </button>
                    <ul class="dropdown-menu" style="min-width:60px; margin-left:-37px">
                        <li class="disabled"><a href="#">전체 선택</a></li>
                        <li><a href="#" id="select-none">선택 안함</a></li>
                    </ul>
                </div>
                <div class="btn-group dropdown-inverse margin-left pull-left">
                    <button class="btn dropdown-toggle" data-toggle="dropdown">
                        더보기&nbsp;&nbsp;<i class="icon-caret-down"></i>
                    </button>
                    <ul class="dropdown-menu pull-right">
                        <li class="disabled"><a href="#">그룹 지정</a></li>
                        <li class="divider"></li>
                        <li><a href="#">활성화</a></li>
                        <li><a href="#">비활성화</a></li>
                    </ul>
                </div>
                <span id="select-message" class="btn-text pull-left hide"><span id="select-num"></span>개 선택 됨</span>
                <div class="btn-group dropdown-inverse pull-right">
                    <button class="btn dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-cogs"></i>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="${rc.contextPath}/users/add"><i class="eicon-user-add"></i> 사용자 추가</a></li>
                        <li class="divider"></li>
                        <li class="dropdown-submenu pull-left">
                            <a tabindex="-1">표시 밀도</a>
                            <ul class="dropdown-menu">
                                <li><a onclick="$('#root_table').removeClass('table-condensed')">넓게</a></li>
                                <li><a onclick="$('#root_table').addClass('table-condensed')">좁게</a></li>
                            </ul>
                        </li>
                        <li class="dropdown-submenu pull-left">
                            <a tabindex="-1">페이지 당 표시 개수</a>
                            <ul class="dropdown-menu">
                                <li><a href="#">20개</a></li>
                                <li><a href="#">50개</a></li>
                                <li><a href="#">100개</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        </div></div></div><!--affix -->
        <section class="widget widget-bottom">
                <table id="root_table" class="table table-striped no-margin">
                    <thead>
                    <tr>
                        <th></th>
                        <th>잡 아이디</th>
                        <th>시작 시간</th>
                        <th>우선순위</th>
                        <th>User</th>
                        <th>이름</th>
                        <th>맵 진행률</th>
                        <th>맵 총 개수</th>
                        <th>완료된 맵</th>
                        <th>리듀스 진행률</th>
                        <th>리듀스 총 개수</th>
                        <th>완료된 리듀스</th>
                        <th>잡 스케쥴링 정보</th>
                        <th>진단 정보</th>
                    </tr>
                    </thead>
                    <tbody>
                    <#list 1..200 as i>
                    <tr>
                        <td><input type="checkbox" class="uniform" /></td>
                        <td>job_201307181708_0001</td>
                        <td>Thu Jul 18 17:08:44 KST 2013 </td>
                        <td>NORMAL</td>
                        <td>julingks</td>
                        <td>word count</td>
                        <td>
                            <div class="progress no-margin" style="position:relative">
                                <div class="bar" style="width: 100%;"></div>
                                <div style="width:100%;text-align:center;position:absolute;">100%</div>
                            </div>
                        </td>
                        <td>5</td>
                        <td>5</td>
                        <td>
                            <div class="progress no-margin" style="position:relative">
                                <div class="bar" style="width: 100%;"></div>
                                <div style="width:100%;text-align:center;position:absolute;">100%</div>
                            </div>
                        </td>
                        <td>1</td>
                        <td>1</td>
                        <td>NA</td>
                        <td>NA</td>
                    </tr>
                    </#list>
                    </tbody>
                </table>
        </section>
    </div>
</div>

<!-- End of body -->
<#include "../layout/simple/footer.ftl">

<!-- bootstrap plugin -->
<script src="${rc.contextPath}/static/lib/bootstrap-select/bootstrap-select.js"></script>
<!-- basic application js-->
<script>
</script>
<script src="${rc.contextPath}/static/js/app.js"></script>
<script src="${rc.contextPath}/static/js/settings.js"></script>
<script type="text/javascript">
        //$("input.uniform").uniform();
        //$(".selectpicker").selectpicker();
</script>
<#include "../layout/simple/template.ftl">