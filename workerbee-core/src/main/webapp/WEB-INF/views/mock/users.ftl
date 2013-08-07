<#include "../header.ftl">
<#include "../navbar.ftl">
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="affixbox" data-spy="affix" data-offset-top="108">
                <div class="affixbox-inner">
                    <ul class="breadcrumb paz mbn">
                        <li>관리</li>
                        <li class="active"><a href="#">사용자</a></li>
                    </ul>
                    <div class="clearfix mbn">
                        <div class="pull-left" style="height:41px;line-height: 40px">
                            전체 선택
                            <input class="fui-checkbox" type="checkbox" id="rowselect-all">
                            <label for="rowselect-all"></label>
                            <span class="rowselect-show hide">
                                <span class="rowselect-num"></span>명 선택된 사용자 :
                            </span>
                            <a href="#" class="btn rowselect-show hide">삭제</a>
                        </div>
                        <a href="${rootPath}/view/adduser" class="btn btn-info pull-right">사용자 추가</a>
                    </div>
                </div><!-- affix-box-inner -->
            </div>
            <div class="ptn">
                <div class="dialog dialog-success maz">
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
                            <input data-row-index="${i}" class="rowselect fui-checkbox fui-checkbox-s" type="checkbox" id="checkbox-table-${i}">
                            <label for="checkbox-table-${i}"></label>
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