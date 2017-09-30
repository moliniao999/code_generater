<#--<#assign className = table.className/>-->
<#--<#assign classNameLower = className?uncap_first/>-->
<#include "/include/base.include"/>

package ${basepackage}.dao.impl;


import java.util.List;

import org.springframework.stereotype.Component;

import com.jUtils.dao.impl.BaseDaoImpl;
import ${basepackage}.dao.${className}Dao;


import ${basepackage}.domain.${className};

<#include "/include/author.include"/>

@Component
public class ${className}DaoImpl extends BaseDaoImpl<${className}> implements ${className}Dao{
    <#--public ${className} findOne(Long pk) {
        return getSqlSessionTemplate().selectOne("${classNameLower}.getByPK", pk);
    }

    public Boolean save(${className} ${classNameLower}) {
        return getSqlSessionTemplate().insert("${classNameLower}.save", ${classNameLower}) > 0;
    }

    public Boolean update(${className} obj){
        return getSqlSessionTemplate().update("${classNameLower}.update", obj) > 0;
    }

    public List<${className}> find(BaseQuery vo) {
        return getSqlSessionTemplate().selectList("${classNameLower}.get${className}ByVO", vo);
    }

    public Integer getCount(BaseQuery vo) {
        return getSqlSessionTemplate().selectOne("${classNameLower}.get${className}CountByVO", vo);
    }

    public Boolean del(${className} obj){
        return getSqlSessionTemplate().update("${classNameLower}.del", obj) > 0;
    }-->

}
