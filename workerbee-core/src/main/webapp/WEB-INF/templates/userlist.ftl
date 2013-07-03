<#include "./common/header.ftl">

<h1>User List</h1>

<ul>
    <#list users as user>
    <li>
            ${user.username}
            <ul>
                <li> name : ${user.userProfile.firstName?if_exists} ${user.userProfile.lastName?if_exists}</li>
                <li> group : ${user.userProfile.userGroup.groupName?if_exists}</li>
                <li> email : ${user.userProfile.email?if_exists}</li>
            </ul>
    </li>
    </#list>
</ul>

<#include "./common/footer.ftl">