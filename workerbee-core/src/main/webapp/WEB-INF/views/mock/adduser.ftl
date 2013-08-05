<#include "../header.ftl">
<#include "../navbar.ftl">
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <ul class="breadcrumb no-padding margin-bottom">
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
                        tabindex="-1"
                        class="select2">
                    <option value="ADMIN_GROUP">관리자</option>
                    <option value="USER_GROUP">사용자</option>
                </select>
                <label>그룹2</label>
                <select data-placeholder="최초 그룹을 선택해 주세요"
                        data-width="off"
                        data-minimum-results-for-search="10"
                        tabindex="-1"
                        class="selectpicker">
                    <option value="ADMIN_GROUP">관리자</option>
                    <option value="USER_GROUP">사용자</option>
                </select>
                    <label>그룹3</label>
                    <select class="select2 input-large">
                        <option value="ADMIN_GROUP">관리자</option>
                        <option value="USER_GROUP">사용자</option>
                    </select>
                    <label>태그</label>
                    <input type="text" id="e12" class="input-large" />
                <div class="form-actions">
                    <button class="btn btn-primary">추가</button>
                    <button class="btn">취소</button>
                </div>
                </fieldset>
            </form>
        </div>
    </div>
</div>
<!-- /.container -->

<#include "../footer.ftl">