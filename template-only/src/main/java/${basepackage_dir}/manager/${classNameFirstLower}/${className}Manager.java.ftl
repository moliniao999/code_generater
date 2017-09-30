<#include "/include/base.include"/>
package ${basepackage}.manager.${classNameLower};

import ${basepackage}.domain.${className};
import com.jUtils.dao.BaseQuery;
import com.jUtils.web.PageTemplate;

<#include "/include/author.include"/>

public interface ${className}Manager {

    public PageTemplate find(BaseQuery bq);

    public ${className} findOne(Long pk);

    public Boolean save(${className} ${classNameLower});

    public Boolean update(${className} ${classNameLower});

    public Boolean del(Long id);

}
