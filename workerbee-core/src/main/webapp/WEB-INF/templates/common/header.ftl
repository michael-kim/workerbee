<!--header.ftl-->
<!DOCTYPE html>
<title>Workerbee</title>
<body>

<h1>Workerbee</h1>
<ul>
    <li><a href="${rc.getContextPath()}/">Home</a></li>
    <li><a href="#">Sign in</a></li>
    <li><a href="${rc.getContextPath()}/j_spring_security_logout">Sign Out</a></li>
    <li><a href="#">Register</a></li>
    <li><a href="#">Forget password</a></li>
    <li>Admin
        <ul>
            <li><a href="${rc.getContextPath()}/user/list">List</a> - Search, Activate, Deactivate</li>
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