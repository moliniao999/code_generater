<#include "/include/base.include"/>
package ${basepackage}.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import ${basepackage}.domain.${className};
import ${basepackage}.service.${className}Service;
import ${basepackage}.web.utils.WebUtils;
import ${basepackage}.exception.DiliException;

import com.jUtils.web.BeanUtils;
import com.jUtils.web.BaseController;
import com.jUtils.dao.BaseQuery;
import com.jUtils.web.PageTemplate;
import com.jUtils.domain.Result;

import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

<#include "/include/author.include"/>

@Controller
@RequestMapping("/${classNameLower}")
public class ${className}RestFulApi  {
    private final static Logger LOG = LoggerFactory
            .getLogger(${className}RestFulApi.class);

    @Autowired
    private ${className}Service ${classNameLower}Service;


}
