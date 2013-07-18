<#include "../layout/simple/header.ftl">

<!-- Start of body -->
<div class="row-fluid">
    <div class="span12">
        <h2 class="page-title">관리자 <small>사용자 목록</small></h2>
        <ul class="breadcrumb">
            <li>관리자 <span class="divider">/</span></li>
            <li class="active">사용자 목록</li>
        </ul>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <div data-spy="affix" data-offset-top="198">
        <div class="affix-inner">
            <div class="affix-content">
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
                    <div class="clearfix margin-bottom">
                        <a class="btn">필터</a>
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
            </div><!-- affix-content -->
        </div><!-- affix-inner -->
        </div><!-- affix -->
        <section class="widget widget-bottom" style="padding-top:0">
            <table id="root_table" class="table table-middle table-hover">
            <thead>
            <tr>
                <th>
                </th>
                <th>아이디</th>
                <th class="hidden-phone">이름</th>
                <th class="hidden-phone">이메일</th>
                <th>그룹</th>
                <th>상태</th>
                <th></th>
            </tr>
            </thead>
            <tbody id="table-body">
            <#list users as user>
                <#if user_index % 2 == 1>
                <tr>
                <#else>
                <tr class="tr-striped">
                </#if>
                <td><input type="checkbox" class="rowcheck uniform" data-row-index="${user_index}"></td>
                <td><a href="#">${user.username}</a></td>
                <td class="hidden-phone">${user.userProfile.firstName?if_exists} ${user.userProfile.lastName?if_exists}</td>
                <td class="hidden-phone">${user.userProfile.email?if_exists}</td>
                <td><a href="#">${user.userProfile.userGroup.groupName?if_exists}</a></td>
                <td><span class="badge badge-info">활성</span></td>
                <td>
                    <ul class="nav-icon">
                        <li class="dropdown dropdown-inverse pull-right">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="icon-cog"></i>
                            </a>
                            <ul class="dropdown-menu pull-right">
                                <li><a href="#">활동 보기</a></li>
                                <li class="divider"></li>
                                <li><a href="#">정보 수정</a></li>
                                <li><a href="#">계정 비활성</a></li>
                                <li class="divider"></li>
                                <li><a href="#">계정 삭제</a></li>
                            </ul>
                        </li>
                    </ul>
                </td>
            </tr>
            </#list>
            </tbody>
        </table>
        <div class="pagination">
            <span class="btn-text pull-left">100개 중 1-23 </span>
            <ul class="pull-right">
                <li><a href="#">Prev</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">Next</a></li>
            </ul>
        </div>
        <div class="float-clear"></div>
    </section>
    </div>
</div>

<!-- End of body -->
<#include "../layout/simple/footer.ftl">


<!-- bootstrap plugin -->
<script src="${rc.contextPath}/static/lib/bootstrap-select/bootstrap-select.js"></script>

<!-- basic application js-->
<script src="${rc.contextPath}/static/js/app.js"></script>
<script src="${rc.contextPath}/static/js/settings.js"></script>
<script type="text/javascript">
    $(function(){
        $("input.uniform").uniform();
        $(".selectpicker").selectpicker();
    });
</script>
<script type="text/javascript">
    $(function(){
        var selectedClass = 'info';

        $('input.rowcheck[type=checkbox]').click(function (e) {
            if (e.shiftKey) {
                var current = $(this).attr('data-row-index');
                var last = $('.tr-lastcheck input.rowcheck[type=checkbox]').attr('data-row-index');
                var start = Math.min(current, last);
                var end = Math.max(current, last);
                var isChecked = $(this).is(':checked');
                $('input.rowcheck[type=checkbox]').each(function(index) {
                    if (start <= index && index <= end) {
                        $(this).prop('checked', isChecked).trigger('change');
                    }
                });
            }
            $('.tr-lastcheck').removeClass('tr-lastcheck');
            $(this).closest('tr').addClass('tr-lastcheck');
        });

        $('input.rowcheck[type=checkbox]').change(function () {
            $(this).closest('tr').toggleClass(selectedClass, $(this).is(':checked'));

            var isAllChecked = !$('input.rowcheck[type=checkbox]').is(':not(:checked)');
            $('#all-select').prop('checked', isAllChecked);

            var num = $('input.rowcheck[type=checkbox]:checked').length;
            $('#select-num').text(num);
            $('#select-message').toggle(num > 0);

            $.uniform.update();
        });

        $('#all-select').change(function () {
            $('input.rowcheck[type=checkbox]').prop('checked', $(this).is(':checked')).trigger('change');
            $.uniform.update();
        });

    });
</script>

<#include "../layout/simple/template.ftl">