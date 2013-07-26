<#assign sidebar="pages", subbar="useradd">
<#include "../layout/simple/header.ftl" >

<!-- Start of body -->

<div class="row-fluid">
    <div class="span12">
        <h2 class="page-title"><@spring.message "url.users.add.title"/> <small><@spring.message "url.users.add.title.small"/></small></h2>
    </div>
</div>
<div class="row-fluid">
    <div class="span6">
        <section class="widget">
            <div class="body">
                <form class="form-horizontal" method="post">
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label" for="i_username">아이디</label>
                            <div class="controls">
                                <div class="input-prepend input-prepend-fit span12">
                                    <span class="add-on pull-left"><i class="icon-user"></i></span>
                                    <input id="i_username" class="span8" size="16" type="text" placeholder="아이디를 입력해 주세요">
                                </div>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="i_name">이름</label>
                            <div class="controls">
                                <input type="text" id="i_name" class="span10" placeholder="이름을 입력해 주세요"/>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="i_email">이메일</label>
                            <div class="controls">
                                <div class="input-prepend input-prepend-fit span12">
                                    <span class="add-on pull-left"><i class="icon-envelope"></i></span>
                                    <input type="text" class="span8" id="i_email" placeholder="이메일을 입력해 주세요">
                                </div>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="i_group">그룹</label>
                            <div class="controls">
                                <select data-placeholder="최초 그룹을 선택해 주세요"
                                        data-width="off"
                                        data-minimum-results-for-search="10"
                                        tabindex="-1"
                                        class="select2 select-block-level span10" id="i_group">
                                    <option value=""></option>
                                    <option value="admin">ADMIN_GROUP</option>
                                    <option value="user">USER_GROUP</option>
                                </select>
                            </div>
                        </div>

                        <div class="control-group controls-row">
                            <label class="control-label">사용자 상태</label>
                            <div class="controls">
                                <label class="radio inline">
                                    <input type="radio" id="radio-1" class="uniform" name="cani" checked="checked">
                                    활성화</label>
                                <label class="radio inline">
                                    <input type="radio" name="cani" class="uniform" id="radio-2">
                                    비활성화 </label>
                            </div>
                        </div>

                    </fieldset>
                    <div class="form-actions ">
                        <div>
                            <button type="submit" class="btn btn-primary">사용자 생성</button>
                            <button type="button" class="btn">취소</button>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </div>
</div>

<!-- End of body -->
<#include "../layout/simple/footer.ftl" >

<script type="text/javascript">
    $(function(){
        $("input:first").focus();
        $("input.uniform").uniform();
        $("[rel='tooltip']").tooltip({placement:'right'});
        $(".select2").each(function(){
            $(this).select2($(this).data());
        });
    });
</script>


<#include "../layout/simple/template.ftl" >