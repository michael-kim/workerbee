<#include "../header.ftl">
<#include "../navbar.ftl">
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="affixbox" data-spy="affix" data-offset-top="108">
                <div class="affixbox-inner">
                    <ul class="breadcrumb no-padding margin-bottom">
                        <li>관리</li>
                        <li class="active"><a href="#">사용자</a></li>
                    </ul>
                    <div class="toolbox toolbox-small">
                            전체 선택
                            <span class="ckbox">
                                <input  type="checkbox" value="" id="rowselect-all">
                                <label for="rowselect-all"></label>
                            </span>
                        <span class="rowselect-show">
                            <span class="rowselect-num"></span>명 선택된 사용자 :
                        </span>
                        <a href="#" class="btn btn-small rowselect-show">삭제</a>
                        <a href="${rootPath}/view/adduser" class="btn btn-small btn-info pull-right">사용자 추가</a>
                    </div>
                </div><!-- affix-box-inner -->
            </div>
            <div class="padding-top">
                <div class="dialog dialog-success no-margin">
                    <button class="close fui-cross"></button>
                    <div class="container">사용자가 추가되었습니다. &nbsp;&nbsp;<a href="#">실행 취소</a></div>
                </div>
            <table class="table table-hover table-striped table-bordered">
                <thead>
                    <tr>
                        <th style="width:20px"></th>
                        <th>이름</th>
                        <th>이메일</th>
                        <th>그룹</th>
                        <th>상태</th>
                        <th></th>

                    </tr>
                </thead>
                <tbody id="tbody">
                    <#list 0..100 as i>
                    <tr>
                        <td>
                            <span class="ckbox ckbox-mini">
                                <input data-row-index="${i}" class="rowselect" type="checkbox" value="" id="checkbox-table-${i}">
                                <label for="checkbox-table-${i}"></label>
                            </span>
                        </td>
                        <td>name</td>
                        <td>email</td>
                        <td>관리자</td>
                        <td>
                            <#if i<10><span class="label label-info">활성</span>
                            <#else>
                                <span class="label label-warning">비활성</span>
                            </#if>
                        </td>
                        <td>
                            <div class="dropdown dropdown-icon">
                                <i class="icon-gear dropdown-toggle" data-toggle="dropdown"></i>
                                <ul class="dropdown-menu dropdown-inverse pull-right">
                                    <li><a href="#fakelink">정보 수정</a></li>
                                    <li><a href="#fakelink">그룹 변경</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#fakelink">삭제</a></li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                    </#list>
                </tbody>
            </table>
            </div>
        </div>
    </div>
</div>
<!-- /.container -->

<#include "../footer.ftl">

<script src="${rootPath}/fui/lib/jquery.rowselect.js"></script>

<script type="text/javascript">
    $(function(){
        $('body').rowselect();
    });
</script>