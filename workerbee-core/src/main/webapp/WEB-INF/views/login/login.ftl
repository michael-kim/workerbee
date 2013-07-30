<#include "../header.ftl">
    <div class="container">
        <div class="row">
            <div class="span12">
                <div class="box-all" style="width:300px;margin:100px auto 0">
                    <form class="form-horizontal no-margin" method="post" action="${rootPath}/j_spring_security_check">
                        <legend class="no-margin">로그인</legend>
                        <div class="control-group">
                            <input class="input-fit focus" type="text" name="j_username" placeholder="사용자 이름">
                        </div>
                        <div class="control-group">
                            <input class="input-fit" type="password" name="j_password" placeholder="비밀번호">
                        </div>
                        <#if isError?? && isError?string == "true" && Session.SPRING_SECURITY_LAST_EXCEPTION??>
                            <div class="color-danger margin-bottom">${Session.SPRING_SECURITY_LAST_EXCEPTION.message}</div>
                        </#if>
                        <div class="control-group">
                            <a href="#">비밀번호를 잊어버렸습니까?</a>
                        </div>
                        <div class="control-group no-margin">
                            <button type="submit" class="btn btn-primary">로그인</button>
                            <a class="btn btn-info" href="#" >계정 만들기</a>
                        </div>
                    </form>
                </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container -->

<#include "../footer.ftl">