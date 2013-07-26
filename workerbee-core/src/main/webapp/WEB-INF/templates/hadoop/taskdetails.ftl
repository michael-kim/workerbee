<#assign sidebar="hadoop", subbar="taskdetails">
<#include "../layout/simple/header.ftl">

<!-- Start of body -->

<div class="row-fluid">
    <div class="span12">
        <h2 class="page-title">Job job_201307221055_0002</h2>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            <header>
                <h4><i class="icon-file-alt"></i> All Task Attempts</h4>
            </header>
            <div id="body" class="body padding-bottom">
                <table id="root_table" class="table table-middle table-striped no-margin">
                    <thead>
                    <tr>
                        <th>Task Attempts</th>
                        <th>Machine</th>
                        <th>Status</th>
                        <th>Progress</th>
                        <th>Start Time</th>
                        <th>Finish Time</th>
                        <th>Errors</th>
                        <th>Task Logs</th>
                        <th>Counters</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <#list 0..5 as i>
                    <tr>
                        <td>attempt_201307221055_0002_m_000000_0</td>
                        <td><a href="http://192.168.31.236:50060">/default-rack/192.168.31.236</a></td>
                        <td><span class="badge badge-success">SUCCEEDED</span></td>
                        <td><div class="progress no-margin"><div class="bar" style="width:100%"></div><div class="text">100%</div></td>
                        <td>22-7월-2013 14:51:18</td>
                        <td>22-7월-2013 14:51:26 (8sec)</td>
                        <td></td>
                        <td>
                            <a href="http://192.168.31.236:50060/tasklog?attemptid=attempt_201307221055_0002_m_000000_0&start=-4097">Last 4KB</a><br/>
                            <a href="http://192.168.31.236:50060/tasklog?attemptid=attempt_201307221055_0002_m_000000_0&start=-8193">Last 8KB</a><br/>
                            <a href="http://192.168.31.236:50060/tasklog?attemptid=attempt_201307221055_0002_m_000000_0&all=true">All</a><br/>
                        </td>
                        <td><a href="${rc.contextPath}/services/hadoop/taskstats?attemptid=attempt_201307221055_0002_m_000000_0">12</a></td>
                        <td></td>
                    </tr>
                    </#list>
                    </tbody>
                </table>
            </div>
        </section>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            <header>
                <h4><i class="icon-file-alt"></i> Input Split Locations</h4>
            </header>
            <div id="body" class="body padding-bottom">
                <table class="table table-striped no-margin">
                    <tbody>
                    <tr>
                        <td>/default-rack/192.168.31.236</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </section>
    </div>
</div>


<!-- End of body -->
<#include "../layout/simple/footer.ftl">

<#include "../layout/simple/template.ftl">