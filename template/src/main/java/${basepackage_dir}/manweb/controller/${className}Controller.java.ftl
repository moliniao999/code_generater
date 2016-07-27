<#include "/include/base.include"/>
package ${basepackage}.manweb.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import ${basepackage}.domain.${className};
import ${basepackage}.service.${classNameLower}.${className}Service;
import ${basepackage}.manweb.utils.WebUtils;
import ${basepackage}.exception.DiliException;

import com.diligrp.website.util.web.BeanUtils;
import com.diligrp.website.util.web.BaseController;
import com.diligrp.website.util.dao.BaseQuery;
import com.diligrp.website.util.web.PageTemplate;
import com.diligrp.website.util.domain.Result;

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
public class ${className}Controller extends BaseController {
    private final static Logger LOG = LoggerFactory
            .getLogger(${className}Controller.class);

    @Autowired
    private ${className}Service ${classNameLower}Service;

    @RequestMapping(value = "/preSave", method = RequestMethod.GET)
    public ModelAndView preSave(${className} obj, Model model, HttpServletRequest req){
        ModelAndView view = new ModelAndView("redirect:" + WebUtils.fetchReferer(req));
        try{
            Map<?,?> map = ${classNameLower}Service.preSave(obj);
            return toVM("/${classNameLower}/add", map);
        }catch (DiliException e){
            view.addObject("success", "false");
            view.addObject("msg", e.getMessage());
            return view;
        }
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(${className} val, Model model){
        ModelAndView view = new ModelAndView("redirect:/${classNameLower}/list.do");
        Map map = new HashMap();
        Boolean op = false;
        try{
            if(val != null && val.getId() != null){
                ${className} up = (${className})${classNameLower}Service.findOne(val.getId());
                up = BeanUtils.merge(up, val);
                op = ${classNameLower}Service.update(up);
            } else {
                op = ${classNameLower}Service.save(val);
            }
        } catch (DiliException e) {
            op = false;
        }

        view.addObject("obj", map);
        view.addObject("success", op);
        view.addObject("msg", op ? "保存成功!" : "保存失败!");
        return view;
    }

    @RequestMapping("/list")
    public ModelAndView list(BaseQuery bq, Model model) {
        PageTemplate list = null;
        try{
            list = ${classNameLower}Service.find(bq);
        } catch (DiliException e) {
            list = PageTemplate.create(bq, 0, new ArrayList());
        }
        return toVM("/${classNameLower}/list", list);
    }

    @RequestMapping(value = "/del")
    public ModelAndView del(Long id, Model model){
        ModelAndView view = new ModelAndView("redirect:/${classNameLower}/list.do");
        Boolean op = false;
        try{
            op = ${classNameLower}Service.del(id);
        } catch (DiliException e) {}
        view.addObject("success", op);
        view.addObject("msg", op ? "删除成功!" : "删除失败!");
        return view;
    }

    @RequestMapping("/show")
    public ModelAndView show(${className} val, Model model, HttpServletRequest req) {
        ModelAndView view = new ModelAndView("redirect:" + WebUtils.fetchReferer(req));
        if (val == null && val.getId() == null) {
            return toVM("/common/error404");
        }
        try{
            ${className} item = ${classNameLower}Service.findOne(val.getId());
            if (item == null) {
                view.addObject("success", "false");
                view.addObject("msg", "数据已被删除!");
                return view;
            }
            return toVM("/${classNameLower}/show", item);
        } catch (DiliException e) {
            view.addObject("success", "false");
            view.addObject("msg", e.getMessage());
            return view;
        }
    }


    @Override
    protected Map<String, Object> getDefaultContext() {
        Map<String, Object> map = super.getDefaultContext();
        HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        map.put("req", req);
        return map;
    }
}
