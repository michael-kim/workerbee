<#assign sidebar="hadoop", subbar="jobtasks">
<#include "../layout/simple/header.ftl">

<!-- Start of body -->

<div class="row-fluid">
    <div class="span12">
        <h2 class="page-title">Hadoop map task list for job_201307221055_0002 on <a href="${rc.contextPath}/services/hadoop/jobtracker">localhost</a></h2>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            <header>
                <h4><i class="icon-file-alt"></i> All Tasks</h4>
            </header>
            <div id="body" class="body padding-bottom">
                <table id="root_table" class="table table-striped no-margin">
                    <thead>
                    <tr>
                        <td align="center">Task</td><td>Complete</td><td>Status</td>
                        <td>Start Time</td>
                        <td>Finish Time</td>
                        <td>Errors</td>
                        <td>Counters</td>
                    </tr>
                    </thead>
                    <tbody>
                    <#list 0..5 as i>
                    <tr>
                        <td>
                            <a href="${rc.contextPath}/services/hadoop/taskdetails?tipid=task_201307221055_0002_m_000000">task_201307221055_0002_m_00000${i}</a>
                        </td>
                        <td><div class="progress no-margin"><div class="bar" style="width:100%">100.00%</div></td>
                        <td></td>
                        <td>22-7월-2013 14:51:18<br/></td>
                        <td>22-7월-2013 14:51:26 (8sec)<br/></td>
                        <td></td>
                        <td><a href="${rc.contextPath}/services/hadoop/taskstats?tipid=task_201307221055_0002_m_000000">12</a></td>
                    </tr>
                    </#list>
                    </tbody>
                </table>
            </div>
        </section>
    </div>
</div>

<!-- End of body -->
<#include "../layout/simple/footer.ftl">

<#include "../layout/simple/template.ftl">