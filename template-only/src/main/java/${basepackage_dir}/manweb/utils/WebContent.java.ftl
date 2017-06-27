package ${basepackage}.web.utils;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/**
 * MVC容器
 * User: weili (weili@gmail.com)
 * Date: 13-9-25 上午11:12
 */
public class WebContent {

    private static final ThreadLocal<Map<String, Object>> local = new ThreadLocal<Map<String, Object>>();

    public static HttpServletRequest getRequest() {
        return (HttpServletRequest) get("req");
    }

    public static HttpServletResponse getResponse() {
        return (HttpServletResponse) get("resp");
    }

    /**
     * 得到容器
     * @return
     */
    public static ApplicationContext getApplicationContext() {
        HttpServletRequest req = (HttpServletRequest) get("req");
        ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(req.getSession().getServletContext());
        return context;
    }

    public static void put(HttpServletRequest request) {
        put("req", request);
    }

    public static void put(HttpServletResponse response) {
        put("resp", response);
    }

    public static void put(String key, Object obj) {
        Map<String, Object> map = local.get();
        if (map == null) {
            map = new HashMap<String, Object>();
            local.set(map);
        }
        map.put(key, obj);
    }

    public static Object get(String key) {
        Map<String, Object> map = local.get();
        if (map == null) {
            return null;
        }
        return map.get(key);
    }

    public static void clean() {
        local.set(null);
    }
    /**
     * 设置COOKIE
     * @param key
     * @param val
     */
    public static void setCookie(String key, String val, Integer maxAge){
        Cookie cookie = null;
        try {
            cookie = new Cookie(key, URLEncoder.encode(val, "utf-8"));
            String domain = WebContent.getRequest().getServerName();
            if (!"localhost".equals(domain.toLowerCase())) {
                cookie.setDomain(WebContent.getRequest().getServerName());
            }
            cookie.setMaxAge(maxAge);
            cookie.setPath("/");
            HttpServletResponse resp = WebContent.getResponse();
            resp.addCookie(cookie);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
    }
}
