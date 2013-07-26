<#assign sidebar="hadoop", subbar="dfshealth">
<#include "../layout/simple/header.ftl">

<!-- Start of body -->

<div class="row-fluid">
    <div class="span12">
        <h2 class="page-title">NameNode 'localhost:9000'</h2>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            <div id="body" class="body padding-bottom">
                <ul>
                    <li>Started: 	 Mon Jul 22 10:55:18 KST 2013</li>
                    <li>Version: 	 1.1.2, r1440782</li>
                    <li>Compiled: 	 Thu Jan 31 02:03:24 UTC 2013 by hortonfo</li>
                    <li>Upgrades: 	 There are no upgrades in progress.</li>
                </ul>
                <br />
                <a href="#">Browse the filesystem</a>
                <br />
                <a href="#">Namenode Logs</a>
            </div>
        </section>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            <header>
                <h4>Cluster Summary</h4>
            </header>
            <div class="body">
                24 files and directories, 18 blocks = 42 total. Heap Size is 81.06 MB / 991.69 MB (8%)
            </div>
            <div class="body padding-bottom">
                <table class="table table-striped">
                    <tbody>
                        <tr><td style="width:300px">Configured Capacity</td><td>112.2 GB</td></tr>
                        <tr><td>DFS Used</td><td>784 KB</td></tr>
                        <tr><td>Non DFS Used</td><td>85.78 GB</td></tr>
                        <tr><td>DFS Remaining</td><td>26.42 GB</td></tr>
                        <tr><td>DFS Used%</td><td>0 %</td></tr>
                        <tr><td>DFS Remaining%</td><td>23.55 %</td></tr>
                        <tr><td><a href="dfsnodelist.jsp?whatNodes=LIVE">Live Nodes</a></td><td>1</td></tr>
                        <tr><td><a href="dfsnodelist.jsp?whatNodes=DEAD">Dead Nodes</a></td><td>0</td></tr>
                        <tr><td><a href="dfsnodelist.jsp?whatNodes=DECOMMISSIONING">Decommissioning Nodes</a></td><td>0</td></tr>
                        <tr><td>Number of Under-Replicated Blocks</td><td> 0</td></tr>
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
                <h4>NameNode Storage</h4>
            </header>
            <div class="body">
                <table class="table table-striped no-margin">
                    <thead><tr><td><b>Storage Directory</b></td><td><b>Type</b></td><td><b>State</b></td></tr></thead>
                    <tbody>
                       <tr><td>/tmp/hadoop-julingks/dfs/name</td><td>IMAGE_AND_EDITS</td><td>Active</td></tr>
                    </tbody>
                </table>
            </div>
        </section>
    </div>
</div>

<!-- End of body -->
<#include "../layout/simple/footer.ftl">

<#include "../layout/simple/template.ftl">