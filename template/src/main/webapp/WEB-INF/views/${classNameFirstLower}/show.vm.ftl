<#include "/include/base.include"/>

#set($page_title="${table.remarks}详情")
#set($crumbs="首页:/home,${table.remarks}详情")

#set($url_save = "/${classNameLower}/save.do")

<div class="page-content">
    <div class="page-header">
        <span class="pull-right"><a href="javascript:history.back()" class="btn btn-white btn-default">返回</a></span>
        <h1>
        ${table.remarks}管理
            <small>
                <i class="icon-double-angle-right"></i>
            ${table.remarks}详细信息
            </small>
        </h1>
    </div>
    <!-- /.page-header -->

    <div class="row">
        <div class="col-xs-12">
            <!-- PAGE CONTENT BEGINS -->

            <div class="profile-user-info profile-user-info-striped">
            <#list table.columns as column>
                <#if column.columnNameLowerCase == table.pkColumn.columnNameLowerCase>
                    <div class="profile-info-row">
                        <div class="profile-info-name"> id</div>

                        <div class="profile-info-value">
                            <span >$!{model.id}&nbsp;</span>
                        </div>
                    </div>
                <#else>
                    <div class="profile-info-row">
                        <div class="profile-info-name">  ${column.remarks} </div>

                        <div class="profile-info-value">
                            <span >$!{model.${column.columnNameFirstLower}}&nbsp;</span>
                        </div>
                    </div>
                </#if>
            </#list>
            </div>

            <div class="clearfix form-actions">
                <div class="col-md-offset-3 col-md-9">
                    <a class="btn btn-info" href="javascript:history.back()">
                        <i class="icon-reply bigger-110"></i>
                        返回
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>