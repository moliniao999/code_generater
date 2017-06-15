<#include "/include/base.include"/>
package ${basepackage}.exception;

import java.io.Serializable;
import com.diligrp.website.util.domain.BaseDomain;
import java.util.*;
import java.sql.Timestamp;


<#include "/include/author.include"/>

public class DiliException extends Exception {
    private Map<?, ?> map = null;

    public DiliException(){}

    public DiliException(String msg){
        super(msg);
    }

    public DiliException(String msg, Map<?, ?> map){
        super(msg);
    }


    public Map<?, ?> getMap() {
        return map;
    }

    public void setMap(Map<?, ?> map) {
        this.map = map;
    }
}