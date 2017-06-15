<#include "/include/base.include"/>
package ${basepackage}.manager.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;

import ${basepackage}.dao.${className}Dao;
import ${basepackage}.domain.${className};
import ${basepackage}.manager.${className}Manager;
import com.diligrp.website.util.dao.BaseQuery;
import com.diligrp.website.util.web.PageTemplate;

import java.util.*;

<#include "/include/author.include"/>

@Component
public class ${className}ManagerImpl implements ${className}Manager {
    private final static Logger LOG = LoggerFactory
            .getLogger(${className}ManagerImpl.class);

    @Autowired
    private ${className}Dao ${classNameLower}Dao;

    public PageTemplate find(BaseQuery bq) {
        List<${className}> list = ${classNameLower}Dao.listByCondition(bq);
        int totalSize = ${classNameLower}Dao.countByCondition(bq);
        return PageTemplate.create(bq, totalSize, list);
    }

    @Cacheable(value = "rc", key = "'${appName}:${className}:id:' + #id", unless = "#result==null")
    public ${className} findOne(Long id) {
        return ${classNameLower}Dao.getById(id);
    }

    public Boolean save(${className} ${classNameLower}) {
        return ${classNameLower}Dao.save(${classNameLower});
    }

    @CacheEvict(value = "rc", key = "'${appName}:${className}:id:' + #${classNameLower}.getId()")
    public Boolean update(${className} ${classNameLower}) {
        return ${classNameLower}Dao.update(${classNameLower});
    }

    @CacheEvict(value = "rc", key = "'${appName}:${className}:id:' + #id")
    public Boolean del(Long id){
        return ${classNameLower}Dao.deleteById(id);
    }

}
