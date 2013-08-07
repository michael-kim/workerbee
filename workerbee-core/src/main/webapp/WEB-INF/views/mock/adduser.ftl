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
                                     class="select2 input-large">
                        <option value="ADMIN_GROUP">관리자</option>
                        <option value="USER_GROUP">사용자</option>
                    </select>
                    <label>그룹</label>
                    <select class="select2 input-large">
                        <option value="ADMIN_GROUP">관리자</option>
                        <option value="USER_GROUP">사용자</option>
                    </select>
                    <label>활성화</label>
                    <label class="radio inline">
                        <input type="radio" name="group1" value="1" data-toggle="radio">
                        Radio is off
                    </label>

                    <label class="radio inline">
                        <input type="radio" name="group1" value="2" data-toggle="radio" checked>
                        Radio is on
                    </label>
                    <span class="ckbox ckbox-mini">
                        <input type="checkbox" value="" id="checkbox-table">
                        <label for="checkbox-table"></label>
                    </span>
                    <div>
                        <div class="tag">Checkbox Big</div>
                        <input checked type="checkbox" id="checkbox-0-1" class="fui-checkbox fui-checkbox-s" /><label for="checkbox-0-1"></label><span>small</span>
                        <input checked type="radio" id="radio-0-1" name="radio-0-1-set" class="fui-radio fui-radio-s" checked /><label for="radio-0-1"></label><span>small</span>
                        <input checked type="checkbox" id="checkbox-0-2" class="fui-checkbox" /><label for="checkbox-0-2"></label><span>normal</span>
                        <input checked type="radio" id="radio-0-2" name="radio-0-2-set" class="fui-radio" /><label for="radio-0-2"></label><span>normal</span>
                        <input checked type="checkbox" id="checkbox-0-3" class="fui-checkbox fui-checkbox-l" /><label for="checkbox-0-3"></label><span>large</span>
                        <input checked type="radio" id="radio-0-3" name="radio-0-3-set" class="fui-radio fui-radio-l" /><label for="radio-0-3"></label><span>large</span>
                        <input checked type="checkbox" id="checkbox-0-4" class="fui-checkbox fui-checkbox-xl" /><label for="checkbox-0-4"></label><span>xlarge</span>
                        <input checked type="radio" id="radio-0-4" name="radio-0-4-set" class="fui-radio fui-radio-xl" /><label for="radio-0-4"></label><span>xlarge</span>
                    </div>
                    <div>
                        <div class="tag">Checkbox Small</div>
                        <input type="checkbox" id="checkbox-1-1" class="fui-checkbox" /><label for="checkbox-1-1"></label>
                        <input type="checkbox" id="checkbox-1-2" class="fui-checkbox" /><label for="checkbox-1-2"></label>
                        <input checked type="checkbox" id="checkbox-1-3" class="fui-checkbox" /><label for="checkbox-1-3"></label>
                        <input disabled checked type="checkbox" id="checkbox-1-4" class="fui-checkbox" /><label for="checkbox-1-4"></label>
                    </div>
                    <div>
                        <div class="tag">Checkbox Big</div>
                        <input type="checkbox" id="checkbox-2-1" class="fui-checkbox fui-checkbox-xl" /><label for="checkbox-2-1"></label>
                        <input type="checkbox" id="checkbox-2-2" class="fui-checkbox fui-checkbox-xl" /><label for="checkbox-2-2"></label>
                        <input type="checkbox" id="checkbox-2-3" class="fui-checkbox fui-checkbox-xl" /><label for="checkbox-2-3"></label>
                        <input checked type="checkbox" id="checkbox-2-5" class="fui-checkbox fui-checkbox-xl" /><label for="checkbox-2-5"></label>
                        <input disabled type="checkbox" id="checkbox-2-4" class="fui-checkbox fui-checkbox-xl" /><label for="checkbox-2-4"></label>
                        <input disabled checked type="checkbox" id="checkbox-2-6" class="fui-checkbox fui-checkbox-xl" /><label for="checkbox-2-6"></label>
                    </div>
                    <div>
                        <div class="tag">Radio Small</div>
                        <div class="button-holder">
                            <input type="radio" id="radio-1-1" name="radio-1-set" class="fui-radio" checked /><label for="radio-1-1"></label><br />
                            <input type="radio" id="radio-1-2" name="radio-1-set" class="fui-radio" /><label for="radio-1-2"></label><br />
                            <input type="radio" id="radio-1-3" name="radio-1-set" class="fui-radio" /><label for="radio-1-3"></label><br />
                            <input type="radio" id="radio-1-4" name="radio-1-set" class="fui-radio" /><label for="radio-1-4"></label><br />
                        </div>
                    </div>
                    <div>
                        <div class="tag">Radio Big</div>
                        <div class="button-holder">
                            <input type="radio" id="radio-2-1" name="radio-2-set" class="fui-radio fui-radio-xl" /><label for="radio-2-1"></label><br />
                            <input type="radio" id="radio-2-2" name="radio-2-set" class="fui-radio fui-radio-xl" /><label for="radio-2-2"></label><br />
                            <input type="radio" id="radio-2-3" name="radio-2-set" class="fui-radio fui-radio-xl" checked /><label for="radio-2-3"></label><br />
                            <input type="radio" id="radio-2-4" name="radio-2-set" class="fui-radio fui-radio-xl" /><label for="radio-2-4"></label><br />
                            <input type="radio" id="radio-2-5" name="radio-2-set" class="fui-radio fui-radio-xl" /><label for="radio-2-5"></label><br />
                        </div>
                    </div>

                    <div>
                        <div class="tag">Radio Big</div>
                        <div class="button-holder">
                            <input type="radio" id="radio-3-1" name="radio-3-set" class="fui-radio fui-radio-xl" /><label for="radio-3-1"></label><br />
                            <input type="radio" id="radio-3-2" name="radio-3-set" class="fui-radio fui-radio-xl" /><label for="radio-3-2"></label><br />
                            <input type="radio" id="radio-3-3" name="radio-3-set" class="fui-radio fui-radio-xl" checked /><label for="radio-3-3"></label><br />
                            <input disabled checked type="radio" id="radio-3-4" name="radio-3-set" class="fui-radio fui-radio-xl" /><label for="radio-3-4"></label><br />
                            <input disabled type="radio" id="radio-3-5" name="radio-3-set" class="fui-radio fui-radio-xl" /><label for="radio-3-5"></label><br />
                        </div>
                    </div>

                    <div>
                        <div class="tag">Radio Big</div>
                        <div class="button-holder">
                            <input type="radio" id="radio-4-1" name="radio-4-set" class="fui-radio fui-radio-small" /><label for="radio-4-1"></label>small<br />
                            <input type="radio" id="radio-4-2" name="radio-4-set" class="fui-radio" /><label for="radio-4-2"></label>middle<br />
                            <input type="radio" id="radio-4-3" name="radio-4-set" class="fui-radio fui-radio-xl" checked /><label for="radio-4-3"></label>big<br />
                        </div>
                    </div>



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
