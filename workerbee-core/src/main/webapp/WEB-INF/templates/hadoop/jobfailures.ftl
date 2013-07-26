<#assign sidebar="hadoop", subbar="jobfailures">
<#include "../layout/simple/header.ftl">

<!-- Start of body -->

<div class="row-fluid">
    <div class="span12">
        <h2 class="page-title">Hadoop job_201307221055_0002 failures on <a href="${rc.contextPath}/services/hadoop/jobtracker">localhost</a></h2>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            <div id="body" class="body padding-bottom">
                <table id="root_table" class="table table-middle table-striped no-margin">
                    <thead>
                    <tr>
                        <th>Attempt</th>
                        <th>Task</th>
                        <th>Machine</th>
                        <th>Status</th>
                        <th>Errors</th>
                        <th>Logs</th>
                    </tr>
                    </thead>
                </table>
            </div>
        </section>
    </div>
</div>


<!-- End of body -->
<#include "../layout/simple/footer.ftl">

<#include "../layout/simple/template.ftl">