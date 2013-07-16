<#include "./layout/simple/header.ftl">

<!-- Start of body -->

<div class="row-fluid">
    <div class="span12">
        <h2 class="page-title">관리자 <small>프로필 수정</small></h2>
        <div class="alert">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <strong>Warning!</strong> Best check yo self, you're not looking too good.
        </div>
    </div>
</div>
<div class="row-fluid">
    <div class="span2">
        <div class="side-nav-wrap">
            <ul class="side-nav">
                <li class="active">
                    <a rel="tooltip" title="Dashboard" href="${rc.contextPath}/"><i class="icon-dashboard"></i> <span class="name">대시보드</span></a>
                </li>
                <li><a><i class="icon-sitemap"></i> <span class="name">하둡</span></a></li>
                <li><a href="#hive-collapse"><i class="icon-edit"></i> <span class="name">하이브</span></a></li>
                <li><a href="#special-collapse"><i class="icon-asterisk"></i> <span class="name">우지</span></a></li>
            </ul>
        </div>
    </div>
    <div class="span10">
        <section class="widget">
            <header>
                <h4>
                    <i class="icon-caret-right"></i>
                    계정설정
                </h4>
            </header>
            <div class="body">
                <table class="table table-striped table-hover">
                    <tbody>
                    <tr>
                        <th class="span4">이름</th>
                        <td>김민우(Minwoo Kim)</td>
                        <td class="span1"><a href="#">수정</a></td>
                    </tr>
                    <tr>
                        <th>사용자 이름 (URL)수정</th>
                        <td>facebook.com/julingks</td>
                        <td><a href="#">수정</a></td>
                    </tr>
                    <tr id="aaa" class="no-hover">
                        <th>비밀번호</th>
                        <td>2일전 변경</td>
                        <td><a href="#" onclick="$('#aaa').toggle();$('#bbb').toggle()">수정</a></td>
                    </tr>
                    <tr id="bbb" class="no-hover hide">
                        <th>비밀번호</th>
                        <td colspan="2">
                            <form class="form-horizontal" method="post">
                                <fieldset>
                                    <div class="control-group controls-row">
                                        <label class="control-label" for="password-field">현재 비밀번호</label>
                                        <div class="controls">
                                            <div class="input-prepend span6">
                                                <span class="add-on pull-left"><i class="icon-lock"></i></span>
                                                <input type="password" class="span8" id="password-field">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="control-group controls-row">
                                        <label class="control-label" for="password-field">새 비밀번호</label>
                                        <div class="controls">
                                            <div class="input-prepend span6">
                                                <span class="add-on pull-left"><i class="icon-lock"></i></span>
                                                <input type="password" class="span8" id="password-field">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="control-group controls-row">
                                        <label class="control-label" for="password-field">새 비밀번호 재입력</label>
                                        <div class="controls">
                                            <div class="input-prepend span6">
                                                <span class="add-on pull-left"><i class="icon-lock"></i></span>
                                                <input type="password" class="span8" id="password-field">
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="form-actions ">
                                    <div>
                                        <button type="submit" class="btn btn-primary">변경 내용 저장</button>
                                        <a class="btn" onclick="$('#aaa').toggle();$('#bbb').toggle()">취소</a>
                                    </div>
                                </div>
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>julingks@gmail.com</td>
                        <td><a href="#">수정</a></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </section>
    </div>
