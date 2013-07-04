<#include "./common/header.ftl">

<ul>
    <li><a href="${rc.contextPath}/">Home</a></li>
    <li><a href="${rc.contextPath}/index">Index</a></li>
    <li><a href="${rc.contextPath}/empty">Empty</a></li>
    <li><a href="${rc.contextPath}/login">Sign in</a></li>
    <li><a href="${rc.contextPath}/j_spring_security_logout">Sign Out</a></li>
    <li><a href="${rc.contextPath}/error/404">Error 404</a></li>
    <li><a href="#">Register</a></li>
    <li><a href="#">Forget password</a></li>
    <li>Admin
        <ul>
            <li><a href="${rc.contextPath}/user/list">List</a> - Search, Activate, Deactivate</li>
            <li><a href="#">Add User</a></li>
            <li><a href="#">Edit User Profile</a></li>
            <li><a href="#">Delete User</a></li>
            <li><a href="#">Grant/Rovoke Privileges</a></li>
            <li><a href="#">User Statistics</a></li>
            <li><a href="#">Settings</a></li>
        </ul>
    </li>
    <li>Hadoop
        <ul>
            <li><a href="">Register Hadoop Cluster</a></li>
            <li><a href="">Unregister Hadoop Cluster</a></li>
            <li><a href="">Job Tracker</a></li>
            <li><a href="">HDFS Browser</a></li>
        </ul>
    </li>
    <li>Hive
        <ul>
            <li><a href="#">Execute Query</a></li>
            <li><a href="#">History</a></li>
            <li><a href="#">Statistics</a></li>
        </ul>
    </li>
</ul>
<h1>Index</h1>
<p>
Welcome Home!!
</p>
<p>
    Hello World!
</p>


<#include "./common/footer.ftl">