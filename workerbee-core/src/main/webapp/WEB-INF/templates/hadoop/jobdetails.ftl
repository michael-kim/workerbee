<#assign sidebar="hadoop", subbar="jobdetails">
<#include "../layout/simple/header.ftl">

<!-- Start of body -->

<div class="row-fluid">
    <div class="span12">
        <h2 class="page-title">Hadoop Map/Reduce Administration <a href="${rc.contextPath}/services/hadoop/jobtracker">localhost</a></h2>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            <div class="body">
                <table class="table table-striped no-margin">
                    <tbody class="th-text-right">
                    <tr>
                        <th style="wdith:100px">User</th>
                        <td>julingks</td>
                    </tr>
                    <tr>
                        <th>Job Name</th>
                        <td>word count</td>
                    </tr>
                    <tr>
                        <th>Job File</th>
                        <td><a href="${rc.contextPath}/services/hadoop/jobconf">hdfs://localhost:9000/tmp/hadoop-julingks/mapred/staging/julingks/.staging/job_201307221055_0001/job.xml</a></td>
                    </tr>
                    <tr>
                        <th>Submit Host</th>
                        <td>Minwooui-MacBook-Air-2.local</td>
                    </tr>
                    <tr>
                        <th>Submit Host Address</th>
                        <td>192.168.31.236</td>
                    </tr>
                    <tr>
                        <th>Job-ACLs</th>
                        <td>201307181614</td>
                    </tr>
                    <tr>
                        <th>Job Setup</th>
                        <td><a href="#">Successful</a></td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td>Killed</td>
                    </tr>
                    <tr>
                        <th>Failure Info</th>
                        <td>NA</td>
                    </tr>
                    <tr>
                        <th>Started at</th>
                        <td>Mon Jul 22 11:01:08 KST 2013</td>
                    </tr>
                    <tr>
                        <th>Killed at</th>
                        <td>Mon Jul 22 11:01:40 KST 2013</td>
                    </tr>
                    <tr>
                        <th>Killed in</th>
                        <td>31sec</td>
                    </tr>
                    <tr>
                        <th>Job Cleanup</th>
                        <td><a href="#">Successful</a></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </section>
    </div>
