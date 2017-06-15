<#include "/include/base.include"/>
package ${basepackage}.service;

import ${basepackage}.exception.DiliException;
import ${basepackage}.domain.${className};
import com.diligrp.website.util.web.PageTemplate;
import com.diligrp.website.util.dao.BaseQuery;

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
