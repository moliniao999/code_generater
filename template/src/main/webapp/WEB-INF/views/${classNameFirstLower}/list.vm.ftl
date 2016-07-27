<#include "/include/base.include"/>
#set($page_title="${table.remarks}列表")
#set($crumbs="首页:/home,${table.remarks}列表")

##详情
#set($url_show = "/${classNameLower}/show.do")
##查询地址
#set($url_list = "/${classNameLower}/list.do")
##添加
#set($url_save = "/${classNameLower}/preSave.do")
##删除
#set($url_del = "/${classNameLower}/del.do")

<div class="row">
    <div class="col-xs-12">

        <div class="table-header">
            ${table.remarks}列表
        </div>

        <div class="table-responsive">
            <div id="sample-table-2_wrapper" class="dataTables_wrapper" role="grid">
                <div class="row">
                    <div class="col-sm-6" style="width:100%">
                        <div id="sample-table-2_length" class="dataTables_length">
                            <form action="$url_list" id="form" method="post">
                                <input type="hidden" name="currPage" value="$!{model.currPage}" />
                                <div class="row">

                                <div class="col-xs-4">
                                    <div class="form-group">
                                        <label class="col-xs-3 control-label text-right">显示数量: </label>
                                        <div class="col-xs-9">
                                            #selectCount($!{model.query.pageSize})
                                        </div>
                                    </div>
                                </div>

                                    <#assign count = 1>
                                <#list table.columns as column>
                                    <#if count == 3>
                                    </div>
                                    <div class="row">
                                    <#assign count = 0>
                                    </#if>
                                    <#if column.columnNameLowerCase != table.pkColumn.columnNameLowerCase>

                                        <div class="col-xs-4">
                                            <div class="form-group">
                                                <label class="col-xs-3 control-label text-right">${column.remarks}: </label>
                                                <div class="col-xs-9">
                                                    <input type="text" name="param[${column.columnNameFirstLower}]" value="$!{model.query.param.${column.columnNameFirstLower}}" class="form-control"/>
                                                </div>
                                            </div>
                                        </div>
                                    <#assign count = count +1>
                                    </#if>
                                </#list>

                                </div>

                                <div class="clearfix">
                                    <span class="pull-right">
                                        <input type="submit" value="查询结果">
                                        <input type="reset" value="重置条件">
                                    </span>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
                <table id="sample-table-2" class="table table-striped table-bordered table-hover dataTable" aria-describedby="sample-table-2_info">
                    <thead>
                    <tr role="row">
                        <#list table.columns as column>
                            <th>${column.remarks}</th>
                        </#list>
                        <th><i class="icon-time bigger-110 hidden-480"></i>操作</th>
                    </tr>
                    </thead>


                    <tbody role="alert" aria-live="polite" aria-relevant="all">
                    #foreach($obj in $!{model.list})
                    <tr>
                    <#list table.columns as column>
                        <#if column.columnNameLowerCase == table.pkColumn.columnNameLowerCase>
                        <td>
                            <#noparse>$!{obj.id}</#noparse>
                        </td>
                        <#else>
                        <td>
                            <#noparse>$!{obj.</#noparse>${column.columnNameFirstLower}<#noparse>}</#noparse>
                        </td>
                        </#if>
                    </#list>
                        <td>
                            <div class="hidden-sm hidden-xs action-buttons">
                            <#noparse><a class="green" href="${url_show}?id=${obj.id}">
                                    <i class=""></i>查看
                                </a></#noparse>
                            <#noparse><a class="green" href="${url_save}?id=${obj.id}">
                                    <i class="fa fa-pencil "></i>修改
                                </a></#noparse>
                                <#noparse>
                                    <a class="red" href="${url_del}?id=${obj.id}" onclick="return confirm('确定要删除!');">
                                        <i class="fa fa-trash  "></i>删除
                                    </a></#noparse>
                            </div>
                        </td>

                    </tr>
                    #end
                    </tbody>
                </table>
                <div class="row">
                    <div class="col-sm-6">
                        <a href="$url_save" class="btn btn-success btn-sm ">添加</a>
                    </div>
                    <div class="col-sm-6">
                        <div class="dataTables_paginate paging_bootstrap">
                            <div class="pull-right">
                                #page($!{model.totalPage},$!{model.currPage})
                            </div>
                            <span class="pull-right" style="line-height: 33px;">
                                #set($tmpPage = $model.currPage + 1)
                                查询出$!{model.totalSize}条数据，共$!{model.totalPage}页，当前第$!{tmpPage}页
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    jQuery(function($) {

        $('table th input:checkbox').on('click' , function(){
            var that = this;
            $(this).closest('table').find('tr > td:first-child input:checkbox')
                    .each(function(){
                        this.checked = that.checked;
                        $(this).closest('tr').toggleClass('selected');
                    });

        });
    })
</script>

<script src="$!{webUtils.getAssetsPath("/js/diligrp.form.js")}"></script>
