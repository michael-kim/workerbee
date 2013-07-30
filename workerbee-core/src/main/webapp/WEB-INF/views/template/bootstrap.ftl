<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Flat UI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Loading Bootstrap -->
    <link href="../../../fui/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="../../../fui/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="font-awesome-3.2.1/font-awesome.min.css" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="../../../fui/css/flat-ui.css" rel="stylesheet">

    <link rel="shortcut icon" href="../../../fui/images/favicon.ico">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
    <script src="../../../fui/js/html5shiv.js"></script>
    <![endif]-->
</head>
<body>

<div class="container">
    <div class="row">
        <div class="span12">
            <div class="navbar margin-top">
                <div class="navbar-inner">
                    <div class="container">
                        <span class="brand">시작하기</span>
                    </div>
                </div>
            </div>
       </div>
    </div>
    <div     class="row">
        <div class="span3">
            <ul class="nav nav-list nav-list-vivid">
                <li><a href="#fakelink">설정 파일 불러오기</a></li>
                <li><a href="#fakelink">데이터베이스 설정</a></li>
                <li><a href="#fakelink">데이터베이스 설정</a></li>
                <li class="active"><a href="#fakelink">설정 파일 등록</a></li>
            </ul>
        </div>
        <div class="span9">
            <form id="tab">
                <legend>데이터베이스</legend>
                <label>접속 URL</label>
                <input type="text" value="mysql://localhost/testdb" class="input-xlarge span5">
                <label>DB 사용자</label>
                <input type="text"  value="root" class="input-xlarge">
                <label>DB 비밀번호</label>
                <input type="password" value="password" class="input-xlarge">
                <div class="form-actions">
                    <button class="btn">이전</button>
                    <button class="btn btn-primary">다음</button>
                </div>
            </form>
            <form>
                <legend>환경변수</legend>
                <label>설정 파일 디렉토리</label>
                <input type="text" value="/path/to/dir" class="input-xlarge span5">
                <label>로그 디렉토리</label>
                <input type="text" value="/path/to/dir" class="input-xlarge span5">
                <label>스크래치 디렉토리</label>
                <input type="text" value="/path/to/dir" class="input-xlarge span5">
                <div class="form-actions">
                    <button class="btn">이전</button>
                    <button class="btn btn-primary">다음</button>
                </div>
            </form>
            <form>
                <legend class="no-margin">workerbee-site.xml</legend>
                <div class="control-group">
                    <label>workerbee.test.enabled</label>
                    <input type="text" value="/path/to/dir" class="span6"/>
                </div>
                <div class="control-group">
                    <label>workerbee.hostmanger.heartbeat</label>
                    <input type="text" value="10" class="span6"/>
                    <span class="tip-block">호스트관리자 hearbeat 간격</span>
                </div>
                <div class="form-actions">
                    <button class="btn">이전</button>
                    <button class="btn btn-primary">다음</button>
                </div>®
            </form>
        </div>
    </div>
</div>
</div>
<!-- /.container -->


<!-- Load JS here for greater good =============================-->
<script src="../../../fui/js/jquery-1.8.3.min.js"></script>
<script src="../../../fui/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="../../../fui/js/jquery.ui.touch-punch.min.js"></script>
<script src="../../../fui/js/bootstrap.min.js"></script>
<script src="../../../fui/js/bootstrap-select.js"></script>
<script src="../../../fui/js/bootstrap-switch.js"></script>
<script src="../../../fui/js/flatui-checkbox.js"></script>
<script src="../../../fui/js/flatui-radio.js"></script>
<script src="../../../fui/js/jquery.tagsinput.js"></script>
<script src="../../../fui/js/jquery.placeholder.js"></script>
<script src="../../../fui/js/jquery.stacktable.js"></script>

<script type="text/javascript">
    $(function(){
        $('#i_username').focus();
    });
</script>
</body>
</html>
