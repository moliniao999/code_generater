package ${basepackage}.web.utils;

import com.diligrp.website.util.security.Validator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;
import java.util.regex.Pattern;

/**
 * <B>Description</B> TODO <br />
 * <B>Copyright</B> Copyright (c) 2014 www.diligrp.com All rights reserved. <br />
 * 本软件源代码版权归地利集团,未经许可不得任意复制与传播.<br />
 * <B>Company</B> 地利集团
 * 
 * @createTime Jun 25, 2014 11:13:14 AM
 * @author wujianjun
 */
public class XSSFilter implements Filter {

	private String errorPage;
	private Pattern xssPattern;
	private List<String> excludeField;
	private final String contentType = "multipart/form-data; boundary=";
	private final static Logger LOG = LoggerFactory.getLogger(XSSFilter.class);

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.Filter#destroy()
	 */
	@Override
	public void destroy() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest,
	 * javax.servlet.ServletResponse, javax.servlet.FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		if ((Validator.isNull(request.getContentType()) || !request
				.getContentType().startsWith(contentType))
				&& containsXSSChar((HttpServletRequest) request)) {
			((HttpServletResponse) response).sendRedirect(errorPage);
			return;
		}
		chain.doFilter(request, response);
	}

	@SuppressWarnings("unchecked")
	private boolean containsXSSChar(HttpServletRequest request) {
		Enumeration<String> names = request.getHeaderNames();
		while (names.hasMoreElements()) {
			String headerVal = request.getHeader(names.nextElement());
			if (Validator.isMatch(xssPattern, headerVal)) {
				return true;
			}
		}
		names = request.getParameterNames();
		String[] prameterVal = null;
		String tmpName = null;
		while (names.hasMoreElements()) {
			tmpName = names.nextElement();
			if (!Validator.isEmpty(excludeField)
					&& excludeField.contains(tmpName)) {
				continue;
			}
			prameterVal = request.getParameterValues(tmpName);
			for (String val : prameterVal) {
				if (Validator.isFind(xssPattern, val)) {
					LOG.error("存在限制字符.[fieldName={},fieldValue={}]", tmpName,
							prameterVal);
					return true;
				}
			}
		}
		return false;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.Filter#init(javax.servlet.FilterConfig)
	 */
	@Override
	public void init(FilterConfig config) throws ServletException {
		String tmp = config.getInitParameter("ERROR-PAGE");
		if (!Validator.isEmpty(tmp)) {
			errorPage = tmp.trim();
		}
		tmp = config.getInitParameter("EXCLUDE-FIELD");
		if (!Validator.isEmpty(tmp)) {
			excludeField = Arrays.asList(tmp.trim().split(","));
		}
		tmp = config.getInitParameter("XSS-PATTERN");
		xssPattern = Pattern.compile((!Validator.isEmpty(tmp)) ? tmp.trim()
				: "[><\\/\\\\;&]");
	}

}
