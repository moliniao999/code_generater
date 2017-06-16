<#--<#include "/include/base.include"/>-->
<#--package ${basepackage}.client;-->


<#--import ${basepackage}.client.service.*;-->
<#--import ${basepackage}.client.service.impl.*;-->
<#--import ${basepackage}.client.utils.Constants;-->


<#--<#include "/include/author.include"/>-->

<#--public class ${className}Client  {-->

     <#--private ActivityService activityService;-->


<#--public ActivityClient(){-->
<#--this("");-->
<#--}-->
<#--/**-->
<#--* 获取一活动SDK实例-->
<#--* @param token 会员token-->
<#--*/-->
<#--public ActivityClient(String token){-->
<#--this(token, "");-->
<#--}-->

<#--/**-->
<#--* 获取一活动SDK实例-->
<#--* @param token 会员token-->
<#--* @param baseUrl 活动http服务URL-->
<#--*/-->
<#--public ActivityClient(String token,String baseUrl){-->

<#--this.activityService = new ActivityServiceImpl(token);-->

<#--}-->

<#--/**-->
<#--* 获取活动接口服务-->
<#--* @return-->
<#--*/-->
<#--public ActivityService getActivityService() {-->
<#--return activityService;-->
<#--}-->


<#--}-->