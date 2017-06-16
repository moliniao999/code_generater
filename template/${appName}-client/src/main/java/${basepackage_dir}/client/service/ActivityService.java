/*
package com.yqyw.activity.sdk.service;

import com.yqyw.activity.sdk.domain.input.*;
import com.yqyw.activity.sdk.domain.input.base.PageInput;
import com.yqyw.activity.sdk.domain.output.*;
import com.yqyw.activity.sdk.domain.output.base.BaseOutput;

import java.util.List;

*/
/**
 * Created by zhous_000 on 2016/5/6.
 *//*

public interface ActivityService extends BaseService{

//    */
/**
//    * 获取接口输出对象
//     * *//*

//    public BaseOutput<Class> getActivityOut(Class aClass, BaseInput<Object> input,MethodEnum method);
//
//    */
/**
//     *获取接口输出分页对象
//     * @return
//     *//*

//    public PageOutput<Class> getActivityPageOut(Class aClass, BaseInput<Object> input, MethodEnum method);

    PageOutput<List<ActivityInfo>> getHotActivitys(PageInput input);

    */
/**
     *获取进去活动信息
     * @param input
     * @return
     *//*

    public BaseOutput<ActivityBaseInfo> getLastActivity(GetLastActivityInput input);
    */
/**
     *提交活动报名申请
     * @param input
     * @return
     *//*

    public BaseOutput<Integer> submitActivityApply(SubmitActivityApplyInput input);
    */
/**
     *取消活动
     * @param input
     * @return
     *//*

    public BaseOutput<Integer> cancelActivityApply(CancelActivityApplyInput input);


    */
/**
     *根据用户获取活动
     * @param input
     * @return
     *//*

    public PageOutput<List<ApplyBaseInfo>> getActivitysByUserId(GetActivitysByUserIdInput input);

    */
/**
     *获取活动详情
     * @param activityId
     * @return
     *//*

    public BaseOutput<GetActivityDetailOutput> getActivityDetail(GetActivityDetailInput activityId);

    */
/**
     *获取往期活动
     * @param
     * @return
     *//*

    public PageOutput<List<BaseActivity>> getBeforeActivitys(PageInput input);

    */
/**
     *评价活动
     * @param
     * @return
     *//*

    public BaseOutput<Integer> appraiseActivity(AppraiseActivityInput input);

    */
/**
     *用户在一个活动中是否已经报名
     * @param
     * @return
     *//*

    public BaseOutput<Integer> isAlreadyApply(IsAlreadyApplyInput input);


    */
/**
     *根据市场id判断是否有关联的活动
     * @param
     * @return
     *//*

    public BaseOutput<Integer> existsActivityOfMarket(ExistsActivityOfMarketInput input);
}
*/
