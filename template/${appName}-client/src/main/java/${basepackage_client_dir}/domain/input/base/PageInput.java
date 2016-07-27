
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

/**
 * <B>Description</B>  <br />
 * <B>Copyright</B> Copyright (c) 2014 www.diligrp.com All rights reserved. <br />
 * 本软件源代码版权归地利集团,未经许可不得任意复制与传播.<br />
 * <B>Company</B> 地利集团
 *
 * @author Wujianjun
 * @createTime 16/5/9 10:34
 */
public class PageInput extends BaseInput {
    /** 页码,从1开始 */
    @NotNull(message="页码page不能为空") @Min(value=1,message="页码page值不能小于1")
    private int page = 1;
    /** 页大小，默认20 */
    @NotNull(message="页大小pageSize不能为空") @Min(value=1,message="页大小pageSize值不能小于1")
    private int pageSize = 20;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
