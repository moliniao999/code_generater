<#include "/include/base.include"/>
package ${basepackage}.service.${classNameLower};

import ${basepackage}.exception.DiliException;
import ${basepackage}.domain.${className};
import com.jUtils.web.PageTemplate;
import com.jUtils.dao.BaseQuery;

import java.util.*;

<#include "/include/author.include"/>

public interface ${className}Service {

    public Map<?, ?> preSave(${className} obj) throws DiliException;

    public ${className} findOne(Long pk) throws DiliException ;

    public Boolean save(${className} ${classNameLower}) throws DiliException ;

    public PageTemplate find(BaseQuery bq) throws DiliException ;

    public Boolean del(Long id) throws DiliException ;

    public Boolean update(${className} ${classNameLower}) throws DiliException ;

}
