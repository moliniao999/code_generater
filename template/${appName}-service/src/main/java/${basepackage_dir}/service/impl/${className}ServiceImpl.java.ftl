<#include "/include/base.include"/>
package ${basepackage}.service.impl;

import ${basepackage}.exception.DiliException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ${basepackage}.dao.${className}Dao;
import ${basepackage}.domain.${className};
import ${basepackage}.service.${className}Service;
import ${basepackage}.dao.${className}Dao;
import com.diligrp.website.util.dao.BaseQuery;
import com.diligrp.website.util.web.PageTemplate;
import com.diligrp.website.util.domain.Result;
import com.diligrp.website.util.web.BeanUtils;

import java.sql.Timestamp;
import java.util.*;

<#include "/include/author.include"/>

@Service
public class ${className}ServiceImpl implements ${className}Service {
    private final static Logger LOG = LoggerFactory
            .getLogger(${className}ServiceImpl.class);

    @Autowired
    private ${className}Dao ${classNameLower}Dao;

    public Map<?, ?> preSave(${className} obj) throws DiliException {
        Map map = new HashMap();
        map.put("obj", obj);
        if(obj != null && obj.getId() != null){
            ${className} item = findOne(obj.getId());
            if(item != null){
                map.put("obj", item);
                return map;
            }
        }
        return map;
    }

    public ${className} findOne(Long pk) throws DiliException{
        return ${classNameLower}Dao.getById(pk);
    }

    public Boolean save(${className} ${classNameLower}) throws DiliException {
        return ${classNameLower}Dao.save(${classNameLower});
    }

    public Boolean update(${className} ${classNameLower}) throws DiliException {
        ${className} up = ${classNameLower}Dao.getById(${classNameLower}.getId());
        if (up == null) {
            return false;
        }
        up = BeanUtils.merge(up, ${classNameLower});
        return ${classNameLower}Dao.update(up);
    }

    public PageTemplate find(BaseQuery bq) throws DiliException {
    List<${className}> list = ${classNameLower}Dao.listByCondition(bq);
    int totalSize = ${classNameLower}Dao.countByCondition(bq);
    return  PageTemplate.create(bq, totalSize, list);
    }

    public Boolean del(Long id) throws DiliException {
        return ${classNameLower}Dao.deleteById(id);
    }

}
