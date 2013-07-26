<#assign sidebar="hadoop", subbar="machines">
<#include "../layout/simple/header.ftl">

<!-- Start of body -->

<div class="row-fluid">
    <div class="span12">
        <h2 class="page-title">Hadoop Machine List <a href="${rc.contextPath}/services/hadoop/jobtracker">localhost</a></h2>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            <header>
                <h4><i class="icon-file-alt"></i> Active Task Trackers</h4>
            </header>
            <div id="body" class="body padding-bottom">
                <table id="root_table" class="table table-fixed table-striped no-margin">
                    <thead>
                    <tr>
                        <th style="width:150px">Name</th>
                        <th style="width:100px">Host</th>
                        <th># running tasks</th>
                        <th>Max Map Tasks</th>
                        <th>Max Reduce Tasks</th>
                        <th>Task Failures</th>
                        <th>Directory Failures</th>
                        <th>Node Health Status</th>
                        <th>Seconds Since Node Last Healthy</th>
                        <th>Total Tasks Since Start</th>
                        <th>Succeeded Tasks Since Start</th>
                        <th>Total Tasks Last Day</th>
                        <th>Succeeded Tasks Last Day</th>
                        <th>Total Tasks Last Hour</th>
                        <th>Succeeded Tasks Last Hour</th>
                        <th>Seconds since heartbeat</th>
                    </tr>
                    </thead>
                    <tbody>
                    <#list 1..50 as i>
                    <tr>
                        <td class="text-ellipsis">tracker_192.168.31.236:localhost/127.0.0.1:60644</td>
                        <td class="text-ellipsis">192.168.31.236</td>
                        <td>0</td>
                        <td>2</td>
                        <td>2</td>
                        <td>0</td>
                        <td>0</td>
                        <td>N/A</td>
                        <td>0</td>
                        <td>8</td>
                        <td>8</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
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
<script type="text/javascript">
        $('#body').slimScrollHorizontal({
            width: 'auto',
            size:'10px',
            alwaysVisible:true,
            railVisible:true
        });
</script>

<#include "../layout/simple/template.ftl">