<#include "/include/base.include"/>

#set($page_title="${table.remarks}编辑")
#set($crumbs="首页:/home,${table.remarks}编辑")

#set($url_save = "/${classNameLower}/save.do")

<div class="page-content">
    <div class="page-header">
        <span class="pull-right">
            <a href="javascript:history.back()" class="btn btn-white btn-default">返回</a>
        </span>
        <h1>
        ${table.remarks}管理
            <small>
                <i class="icon-double-angle-right"></i>
            ${table.remarks}功能
            </small>
        </h1>
    </div>
    <!-- /.page-header -->

    <div class="row">
        <div class="col-xs-12">
            <!-- PAGE CONTENT BEGINS -->

            <form class="form-horizontal" role="form" method="post" action="$url_save">
<#noparse>
                #if($obj.id)
                <input type="hidden" value="${obj.id}" name="id">
                #end
</#noparse>

            <#list table.columns as column>
                <#if column.columnNameLowerCase != table.pkColumn.columnNameLowerCase>
                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right"
                               for="form-field-${column_index}"> ${column.remarks}: </label>

                        <div class="col-xs-12 col-sm-4">
                            <input type="text" id="form-field-${column_index}"
                                   placeholder="${column.remarks}" name="${column.columnNameFirstLower}"
                                   value="$!{obj.${column.columnNameFirstLower}}"
                                   class="width-100">
                        </div>
                    </div>
                </#if>
            </#list>



                <div class="clearfix form-actions">
                    <div class="col-md-offset-3 col-md-9">
                        <button class="btn btn-info" type="submit">
                            <i class="icon-ok bigger-110"></i>
                            提交
                        </button>

                        &nbsp; &nbsp; &nbsp;
                        <a class="btn btn-info" href="javascript:history.back()">
                            <i class="icon-undo bigger-110"></i>
                            返回
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>