</div>
<div class="row-fluid">
    <div class="span12">
        <ul class="breadcrumb">
            <li><a href="#">Home</a> <span class="divider">/</span></li>
            <li><a href="#">Library</a> <span class="divider">/</span></li>
            <li class="active">Data</li>
        </ul>
        <div class="well well-small clearfix">
            <div class="dropdown dropdown-icon dropdown-inverse pull-left">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-cog"></i></a><span>Settings</span>
                <ul class="dropdown-menu dropdown-menu-inverse">
                    <li class="disabled"><a href="#aaaaaa"><span>Act</span>ion</a></li>
                    <li><a href="#aaaaaa"><span>span</span>ion</a></li>
                    <li><a href="#">Separated link</a></li>
                    <li class="dropdown-submenu">
                        <a tabindex="-1" href="#">More options</a>
                        <ul class="dropdown-menu pull-left">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Action</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="dropdown dropdown-icon dropdown-inverse pull-right">
                <span>Settings</span><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-cog"></i></a>
                <ul class="dropdown-menu pull-right">
                    <li class="disabled"><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                    <li class="dropdown-submenu pull-left">
                        <a tabindex="-1" href="#">More options1</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Action</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div><!-- well -->
        <div class="well well-small">
            <ul class="nav-icon icon-large">
            <li class="dropdown  dropdown-inverse pull-left">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-cog"></i></a>
                <span class="pull-down">Settings</span>
                <ul class="dropdown-menu">
                    <li class="disabled"><a href="#aaaaaa"><span>Act</span>ion</a></li>
                    <li><a href="#aaaaaa"><span>span</span>ion</a></li>
                    <li><a href="#">Separated link</a></li>
                    <li class="dropdown-submenu">
                        <a tabindex="-1" href="#">More options</a>
                        <ul class="dropdown-menu pull-left">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Action</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="dropdown dropdown-inverse pull-left">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-wrench"></i></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Action</a></li>
                </ul>
            </li>
            <li class="dropdown dropdown-inverse pull-left">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-reorder"></i></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Action</a></li>
                </ul>
            </li>
                <li class="pull-left">
                    <a href="#aaa"><i class="eicon-traffic-cone"></i></a>
                </li>
            </ul>
            <div class="float-clear"></div>
        </div><!-- well -->
        <section class="widget float-clear">
            <div class="btn-group pull-right dropdown-inverse">
                <button class="btn btn-small dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-caret-down"></i>
                </button>
                <ul class="dropdown-menu">
                    <li class="disabled"><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-submenu pull-left">
                        <a tabindex="-1" href="#">More options</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Action</a></li>
                            <li class="dropdown-submenu">
                                <a tabindex="-1" href="#">More options</a>
                                <ul class="dropdown-menu pull-right">
                                    <li><a href="#">Action</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Action</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <table class="table table-middle table-striped table-hover">
                <thead>
                <tr>
                    <th>
                            <input type="checkbox" id="checkbox-1" class="uniform">
                    </th>
                    <th>Username</th>
                    <th>First Name</th>
                    <th class="hidden-phone-portrait">Last Name</th>
                    <th>Email</th>
                    <th class="hidden-phone-portrait">Group</th>
                    <th class="hidden-phone-portrait">Status</th>
                    <th>Progress</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
            <#list users as user>
                <tr>
                    <td><input type="checkbox" id="checkbox-1" class="uniform"></td>
                    <td>${user.username}</td>
                    <td>${user.userProfile.firstName?if_exists}</td>
                    <td class="hidden-phone-portrait">${user.userProfile.lastName?if_exists}</td>
                    <td>${user.userProfile.email?if_exists}</td>
                    <td class="hidden-phone-portrait">${user.userProfile.userGroup.groupName?if_exists}</td>
                    <td class="hidden-phone-portrait"><span class="badge badge-info">Active</span></td>
                    <td>
                        <div class="progress no-margin">
                            <div class="bar" style="width: 60%;">60%</div>
                        </div>
                    </td>
                    <td>
                        <ul class="nav-icon">
                        <li class="dropdown pull-right">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="icon-cog"></i>
                            </a>
                            <ul class="dropdown-menu pull-right">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li class="dropdown-submenu pull-left">
                                    <a tabindex="-1" href="#">More options</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Action</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown dropdown-inverse pull-left">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="icon-off"></i>
                            </a>
                            <ul class="dropdown-menu pull-right">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li class="dropdown-submenu">
                                    <a tabindex="-1" href="#">More options</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Action</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        </ul>
                    </td>
                </tr>
            </#list>
                <tr>
                    <td><input type="checkbox" id="checkbox-1" class="uniform"></td>
                    <td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td>
                </tr>
                <tr class="no-hover">
                    <td></td>
                    <td colspan="8">
                        <div class="span5">
                        <table class="table table-striped table-cell-hover table-condensed margin-bottom">
                            <tbody>
                            <tr>
                                <th>Name</th>
                                <td>minwoo</td>
                            </tr>
                            <tr>
                                <th>State</th>
                                <td>Runnging</td>
                            </tr>
                            <tr>
                                <th>Progress</th>
                                <td>
                                    <div class="progress progress-danger no-margin">
                                        <div class="bar" style="width: 90%;">90%</div>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="progress no-margin">
                            <div class="bar" style="width: 60%;">60%</div>
                        </div>
                        </div>
                    </td>
                </tr>
                <tr class="warning">
                    <td><input type="checkbox" id="checkbox-1" class="uniform"></td>
                    <td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td>
                </tr>
                <tr class="info">
                    <td><input type="checkbox" id="checkbox-1" class="uniform"></td>
                    <td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td>
                </tr>
                <tr class="error">
                    <td><input type="checkbox" id="checkbox-1" class="uniform"></td>
                    <td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td>
                </tr>
                <tr class="success">
                    <td><input type="checkbox" id="checkbox-1" class="uniform"></td>
                    <td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td>
                </tr>
                <tr>
                    <td><input type="checkbox" id="checkbox-1" class="uniform"></td>
                    <td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td>
                </tr>
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
        <section class="widget">
            <div class="body">
                <ul id="myTab" class="nav nav-tabs">
                    <li><a href="#home" data-toggle="tab">Home</a></li>
                    <li class="active"><a href="#profile" data-toggle="tab">Profile</a></li>
                    <li class="dropdown dropdown-inverse">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#dropdown3" data-toggle="tab">@fat</a></li>
                            <li><a href="#dropdown4" data-toggle="tab">@mdo</a></li>
                        </ul>
                    </li>
                </ul>
                <div id="myTabContent" class="tab-content" >
                    <div class="tab-pane fade" id="home">
                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                    </div>
                    <div class="tab-pane fade in active" id="profile">
                        <p>Light Blue - is a next generation admin template based on the latest Metro design. There are few reasons we want to tell you, why we have created it:
                            We didn't like the darkness of most of admin templates, so we created this light one. We didn't like the high contrast of most of admin templates, so we created this unobtrusive one.
                            We searched for a solution of how to make widgets look like real widgets, so we decided that deep background - is what makes widgets look real.</p>
                    </div>
                    <div class="tab-pane fade" id="dropdown3">
                        <p>Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                    </div>
                    <div class="tab-pane fade" id="dropdown4">
                        <p>They sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            <h1>h1. Heading 1</h1>
            <h2>h2. Heading 2</h2>
            <h3>h3. Heading 3</h3>
            <h4>h4. Heading 4</h4>
            <h5>h5. Heading 5</h5>
            <h6>h6. Heading 6</h6>
            <blockquote>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
            </blockquote>
            <form>
                <fieldset>
                    <legend>Legend</legend>
                    <label>Label name</label>
                    <input type="text" placeholder="Type something…">
                    <span class="help-block">Example block-level help text here.</span>
                    <label class="checkbox">
                        <input type="checkbox"> Check me out
                    </label>
                    <button type="submit" class="btn">Submit</button>
                </fieldset>
            </form>
            <form class="form-search">
                <input type="text" class="input-medium search-query">
                <button type="submit" class="btn">Search</button>
            </form>
        </section>
        <section class="widget">
            <div class="alert">
                <button type="button" class="close" data-dismiss="alert">&times;</button>
                <strong>Warning!</strong> Best check yo self, you're not looking too good.
            </div>
            <div class="alert alert-error">
                <strong>Warning!</strong> 명령이 실패했습니다. 다시 시도하세요.
            </div>
            <div class="alert alert-success">
                <strong>Warning!</strong> Best check yo self, you're not looking too good.
            </div>
            <div class="alert alert-info">
                <strong>Warning!</strong> Best check yo self, you're not looking too good. 명령이 성공적으로 실행되었습니다.
            </div>
            <div class="progress progress-striped">
                <div class="bar" style="width: 20%;"></div>
            </div>
            <div class="progress">
                <div class="bar bar-info" style="width: 10%;"></div>
                <div class="bar bar-success" style="width: 35%;"></div>
                <div class="bar bar-warning" style="width: 20%;"></div>
                <div class="bar bar-danger" style="width: 10%;"></div>
            </div>
            <div class="btn-group dropdown-inverse">
                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                    Action
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Home</a></li>
                </ul>
            </div>
            <div class="btn-group dropup dropdown-inverse">
                <button class="btn">Dropup</button>
                <button class="btn dropdown-toggle" data-toggle="dropdown">
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Home</a></li>
                </ul>
            </div>
        </section>
        <section class="widget">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#">Home</a>
                </li>
                <li><a href="#">Home</a></li>
                <li><a href="#">Home</a></li>
            </ul>
            <ul class="nav nav-pills">
                <li class="active">
                    <a href="#">Home</a>
                </li>
                <li><a href="#">Home</a></li>
                <li><a href="#">Home</a></li>
            </ul>
            <ul class="nav nav-tabs nav-stacked">
                <li class="active">
                    <a href="#">Home</a>
                </li>
                <li><a href="#">Home</a></li>
                <li><a href="#">Home</a></li>
            </ul>
            <ul class="nav nav-pills nav-stacked">
                <li class="active">
                    <a href="#">Home</a>
                </li>
                <li><a href="#">Home</a></li>
                <li><a href="#">Home</a></li>
            </ul>

            <div class="navbar navbar-inverse navbar-fixed-bottom">
                <div class="navbar-inner">
                    <div class="container">
                        <ul class="nav">
                            <li><a href="#">Home</a></li>

                            <li><a href="#">Home</a></li>

                            <li><a href="#">Home</a></li>

                            <li class="dropdown dropdown-inverse">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Account
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Home</a></li>
                                </ul>
                            </li>
                            <li>
                                <form class="navbar-form pull-left">
                                    <input type="text" class="span2">
                                    <button type="submit" class="btn">Submit</button>
                                </form>
                            </li>
                            <li>
                                <form class="navbar-search pull-left">
                                    <input type="text" class="search-query" placeholder="Search">
                                </form>
                            </li>
                            <li class="divider-vertical"></li>
                            <li><a href="#">Home</a></li>

                        </ul>

                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<!-- End of body -->
<#include "./layout/simple/footer.ftl">

<!-- basic application js-->
<script src="${rc.contextPath}/static/js/app.js"></script>
<script src="${rc.contextPath}/static/js/settings.js"></script>

<script src="${rc.contextPath}/static/lib/uniform/js/jquery.uniform.js"></script>
<script type="text/javascript">
    $(function(){
        $("input.uniform").uniform();
    });
</script>

<#include "./layout/simple/template.ftl">