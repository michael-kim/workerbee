<#assign sidebar="hadoop", subbar="jobconf">
<#include "../layout/simple/header.ftl">

<!-- Start of body -->

<div class="row-fluid">
    <div class="span12">
        <h2 class="page-title">Job Configuration: JobId - job_201307221055_0002</h2>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            <div class="body">
                <table class="table table-striped no-margin">
                    <thead>
                        <th class="text-right">Name</th>
                        <th>Value</th>
                    </thead>
                    <tbody class="td-text-break th-text-right">
                    <#noparse>
                    <tr>
                        <th>fs.s3n.impl</th><td>org.apache.hadoop.fs.s3native.NativeS3FileSystem</td>
                    </tr>
                    <tr>
                        <th>mapreduce.job.counters.max</th><td>120</td>
                    </tr>
                    <tr>
                        <th>mapred.task.cache.levels</th><td>2</td>
                    </tr>
                    <tr>
                        <th>dfs.client.use.datanode.hostname</th><td>false</td>
                    </tr>
                    <tr>
                        <th>hadoop.tmp.dir</th><td>/tmp/hadoop-${user.name}</td>
                    </tr>
                    <tr>
                        <th>hadoop.native.lib</th><td>true</td>
                    </tr>
                    <tr>
                        <th>map.sort.class</th><td>org.apache.hadoop.util.QuickSort</td>
                    </tr>
                    <tr>
                        <th>dfs.namenode.decommission.nodes.per.interval</th><td>5</td>
                    </tr>
                    <tr>
                        <th>dfs.https.need.client.auth</th><td>false</td>
                    </tr>
                    <tr>
                        <th>ipc.client.idlethreshold</th><td>4000</td>
                    </tr>
                    <tr>
                        <th>dfs.datanode.data.dir.perm</th><td>755</td>
                    </tr>
                    <tr>
                        <th>mapred.system.dir</th><td>${hadoop.tmp.dir}/mapred/system</td>
                    </tr>
                    <tr>
                        <th>mapred.job.tracker.persist.jobstatus.hours</th><td>0</td>
                    </tr>
                    <tr>
                        <th>dfs.datanode.address</th><td>0.0.0.0:50010</td>
                    </tr>
                    <tr>
                        <th>dfs.namenode.logging.level</th><td>info</td>
                    </tr>
                    <tr>
                        <th>dfs.block.access.token.enable</th><td>false</td>
                    </tr>
                    <tr>
                        <th>io.skip.checksum.errors</th><td>false</td>
                    </tr>
                    <tr>
                        <th>fs.default.name</th><td>hdfs://localhost:9000</td>
                    </tr>
                    <tr>
                        <th>mapred.cluster.reduce.memory.mb</th><td>-1</td>
                    </tr>
                    <tr>
                        <th>mapred.reducer.new-api</th><td>true</td>
                    </tr>
                    <tr>
                        <th>mapred.child.tmp</th><td>./tmp</td>
                    </tr>
                    <tr>
                        <th>fs.har.impl.disable.cache</th><td>true</td>
                    </tr>
                    <tr>
                        <th>dfs.safemode.threshold.pct</th><td>0.999f</td>
                    </tr>
                    <tr>
                        <th>mapred.skip.reduce.max.skip.groups</th><td>0</td>
                    </tr>
                    <tr>
                        <th>dfs.namenode.handler.count</th><td>10</td>
                    </tr>
                    <tr>
                        <th>dfs.blockreport.initialDelay</th><td>0</td>
                    </tr>
                    <tr>
                        <th>mapred.heartbeats.in.second</th><td>100</td>
                    </tr>
                    <tr>
                        <th>mapred.tasktracker.dns.nameserver</th><td>default</td>
                    </tr>
                    <tr>
                        <th>io.sort.factor</th><td>10</td>
                    </tr>
                    <tr>
                        <th>mapred.task.timeout</th><td>600000</td>
                    </tr>
                    <tr>
                        <th>mapred.max.tracker.failures</th><td>4</td>
                    </tr>
                    <tr>
                        <th>hadoop.rpc.socket.factory.class.default</th><td>org.apache.hadoop.net.StandardSocketFactory</td>
                    </tr>
                    <tr>
                        <th>mapred.job.tracker.jobhistory.lru.cache.size</th><td>5</td>
                    </tr>
                    <tr>
                        <th>fs.hdfs.impl</th><td>org.apache.hadoop.hdfs.DistributedFileSystem</td>
                    </tr>
                    <tr>
                        <th>mapred.queue.default.acl-administer-jobs</th><td>*</td>
                    </tr>
                    <tr>
                        <th>mapred.output.key.class</th><td>org.apache.hadoop.io.Text</td>
                    </tr>
                    <tr>
                        <th>dfs.namenode.stale.datanode.interval</th><td>30000</td>
                    </tr>
                    <tr>
                        <th>dfs.block.access.key.update.interval</th><td>600</td>
                    </tr>
                    <tr>
                        <th>mapred.skip.map.auto.incr.proc.count</th><td>true</td>
                    </tr>
                    <tr>
                        <th>mapreduce.job.complete.cancel.delegation.tokens</th><td>true</td>
                    </tr>
                    <tr>
                        <th>io.mapfile.bloom.size</th><td>1048576</td>
                    </tr>
                    <tr>
                        <th>mapreduce.reduce.shuffle.connect.timeout</th><td>180000</td>
                    </tr>
                    <tr>
                        <th>dfs.safemode.extension</th><td>30000</td>
                    </tr>
                    <tr>
                        <th>mapred.jobtracker.blacklist.fault-timeout-window</th><td>180</td>
                    </tr>
                    <tr>
                        <th>tasktracker.http.threads</th><td>40</td>
                    </tr>
                    <tr>
                        <th>mapred.job.shuffle.merge.percent</th><td>0.66</td>
                    </tr>
                    <tr>
                        <th>fs.ftp.impl</th><td>org.apache.hadoop.fs.ftp.FTPFileSystem</td>
                    </tr>
                    <tr>
                        <th>user.name</th><td>julingks</td>
                    </tr>
                    <tr>
                        <th>dfs.namenode.kerberos.internal.spnego.principal</th><td>${dfs.web.authentication.kerberos.principal}</td>
                    </tr>
                    <tr>
                        <th>mapred.output.compress</th><td>false</td>
                    </tr>
                    <tr>
                        <th>io.bytes.per.checksum</th><td>512</td>
                    </tr>
                    <tr>
                        <th>mapred.combine.recordsBeforeProgress</th><td>10000</td>
                    </tr>
                    <tr>
                        <th>mapred.healthChecker.script.timeout</th><td>600000</td>
                    </tr>
                    <tr>
                        <th>topology.node.switch.mapping.impl</th><td>org.apache.hadoop.net.ScriptBasedMapping</td>
                    </tr>
                    <tr>
                        <th>dfs.https.server.keystore.resource</th><td>ssl-server.xml</td>
                    </tr>
                    <tr>
                        <th>mapred.reduce.slowstart.completed.maps</th><td>0.05</td>
                    </tr>
                    <tr>
                        <th>dfs.namenode.safemode.min.datanodes</th><td>0</td>
                    </tr>
                    <tr>
                        <th>mapred.reduce.max.attempts</th><td>4</td>
                    </tr>
                    <tr>
                        <th>mapreduce.ifile.readahead.bytes</th><td>4194304</td>
                    </tr>
                    <tr>
                        <th>fs.ramfs.impl</th><td>org.apache.hadoop.fs.InMemoryFileSystem</td>
                    </tr>
                    <tr>
                        <th>dfs.block.access.token.lifetime</th><td>600</td>
                    </tr>
                    <tr>
                        <th>dfs.name.edits.dir</th><td>${dfs.name.dir}</td>
                    </tr>
                    <tr>
                        <th>mapred.skip.map.max.skip.records</th><td>0</td>
                    </tr>
                    <tr>
                        <th>mapred.cluster.map.memory.mb</th><td>-1</td>
                    </tr>
                    <tr>
                        <th>hadoop.security.group.mapping</th><td>org.apache.hadoop.security.ShellBasedUnixGroupsMapping</td>
                    </tr>
                    <tr>
                        <th>mapred.job.tracker.persist.jobstatus.dir</th><td>/jobtracker/jobsInfo</td>
                    </tr>
                    <tr>
                        <th>mapred.jar</th><td>hdfs://localhost:9000/tmp/hadoop-julingks/mapred/staging/julingks/.staging/job_201307221055_0002/job.jar</td>
                    </tr>
                    <tr>
                        <th>dfs.block.size</th><td>67108864</td>
                    </tr>
                    <tr>
                        <th>fs.s3.buffer.dir</th><td>${hadoop.tmp.dir}/s3</td>
                    </tr>
                    <tr>
                        <th>job.end.retry.attempts</th><td>0</td>
                    </tr>
                    <tr>
                        <th>fs.file.impl</th><td>org.apache.hadoop.fs.LocalFileSystem</td>
                    </tr>
                    <tr>
                        <th>dfs.datanode.max.xcievers</th><td>4096</td>
                    </tr>
                    <tr>
                        <th>mapred.local.dir.minspacestart</th><td>0</td>
                    </tr>
                    <tr>
                        <th>mapred.output.compression.type</th><td>RECORD</td>
                    </tr>
                    <tr>
                        <th>dfs.datanode.ipc.address</th><td>0.0.0.0:50020</td>
                    </tr>
                    <tr>
                        <th>dfs.permissions</th><td>true</td>
                    </tr>
                    <tr>
                        <th>topology.script.number.args</th><td>100</td>
                    </tr>
                    <tr>
                        <th>mapreduce.job.counters.groups.max</th><td>50</td>
                    </tr>
                    <tr>
                        <th>io.mapfile.bloom.error.rate</th><td>0.005</td>
                    </tr>
                    <tr>
                        <th>mapred.cluster.max.reduce.memory.mb</th><td>-1</td>
                    </tr>
                    <tr>
                        <th>mapred.max.tracker.blacklists</th><td>4</td>
                    </tr>
                    <tr>
                        <th>mapred.task.profile.maps</th><td>0-2</td>
                    </tr>
                    <tr>
                        <th>dfs.datanode.https.address</th><td>0.0.0.0:50475</td>
                    </tr>
                    <tr>
                        <th>mapred.userlog.retain.hours</th><td>24</td>
                    </tr>
                    <tr>
                        <th>dfs.secondary.http.address</th><td>0.0.0.0:50090</td>
                    </tr>
                    <tr>
                        <th>dfs.namenode.replication.work.multiplier.per.iteration</th><td>2</td>
                    </tr>
                    <tr>
                        <th>dfs.replication.max</th><td>512</td>
                    </tr>
                    <tr>
                        <th>mapred.job.tracker.persist.jobstatus.active</th><td>false</td>
                    </tr>
                    <tr>
                        <th>hadoop.security.authorization</th><td>false</td>
                    </tr>
                    <tr>
                        <th>local.cache.size</th><td>10737418240</td>
                    </tr>
                    <tr>
                        <th>dfs.namenode.delegation.token.renew-interval</th><td>86400000</td>
                    </tr>
                    <tr>
                        <th>mapred.min.split.size</th><td>0</td>
                    </tr>
                    <tr>
                        <th>mapred.map.tasks</th><td>5</td>
                    </tr>
                    <tr>
                        <th>mapred.child.java.opts</th><td>-Xmx200m</td>
                    </tr>
                    <tr>
                        <th>mapred.output.value.class</th><td>org.apache.hadoop.io.IntWritable</td>
                    </tr>
                    <tr>
                        <th>dfs.https.client.keystore.resource</th><td>ssl-client.xml</td>
                    </tr>
                    <tr>
                        <th>mapred.job.queue.name</th><td>default</td>
                    </tr>
                    <tr>
                        <th>dfs.https.address</th><td>0.0.0.0:50470</td>
                    </tr>
                    <tr>
                        <th>mapred.job.tracker.retiredjobs.cache.size</th><td>1000</td>
                    </tr>
                    <tr>
                        <th>dfs.balance.bandwidthPerSec</th><td>1048576</td>
                    </tr>
                    <tr>
                        <th>ipc.server.listen.queue.size</th><td>128</td>
                    </tr>
                    <tr>
                        <th>dfs.namenode.invalidate.work.pct.per.iteration</th><td>0.32f</td>
                    </tr>
                    <tr>
                        <th>job.end.retry.interval</th><td>30000</td>
                    </tr>
                    <tr>
                        <th>mapred.inmem.merge.threshold</th><td>1000</td>
                    </tr>
                    <tr>
                        <th>mapred.skip.attempts.to.start.skipping</th><td>2</td>
                    </tr>
                    <tr>
                        <th>mapreduce.tasktracker.outofband.heartbeat.damper</th><td>1000000</td>
                    </tr>
                    <tr>
                        <th>hadoop.security.use-weak-http-crypto</th><td>false</td>
                    </tr>
                    <tr>
                        <th>fs.checkpoint.dir</th><td>${hadoop.tmp.dir}/dfs/namesecondary</td>
                    </tr>
                    <tr>
                        <th>mapred.reduce.tasks</th><td>1</td>
                    </tr>
                    <tr>
                        <th>mapred.merge.recordsBeforeProgress</th><td>10000</td>
                    </tr>
                    <tr>
                        <th>mapred.userlog.limit.kb</th><td>0</td>
                    </tr>
                    <tr>
                        <th>mapred.job.reduce.memory.mb</th><td>-1</td>
                    </tr>
                    <tr>
                        <th>dfs.max.objects</th><td>0</td>
                    </tr>
                    <tr>
                        <th>webinterface.private.actions</th><td>true</td>
                    </tr>
                    <tr>
                        <th>hadoop.security.token.service.use_ip</th><td>true</td>
                    </tr>
                    <tr>
                        <th>io.sort.spill.percent</th><td>0.80</td>
                    </tr>
                    <tr>
                        <th>mapred.job.shuffle.input.buffer.percent</th><td>0.70</td>
                    </tr>
                    <tr>
                        <th>mapred.job.name</th><td>word count</td>
                    </tr>
                    <tr>
                        <th>dfs.datanode.dns.nameserver</th><td>default</td>
                    </tr>
                    <tr>
                        <th>mapred.map.tasks.speculative.execution</th><td>true</td>
                    </tr>
                    <tr>
                        <th>hadoop.http.authentication.type</th><td>simple</td>
                    </tr>
                    <tr>
                        <th>hadoop.util.hash.type</th><td>murmur</td>
                    </tr>
                    <tr>
                        <th>dfs.blockreport.intervalMsec</th><td>3600000</td>
                    </tr>
                    <tr>
                        <th>mapred.map.max.attempts</th><td>4</td>
                    </tr>
                    <tr>
                        <th>mapreduce.job.acl-view-job</th><td> </td>
                    </tr>
                    <tr>
                        <th>mapreduce.ifile.readahead</th><td>true</td>
                    </tr>
                    <tr>
                        <th>dfs.client.block.write.retries</th><td>3</td>
                    </tr>
                    <tr>
                        <th>mapred.job.tracker.handler.count</th><td>10</td>
                    </tr>
                    <tr>
                        <th>mapreduce.reduce.shuffle.read.timeout</th><td>180000</td>
                    </tr>
                    <tr>
                        <th>mapred.tasktracker.expiry.interval</th><td>600000</td>
                    </tr>
                    <tr>
                        <th>dfs.secondary.namenode.kerberos.internal.spnego.principal</th><td>${dfs.web.authentication.kerberos.principal}</td>
                    </tr>
                    <tr>
                        <th>dfs.https.enable</th><td>false</td>
                    </tr>
                    <tr>
                        <th>mapred.jobtracker.maxtasks.per.job</th><td>-1</td>
                    </tr>
                    <tr>
                        <th>mapred.jobtracker.job.history.block.size</th><td>3145728</td>
                    </tr>
                    <tr>
                        <th>keep.failed.task.files</th><td>false</td>
                    </tr>
                    <tr>
                        <th>dfs.datanode.use.datanode.hostname</th><td>false</td>
                    </tr>
                    <tr>
                        <th>dfs.datanode.failed.volumes.tolerated</th><td>0</td>
                    </tr>
                    <tr>
                        <th>mapred.task.profile.reduces</th><td>0-2</td>
                    </tr>
                    <tr>
                        <th>ipc.client.tcpnodelay</th><td>false</td>
                    </tr>
                    <tr>
                        <th>mapred.output.compression.codec</th><td>org.apache.hadoop.io.compress.DefaultCodec</td>
                    </tr>
                    <tr>
                        <th>io.map.index.skip</th><td>0</td>
                    </tr>
                    <tr>
                        <th>hadoop.http.authentication.token.validity</th><td>36000</td>
                    </tr>
                    <tr>
                        <th>mapred.working.dir</th><td>hdfs://localhost:9000/user/julingks</td>
                    </tr>
                    <tr>
                        <th>ipc.server.tcpnodelay</th><td>false</td>
                    </tr>
                    <tr>
                        <th>mapred.jobtracker.blacklist.fault-bucket-width</th><td>15</td>
                    </tr>
                    <tr>
                        <th>dfs.namenode.delegation.key.update-interval</th><td>86400000</td>
                    </tr>
                    <tr>
                        <th>mapred.used.genericoptionsparser</th><td>true</td>
                    </tr>
                    <tr>
                        <th>mapred.mapper.new-api</th><td>true</td>
                    </tr>
                    <tr>
                        <th>mapred.job.map.memory.mb</th><td>-1</td>
                    </tr>
                    <tr>
                        <th>dfs.default.chunk.view.size</th><td>32768</td>
                    </tr>
                    <tr>
                        <th>hadoop.logfile.size</th><td>10000000</td>
                    </tr>
                    <tr>
                        <th>mapred.reduce.tasks.speculative.execution</th><td>true</td>
                    </tr>
                    <tr>
                        <th>mapreduce.job.dir</th><td>hdfs://localhost:9000/tmp/hadoop-julingks/mapred/staging/julingks/.staging/job_201307221055_0002</td>
                    </tr>
                    <tr>
                        <th>mapreduce.tasktracker.outofband.heartbeat</th><td>false</td>
                    </tr>
                    <tr>
                        <th>mapreduce.reduce.input.limit</th><td>-1</td>
                    </tr>
                    <tr>
                        <th>dfs.datanode.du.reserved</th><td>0</td>
                    </tr>
                    <tr>
                        <th>hadoop.security.authentication</th><td>simple</td>
                    </tr>
                    <tr>
                        <th>fs.checkpoint.period</th><td>3600</td>
                    </tr>
                    <tr>
                        <th>dfs.web.ugi</th><td>webuser,webgroup</td>
                    </tr>
                    <tr>
                        <th>mapred.job.reuse.jvm.num.tasks</th><td>1</td>
                    </tr>
                    <tr>
                        <th>mapred.jobtracker.completeuserjobs.maximum</th><td>100</td>
                    </tr>
                    <tr>
                        <th>dfs.df.interval</th><td>60000</td>
                    </tr>
                    <tr>
                        <th>dfs.data.dir</th><td>${hadoop.tmp.dir}/dfs/data</td>
                    </tr>
                    <tr>
                        <th>mapred.task.tracker.task-controller</th><td>org.apache.hadoop.mapred.DefaultTaskController</td>
                    </tr>
                    <tr>
                        <th>fs.s3.maxRetries</th><td>4</td>
                    </tr>
                    <tr>
                        <th>dfs.datanode.dns.interface</th><td>default</td>
                    </tr>
                    <tr>
                        <th>mapred.cluster.max.map.memory.mb</th><td>-1</td>
                    </tr>
                    <tr>
                        <th>mapreduce.reduce.shuffle.maxfetchfailures</th><td>10</td>
                    </tr>
                    <tr>
                        <th>mapreduce.job.acl-modify-job</th><td> </td>
                    </tr>
                    <tr>
                        <th>dfs.permissions.supergroup</th><td>supergroup</td>
                    </tr>
                    <tr>
                        <th>mapred.local.dir</th><td>${hadoop.tmp.dir}/mapred/local</td>
                    </tr>
                    <tr>
                        <th>fs.hftp.impl</th><td>org.apache.hadoop.hdfs.HftpFileSystem</td>
                    </tr>
                    <tr>
                        <th>fs.trash.interval</th><td>0</td>
                    </tr>
                    <tr>
                        <th>fs.s3.sleepTimeSeconds</th><td>10</td>
                    </tr>
                    <tr>
                        <th>dfs.replication.min</th><td>1</td>
                    </tr>
                    <tr>
                        <th>mapred.submit.replication</th><td>10</td>
                    </tr>
                    <tr>
                        <th>fs.har.impl</th><td>org.apache.hadoop.fs.HarFileSystem</td>
                    </tr>
                    <tr>
                        <th>mapred.map.output.compression.codec</th><td>org.apache.hadoop.io.compress.DefaultCodec</td>
                    </tr>
                    <tr>
                        <th>hadoop.relaxed.worker.version.check</th><td>false</td>
                    </tr>
                    <tr>
                        <th>mapred.tasktracker.dns.interface</th><td>default</td>
                    </tr>
                    <tr>
                        <th>dfs.namenode.decommission.interval</th><td>30</td>
                    </tr>
                    <tr>
                        <th>dfs.http.address</th><td>0.0.0.0:50070</td>
                    </tr>
                    <tr>
                        <th>dfs.heartbeat.interval</th><td>3</td>
                    </tr>
                    <tr>
                        <th>mapred.job.tracker</th><td>localhost:9001</td>
                    </tr>
                    <tr>
                        <th>hadoop.http.authentication.signature.secret.file</th><td>${user.home}/hadoop-http-auth-signature-secret</td>
                    </tr>
                    <tr>
                        <th>mapreduce.job.submithost</th><td>Minwooui-MacBook-Air-2.local</td>
                    </tr>
                    <tr>
                        <th>io.seqfile.sorter.recordlimit</th><td>1000000</td>
                    </tr>
                    <tr>
                        <th>dfs.name.dir</th><td>${hadoop.tmp.dir}/dfs/name</td>
                    </tr>
                    <tr>
                        <th>mapred.line.input.format.linespermap</th><td>1</td>
                    </tr>
                    <tr>
                        <th>mapred.jobtracker.taskScheduler</th><td>org.apache.hadoop.mapred.FairScheduler</td>
                    </tr>
                    <tr>
                        <th>dfs.datanode.http.address</th><td>0.0.0.0:50075</td>
                    </tr>
                    <tr>
                        <th>fs.webhdfs.impl</th><td>org.apache.hadoop.hdfs.web.WebHdfsFileSystem</td>
                    </tr>
                    <tr>
                        <th>mapred.local.dir.minspacekill</th><td>0</td>
                    </tr>
                    <tr>
                        <th>dfs.replication.interval</th><td>3</td>
                    </tr>
                    <tr>
                        <th>io.sort.record.percent</th><td>0.05</td>
                    </tr>
                    <tr>
                        <th>hadoop.http.authentication.kerberos.principal</th><td>HTTP/localhost@LOCALHOST</td>
                    </tr>
                    <tr>
                        <th>mapreduce.reduce.class</th><td>org.apache.hadoop.examples.WordCount$IntSumReducer</td>
                    </tr>
                    <tr>
                        <th>fs.kfs.impl</th><td>org.apache.hadoop.fs.kfs.KosmosFileSystem</td>
                    </tr>
                    <tr>
                        <th>mapred.temp.dir</th><td>${hadoop.tmp.dir}/mapred/temp</td>
                    </tr>
                    <tr>
                        <th>mapred.tasktracker.reduce.tasks.maximum</th><td>2</td>
                    </tr>
                    <tr>
                        <th>dfs.replication</th><td>1</td>
                    </tr>
                    <tr>
                        <th>fs.checkpoint.edits.dir</th><td>${fs.checkpoint.dir}</td>
                    </tr>
                    <tr>
                        <th>mapred.tasktracker.tasks.sleeptime-before-sigkill</th><td>5000</td>
                    </tr>
                    <tr>
                        <th>mapred.job.reduce.input.buffer.percent</th><td>0.0</td>
                    </tr>
                    <tr>
                        <th>mapred.tasktracker.indexcache.mb</th><td>10</td>
                    </tr>
                    <tr>
                        <th>mapreduce.job.split.metainfo.maxsize</th><td>10000000</td>
                    </tr>
                    <tr>
                        <th>mapred.skip.reduce.auto.incr.proc.count</th><td>true</td>
                    </tr>
                    <tr>
                        <th>hadoop.logfile.count</th><td>10</td>
                    </tr>
                    <tr>
                        <th>mapreduce.job.submithostaddress</th><td>192.168.31.236</td>
                    </tr>
                    <tr>
                        <th>io.seqfile.compress.blocksize</th><td>1000000</td>
                    </tr>
                    <tr>
                        <th>fs.s3.block.size</th><td>67108864</td>
                    </tr>
                    <tr>
                        <th>mapred.tasktracker.taskmemorymanager.monitoring-interval</th><td>5000</td>
                    </tr>
                    <tr>
                        <th>hadoop.http.authentication.simple.anonymous.allowed</th><td>true</td>
                    </tr>
                    <tr>
                        <th>mapred.queue.default.state</th><td>RUNNING</td>
                    </tr>
                    <tr>
                        <th>mapred.acls.enabled</th><td>false</td>
                    </tr>
                    <tr>
                        <th>mapreduce.jobtracker.staging.root.dir</th><td>${hadoop.tmp.dir}/mapred/staging</td>
                    </tr>
                    <tr>
                        <th>dfs.namenode.check.stale.datanode</th><td>false</td>
                    </tr>
                    <tr>
                        <th>mapred.queue.names</th><td>default</td>
                    </tr>
                    <tr>
                        <th>dfs.access.time.precision</th><td>3600000</td>
                    </tr>
                    <tr>
                        <th>fs.hsftp.impl</th><td>org.apache.hadoop.hdfs.HsftpFileSystem</td>
                    </tr>
                    <tr>
                        <th>mapred.task.tracker.http.address</th><td>0.0.0.0:50060</td>
                    </tr>
                    <tr>
                        <th>mapreduce.combine.class</th><td>org.apache.hadoop.examples.WordCount$IntSumReducer</td>
                    </tr>
                    <tr>
                        <th>mapred.disk.healthChecker.interval</th><td>60000</td>
                    </tr>
                    <tr>
                        <th>mapred.reduce.parallel.copies</th><td>5</td>
                    </tr>
                    <tr>
                        <th>io.seqfile.lazydecompress</th><td>true</td>
                    </tr>
                    <tr>
                        <th>mapred.output.dir</th><td>example-output</td>
                    </tr>
                    <tr>
                        <th>io.sort.mb</th><td>100</td>
                    </tr>
                    <tr>
                        <th>ipc.client.connection.maxidletime</th><td>10000</td>
                    </tr>
                    <tr>
                        <th>mapred.compress.map.output</th><td>false</td>
                    </tr>
                    <tr>
                        <th>hadoop.security.uid.cache.secs</th><td>14400</td>
                    </tr>
                    <tr>
                        <th>mapred.task.tracker.report.address</th><td>127.0.0.1:0</td>
                    </tr>
                    <tr>
                        <th>mapred.healthChecker.interval</th><td>60000</td>
                    </tr>
                    <tr>
                        <th>ipc.client.kill.max</th><td>10</td>
                    </tr>
                    <tr>
                        <th>ipc.client.connect.max.retries</th><td>10</td>
                    </tr>
                    <tr>
                        <th>mapreduce.map.class</th><td>org.apache.hadoop.examples.WordCount$TokenizerMapper</td>
                    </tr>
                    <tr>
                        <th>fs.s3.impl</th><td>org.apache.hadoop.fs.s3.S3FileSystem</td>
                    </tr>
                    <tr>
                        <th>mapred.user.jobconf.limit</th><td>5242880</td>
                    </tr>
                    <tr>
                        <th>mapreduce.job.counters.group.name.max</th><td>128</td>
                    </tr>
                    <tr>
                        <th>mapred.input.dir</th><td>hdfs://localhost:9000/user/julingks/example-input</td>
                    </tr>
                    <tr>
                        <th>mapred.job.tracker.http.address</th><td>0.0.0.0:50030</td>
                    </tr>
                    <tr>
                        <th>io.file.buffer.size</th><td>4096</td>
                    </tr>
                    <tr>
                        <th>mapred.jobtracker.restart.recover</th><td>false</td>
                    </tr>
                    <tr>
                        <th>io.serializations</th><td>org.apache.hadoop.io.serializer.WritableSerialization</td>
                    </tr>
                    <tr>
                        <th>dfs.datanode.handler.count</th><td>3</td>
                    </tr>
                    <tr>
                        <th>mapred.task.profile</th><td>false</td>
                    </tr>
                    <tr>
                        <th>mapreduce.input.num.files</th><td>5</td>
                    </tr>
                    <tr>
                        <th>dfs.replication.considerLoad</th><td>true</td>
                    </tr>
                    <tr>
                        <th>jobclient.output.filter</th><td>FAILED</td>
                    </tr>
                    <tr>
                        <th>dfs.namenode.delegation.token.max-lifetime</th><td>604800000</td>
                    </tr>
                    <tr>
                        <th>hadoop.http.authentication.kerberos.keytab</th><td>${user.home}/hadoop.keytab</td>
                    </tr>
                    <tr>
                        <th>mapred.tasktracker.map.tasks.maximum</th><td>2</td>
                    </tr>
                    <tr>
                        <th>mapreduce.job.counters.counter.name.max</th><td>64</td>
                    </tr>
                    <tr>
                        <th>io.compression.codecs</th><td>org.apache.hadoop.io.compress.DefaultCodec,org.apache.hadoop.io.compress.GzipCodec,org.apache.hadoop.io.compress.BZip2Codec,org.apache.hadoop.io.compress.SnappyCodec</td>
                    </tr>
                    <tr>
                        <th>fs.checkpoint.size</th><td>67108864</td>
                    </tr>
                    </#noparse>
                    </tbody>
                </table>
            </div>
        </section>
    </div>
</div>

<!-- End of body -->
<#include "../layout/simple/footer.ftl">

<#include "../layout/simple/template.ftl">