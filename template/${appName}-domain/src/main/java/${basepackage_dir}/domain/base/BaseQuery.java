package ${basepackage}.domain.base;

import java.util.HashMap;
import java.util.Map;

public class BaseQuery {

    /**
     * 当前页，从1开始，且 >= 1
     */
    private Integer currPage;

    /**
     * 每页显示的数量 >= 1
     */
    private Integer pageSize;

    private Map<String, String> param = new HashMap<String, String>();

    private Map<String, Object> args = new HashMap<String, Object>();

    public Integer getCurrPage() {
        if (currPage == null || currPage < 0) {
            currPage = 0;
        }
        return currPage;
    }

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public Integer getPageSize() {
        if (pageSize == null || pageSize < 1) {
            pageSize = 20;
        }
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    /**
     * 查询开始的位置
     *
     * @return
     */
    public int getStartRow() {
        int sr = getCurrPage() * getPageSize();
        return sr;
    }

    /**
     * get value of BaseQuery.param
     * @return the param
     * @createTime 2014年5月4日 下午1:42:38
     * @author Wang22
     */
    public Map<String, String> getParam() {
        return param;
    }

    /**
     * set value of BaseQuery.param
     * @param param the param to set
     * @createTime 2014年5月4日 下午1:42:38
     * @author Wang22
     * @return
     */
    public BaseQuery setParam(Map<String, String> param) {
        this.param = param;
        return this;
    }

    /**
     * add value of BaseQuery.param
     * @param key the key to set
     * @param value the value to set
     * @createTime 2014年5月4日 下午1:42:38
     * @author Wang22
     * @return this instance
     */
    public BaseQuery addParam(String key, String value) {
        this.param.put(key, value);
        return this;
    }

    /**
     * add value of BaseQuery.param
     * @param param the param to set
     * @createTime 2014年5月4日 下午1:42:38
     * @author Wang22
     * @return this instance
     */
    public BaseQuery addParam(Map<String, String> param) {
        this.param.putAll(param);
        return this;
    }

    /**
     * get value of BaseQuery.args
     * @return the args
     * @createTime 2014年9月26日 上午11:30:04
     * @author Wang22
     */
    public Map<String, Object> getArgs() {
        return args;
    }

    /**
     * set value of BaseQuery.args
     * @param args the args to set
     * @createTime 2014年9月26日 上午11:30:04
     * @author Wang22
     */
    public void setArgs(Map<String, Object> args) {
        this.args = args;
    }


    public void addArgs(String key, Object val){
        this.args.put(key, val);
    }

    /*
     * (non-Javadoc)
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("BaseQuery [currPage=");
        builder.append(currPage);
        builder.append(", pageSize=");
        builder.append(pageSize);
        builder.append(", param=");
        builder.append(param);
        builder.append("]");
        return builder.toString();
    }

}
