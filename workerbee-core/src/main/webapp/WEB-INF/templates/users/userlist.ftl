<#include "../layout/simple/header.ftl">

<!-- Start of body -->

<div class="row-fluid">
    <div class="span12">
        <h2 class="page-title">관리자 <small>사용자 목록</small></h2>
    </div>
</div>
<div class="row-fluid">
    <div class="span12">
    <section class="widget clearfix">
        <div class="input-append">
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
        <div class="btn-group pull-right dropdown-inverse">
            <button class="btn btn-small dropdown-toggle" data-toggle="dropdown">
                <i class="icon-caret-down"></i>
            </button>
            <ul class="dropdown-menu">
                <li><a href="#"><i class="eicon-user-add"></i> 사용자 추가</a></li>
            </ul>
        </div>
        <table class="table table-middle table-striped table-hover">
            <thead>
            <tr>
                <th>
                    <input type="checkbox" id="checkbox-1" class="uniform">
                </th>
                <th>아이디</th>
                <th>이름</th>
                <th>이메일</th>
                <th class="hidden-phone-portrait">그룹</th>
                <th class="hidden-phone-portrait">상태</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <#list users as user>
            <tr>
                <td><input type="checkbox" id="checkbox-1" class="uniform"></td>
                <td>${user.username}</td>
                <td>${user.userProfile.firstName?if_exists} ${user.userProfile.lastName?if_exists}</td>
                <td>${user.userProfile.email?if_exists}</td>
                <td class="hidden-phone-portrait">${user.userProfile.userGroup.groupName?if_exists}</td>
                <td class="hidden-phone-portrait"><span class="badge badge-info">활성</span></td>
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
                                <li><a href="#">계정 삭제</a></li>
                                <li><a href="#">계정 비활성</a></li>
                            </ul>
                        </li>
                    </ul>
                </td>
            </tr>
            </#list>
            </tbody>
        </table>
        <div class="pagination">
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

<script src="${rc.contextPath}/static/lib/uniform/js/jquery.uniform.js"></script>
<script type="text/javascript">
    $(function(){
        $("input.uniform").uniform();
        $(".selectpicker").selectpicker();
    });
</script>

<#include "../layout/simple/template.ftl">