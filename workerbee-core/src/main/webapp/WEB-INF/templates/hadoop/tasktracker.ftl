<#assign sidebar="hadoop", subbar="tasktracker">
<#include "../layout/simple/header.ftl">

<!-- Start of body -->

<div class="row-fluid">
    <div class="span12">
        <h2 class="page-title">tracker_192.168.31.236:localhost/127.0.0.1:49617 Task Tracker Status</h2>
    </div>
</div>
<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            Version: 1.1.2, r1440782
            Compiled: Thu Jan 31 02:03:24 UTC 2013 by hortonfo
        </section>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            <header>
                <h4>Running tasks</h4>
            </header>
            <div id="body" class="body padding-bottom">
                <table class="table table-middle table-striped no-margin">
                    <thead>
                        <tr><td align="center">Task Attempts</td><td>Status</td><td>Progress</td><td>Errors</td></tr>
                    </thead>
                    <tbody>
                        <tr><td>attempt_201307221055_0003_m_000002_0</td><td>RUNNING</td><td>0.00%</td><td></td></tr>
                        <tr><td>attempt_201307221055_0003_r_000000_0</td><td>RUNNING</td><td>0.00%</td><td></td></tr>
                        <tr><td>attempt_201307221055_0003_m_000003_0</td><td>RUNNING</td><td>0.00%</td><td></td></tr>
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
                <h4>Non-Running Tasks</h4>
            </header>
            <div id="body" class="body padding-bottom">
                <table class="table table-middle table-striped no-margin">
                    <thead>
                        <tr><td align="center">Task Attempts</td><td>Status</td></tr>
                    </thead>
                    <tbody>
                    <tr><td>attempt_201307221055_0003_m_000001_0</td><td>SUCCEEDED</td></tr>
                    <tr><td>attempt_201307221055_0003_m_000000_0</td><td>SUCCEEDED</td></tr>
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
                <h4>Tasks from Running Jobs</h4>
            </header>
            <div id="body" class="body padding-bottom">
                <table class="table table-middle table-striped no-margin">
                    <thead>
                    <tr><td align="center">Task Attempts</td><td>Status</td>
                        <td>Progress</td><td>Errors</td></tr>
                    </thead>
                    <tbody>
                    <tr><td>attempt_201307221055_0003_m_000001_0</td><td>SUCCEEDED</td><td>100.00%</td><td></td></tr>
                    <tr><td>attempt_201307221055_0003_m_000003_0</td><td>RUNNING</td><td>0.00%</td><td></td></tr>
                    <tr><td>attempt_201307221055_0003_r_000000_0</td><td>RUNNING</td><td>0.00%</td><td></td></tr>
                    <tr><td>attempt_201307221055_0003_m_000000_0</td><td>SUCCEEDED</td><td>100.00%</td><td></td></tr>
                    <tr><td>attempt_201307221055_0003_m_000002_0</td><td>RUNNING</td><td>0.00%</td><td></td></tr>
                    </tbody>
                 </table>
            </div>
        </section>
    </div>
</div>



<!-- End of body -->
<#include "../layout/simple/footer.ftl">

<#include "../layout/simple/template.ftl">