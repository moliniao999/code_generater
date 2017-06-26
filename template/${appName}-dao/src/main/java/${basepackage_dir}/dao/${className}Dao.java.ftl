<#--<#assign className = table.className/>-->
<#--<#assign classNameLower = className?uncap_first/>-->
<#include "/include/base.include"/>

package ${basepackage}.dao;




import com.diligrp.website.util.dao.IBaseDao;

import ${basepackage}.domain.${className};

<#include "/include/author.include"/>

public interface ${className}Dao extends IBaseDao<${className}> {
   <#-- public ${className} findOne(Long pk);

    public Boolean save(${className} ${classNameLower});

    public List<${className}> find(BaseQuery vo);

    public Integer getCount(BaseQuery vo);

    public Boolean del(${className} obj);

    public Boolean update(${className} obj);-->
}
