<#--
&lt;#&ndash;<#assign className = table.className/>&ndash;&gt;
&lt;#&ndash;<#assign classNameLower = className?uncap_first/>&ndash;&gt;
<#include "/include/base.include"/>

package ${basepackage}.dao;


import java.util.List;

import org.springframework.stereotype.Component;

import com.jUtils.dao.IBaseDao;
import com.jUtils.dao.BaseQuery;

import ${basepackage}.domain.${className};

<#include "/include/author.include"/>

public interface ${className}Dao extends IBaseDao<${className}> {
   &lt;#&ndash; public ${className} findOne(Long pk);

    public Boolean save(${className} ${classNameLower});

    public List<${className}> find(BaseQuery vo);

    public Integer getCount(BaseQuery vo);

    public Boolean del(${className} obj);

    public Boolean update(${className} obj);&ndash;&gt;
}
-->
