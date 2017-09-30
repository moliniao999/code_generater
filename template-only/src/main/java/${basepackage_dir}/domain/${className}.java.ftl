<#include "/include/base.include"/>
package ${basepackage}.domain;

import java.io.Serializable;
import com.jUtils.domain.BaseDomain;
import java.util.*;
import java.sql.Timestamp;


<#include "/include/author.include"/>

public class ${className} extends BaseDomain {

<#--字段-->
<#list table.columns as column>
    <#if column.columnNameLowerCase == table.pkColumn.columnNameLowerCase
    || column.columnNameLowerCase == "created"
    || column.columnNameLowerCase == "modified"
    || column.columnNameLowerCase == "yn"
    ><#else>
    /**
     * ${column.remarks}
     */
    private ${column.simpleJavaType} ${column.columnNameFirstLower};
    </#if>
</#list>
<#--set get方法-->
<#list table.columns as column>
    <#if column.columnNameLowerCase == table.pkColumn.columnNameLowerCase
    || column.columnNameLowerCase == "created"
    || column.columnNameLowerCase == "modified"
    || column.columnNameLowerCase == "yn"
    ><#else>

    public void set${column.columnName} (${column.simpleJavaType} ${column.columnNameFirstLower}){
        this.${column.columnNameFirstLower} = ${column.columnNameFirstLower};
    }
    public ${column.simpleJavaType} get${column.columnName}(){
        return this.${column.columnNameFirstLower};
    }
    </#if>
</#list>

    public String toString(){
        StringBuffer sb = new StringBuffer();
        sb.append("${className} [");
        <#assign dh = "">
        <#list table.columns as column>
        <#if column_index != 0>
            <#assign dh = ", ">
        </#if>
        <#if column.columnNameLowerCase == table.pkColumn.columnNameLowerCase>
        sb.append("${dh}id = ");
        sb.append(id);
        <#else>
        sb.append("${dh}${column.columnNameFirstLower} = ");
        sb.append(${column.columnNameFirstLower});
        </#if>
        </#list>
        sb.append("]");
        return sb.toString();
    }
}