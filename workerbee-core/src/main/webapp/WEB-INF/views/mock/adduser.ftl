<#include "../header.ftl">
<#include "../navbar.ftl">
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <ul class="breadcrumb paz mbn">
                <li>관리</li>
                <li><a href="${rootPath}/view/users">사용자</a></li>
                <li class="active">사용자 추가</li>
            </ul>
            <form>
                <fieldset>
                    <legend>사용자 추가</legend>
                    <label>사용자 이름</label>
                    <input type="text" class="focus input-xxlarge">
                    <label>이름</label>
                    <input type="text" class="input-xxlarge">
                    <label>이메일</label>
                    <input type="text" class="input-xxlarge">
                    <label>그룹</label>
                    <select data-placeholder="최초 그룹을 선택해 주세요"
                                     data-width="off"
                                     data-minimum-results-for-search="10"
                                     class="select2 input-large">
                        <option value="ADMIN_GROUP">관리자</option>
                        <option value="USER_GROUP">사용자</option>
                    </select>

                    <label>상태</label>
                    <input id="i-radio-1" class="fui-radio fui-radio-xl" type="radio" name="group1" value="1" checked>
                    <label for="i-radio-1"></label>
                    <label for="i-radio-1">활성</label>

                    <input id="i-radio-2" class="fui-radio fui-radio-xl" type="radio" name="group1" value="2">
                    <label for="i-radio-2"></label>
                    <label for="i-radio-2">비활성</label>

                    <div class="form-actions">
                        <button class="btn btn-info">추가</button>
                        <button class="btn">취소</button>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</div>
<!-- /.container -->

<#include "../footer.ftl">