</div>
<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            <div class="body">
                <table class="table table-striped no-margin">
                    <thead>
                    <tr>
                        <th>Kind</th>
                        <th>% Complete</th>
                        <th>Num Tasks</th>
                        <th>Pending</th>
                        <th>Running</th>
                        <th>Complete</th>
                        <th>Killed</th>
                        <th><a href="#">Failed/Killed
                            Task Attempts</a>
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><a href="${rc.contextPath}/services/hadoop/jobtasks">map</a></td>
                        <td>100.00%</td>
                        <td>5</td>
                        <td>0</td>
                        <td>0</td>
                        <td><a href="${rc.contextPath}/services/hadoop/jobtasks">5</a></td>
                        <td>0</td>
                        <td>0 / 0</td>
                    </tr>
                    <tr>
                        <td><a href="${rc.contextPath}/services/hadoop/jobtasks">reduce</a></td>
                        <td>100.00%</td>
                        <td>1</td>
                        <td>0</td>
                        <td>0</td>
                        <td><a href="${rc.contextPath}/services/hadoop/jobtasks">1</a></td>
                        <td>0</td>
                        <td>0 / 0</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </section>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            <table class="table table-middle table-bordered table-bordered-black">
                <thead>
                    <tr>
                        <th></th>
                        <th>Counter</th>
                        <th>Map</th>
                        <th>Reduce</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                <tr>

                    <td rowspan="7">
                        Job Counters </td>

                    <td>SLOTS_MILLIS_MAPS</td>
                    <td align="right">0</td>
                    <td align="right">0</td>
                    <td align="right">38,035</td>
                </tr>

                <tr>

                    <td>Launched reduce tasks</td>
                    <td align="right">0</td>
                    <td align="right">0</td>
                    <td align="right">1</td>
                </tr>

                <tr>

                    <td>Total time spent by all reduces waiting after reserving slots (ms)</td>
                    <td align="right">0</td>
                    <td align="right">0</td>
                    <td align="right">0</td>
                </tr>

                <tr>

                    <td>Total time spent by all maps waiting after reserving slots (ms)</td>
                    <td align="right">0</td>
                    <td align="right">0</td>
                    <td align="right">0</td>
                </tr>

                <tr>

                    <td>Launched map tasks</td>
                    <td align="right">0</td>
                    <td align="right">0</td>
                    <td align="right">5</td>
                </tr>

                <tr>

                    <td>Data-local map tasks</td>
                    <td align="right">0</td>
                    <td align="right">0</td>
                    <td align="right">5</td>
                </tr>

                <tr>

                    <td>SLOTS_MILLIS_REDUCES</td>
                    <td align="right">0</td>
                    <td align="right">0</td>
                    <td align="right">13,726</td>
                </tr>

                <tr>

                    <td rowspan="1">
                        File Output Format Counters </td>

                    <td>Bytes Written</td>
                    <td align="right">0</td>
                    <td align="right">175,500</td>
                    <td align="right">175,500</td>
                </tr>

                <tr>

                    <td rowspan="1">
                        File Input Format Counters </td>

                    <td>Bytes Read</td>
                    <td align="right">483,713</td>
                    <td align="right">0</td>
                    <td align="right">483,713</td>
                </tr>

                <tr>

                    <td rowspan="4">
                        FileSystemCounters</td>

                    <td>FILE_BYTES_READ</td>
                    <td align="right">0</td>
                    <td align="right">233,108</td>
                    <td align="right">233,108</td>
                </tr>

                <tr>

                    <td>HDFS_BYTES_READ</td>
                    <td align="right">484,343</td>
                    <td align="right">0</td>
                    <td align="right">484,343</td>
                </tr>

                <tr>

                    <td>FILE_BYTES_WRITTEN</td>
                    <td align="right">498,467</td>
                    <td align="right">286,058</td>
                    <td align="right">784,525</td>
                </tr>

                <tr>

                    <td>HDFS_BYTES_WRITTEN</td>
                    <td align="right">0</td>
                    <td align="right">175,500</td>
                    <td align="right">175,500</td>
                </tr>

                <tr>

                    <td rowspan="13">
                        Map-Reduce Framework</td>

                    <td>Map output materialized bytes</td>
                    <td align="right">233,132</td>
                    <td align="right">0</td>
                    <td align="right">233,132</td>
                </tr>

                <tr>

                    <td>Map input records</td>
                    <td align="right">12,120</td>
                    <td align="right">0</td>
                    <td align="right">12,120</td>
                </tr>

                <tr>

                    <td>Reduce shuffle bytes</td>
                    <td align="right">0</td>
                    <td align="right">233,132</td>
                    <td align="right">233,132</td>
                </tr>

                <tr>

                    <td>Spilled Records</td>
                    <td align="right">13,831</td>
                    <td align="right">13,831</td>
                    <td align="right">27,662</td>
                </tr>

                <tr>

                    <td>Map output bytes</td>
                    <td align="right">696,306</td>
                    <td align="right">0</td>
                    <td align="right">696,306</td>
                </tr>

                <tr>

                    <td>Total committed heap usage (bytes)</td>
                    <td align="right">923,095,040</td>
                    <td align="right">85,000,192</td>
                    <td align="right">1,008,095,232</td>
                </tr>

                <tr>

                    <td>Combine input records</td>
                    <td align="right">62,218</td>
                    <td align="right">0</td>
                    <td align="right">62,218</td>
                </tr>

                <tr>

                    <td>SPLIT_RAW_BYTES</td>
                    <td align="right">630</td>
                    <td align="right">0</td>
                    <td align="right">630</td>
                </tr>

                <tr>

                    <td>Reduce input records</td>
                    <td align="right">0</td>
                    <td align="right">13,831</td>
                    <td align="right">13,831</td>
                </tr>

                <tr>

                    <td>Reduce input groups</td>
                    <td align="right">0</td>
                    <td align="right">13,467</td>
                    <td align="right">13,467</td>
                </tr>

                <tr>

                    <td>Combine output records</td>
                    <td align="right">13,831</td>
                    <td align="right">0</td>
                    <td align="right">13,831</td>
                </tr>

                <tr>

                    <td>Reduce output records</td>
                    <td align="right">0</td>
                    <td align="right">13,467</td>
                    <td align="right">13,467</td>
                </tr>

                <tr>

                    <td>Map output records</td>
                    <td align="right">62,218</td>
                    <td align="right">0</td>
                    <td align="right">62,218</td>
                </tr>
                </tbody>
            </table>
        </section>
    </div>
</div>

<!-- End of body -->
<#include "../layout/simple/footer.ftl">

<#include "../layout/simple/template.ftl">