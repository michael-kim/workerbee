<#assign sidebar="dashboard">
<#include "header.ftl">

<!-- Start of body -->

    <div class="row-fluid">
    <div class="span12">
        <h2 class="page-title">Dashboard <small>Statistics and more</small></h2>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            Empty!
        </section>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <section class="widget">
            <div class="body">
                <button type="button" class="btn btn-danger btn-large btn-block"
                        data-toggle="modal" data-target="#myModal" data-backdrop="false">Launch modal</button>
                <div id="myModal" class="modal large hide fade" tabindex="-1" role="dialog">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" >×</button>
                        <h4 id="myModalLabel">Modal Heading</h4>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-dismiss="modal">Close</button>
                        <button class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </section>
</div>
<!-- End of body -->
<#include "footer.ftl">

<#include "template.ftl">