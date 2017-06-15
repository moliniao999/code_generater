package com.yqyw.activity.sdk.service.impl;

import com.alibaba.fastjson.TypeReference;
import com.yqyw.activity.sdk.domain.input.*;
import com.yqyw.activity.sdk.domain.input.base.PageInput;
import com.yqyw.activity.sdk.domain.output.*;
import com.yqyw.activity.sdk.domain.output.base.BaseOutput;
import com.yqyw.activity.sdk.service.ActivityService;

import java.util.List;

/**
 * Created by zhous_000 on 2016/5/6.
 */
public class ActivityServiceImpl extends BaseServiceImpl implements ActivityService{

    public ActivityServiceImpl(String token) {
        super(token);
    }

//    public BaseOutput<Class> getActivityOut(Class aClass, BaseInput<Object> input, MethodEnum method) {
//        LOGGER.info("正在调取活动接口" + method.getMethodname());
//        BaseOutput<Class> out = super.httpPost(method.getMethod(), input,
//                new TypeReference<BaseOutput<Class>>() {});
//        return out;
//    }
//
//    public PageOutput<Class> getActivityPageOut(Class aClass, BaseInput<Object> input, MethodEnum method) {
//        LOGGER.info("正在调取活动接口" + method.getMethodname());
//        PageOutput<Class> out = super.httpPost(method.getMethod(), input,
//                new TypeReference<PageOutput<Class>>() {});
//        return out;
//    }


    public PageOutput<List<ActivityInfo>> getHotActivitys(PageInput input) {
        LOGGER.info("获取热门活动接口--");
        return super.httpPost("/api/activity/getHotActivitys.do", input, new TypeReference<PageOutput<List<ActivityInfo>>>(){});
    }

    @Override
    public BaseOutput<ActivityBaseInfo> getLastActivity(GetLastActivityInput input) {
        LOGGER.info("获取最近的活动接口--");
        BaseOutput<ActivityBaseInfo> out = super.httpPost("/api/activity/getLastActivity.do", input,
                new TypeReference<BaseOutput<ActivityBaseInfo>>() {});
        return out;
    }

    @Override
    public BaseOutput<Integer> submitActivityApply(SubmitActivityApplyInput input) {
        LOGGER.info("提交活动报名接口--");
        BaseOutput<Integer> out = super.httpPost("/api/activity/submitActivityApply.do", input,
                new TypeReference<BaseOutput<Integer>>() {});
        return out;

    }

    @Override
    public BaseOutput<Integer> cancelActivityApply(CancelActivityApplyInput input) {
        LOGGER.info("取消活动报名接口--");
        BaseOutput<Integer> out = super.httpPost("/api/activity/cancelActivityApply.do", input,
                new TypeReference<BaseOutput<Integer>>() {});
        return out;
    }

    @Override
    public BaseOutput<Integer> appraiseActivity(AppraiseActivityInput input) {
        LOGGER.info("活动评价接口--");
        BaseOutput<Integer> out = super.httpPost("/api/activity/appraiseActivity.do", input,
                new TypeReference<BaseOutput<Integer>>() {});
        return out;
    }

    @Override
    public PageOutput<List<ApplyBaseInfo>> getActivitysByUserId(GetActivitysByUserIdInput input) {
        LOGGER.info("获取我参加的活动接口--");
        PageOutput<List<ApplyBaseInfo>> out = super.httpPost("/api/activity/getActivitysByUserId.do", input,
                new TypeReference<PageOutput<List<ApplyBaseInfo>>>() {});
        return out;
    }

    public BaseOutput<GetActivityDetailOutput> getActivityDetail(GetActivityDetailInput input) {
        LOGGER.info("活动详情接口--");
        BaseOutput<GetActivityDetailOutput> out = super.httpPost("/api/activity/getActivityDetail.do", input.getActivityId(),
                new TypeReference<BaseOutput<GetActivityDetailOutput>>() {});
        return out;
    }

    @Override
    public PageOutput<List<BaseActivity>> getBeforeActivitys(PageInput input) {
        LOGGER.info("获取往期活动接口--");
        PageOutput<List<BaseActivity>> out = super.httpPost("/api/activity/getBeforeActivitys.do", input,
                new TypeReference<PageOutput<List<BaseActivity>>>() {});
        return out;
    }


    @Override
    public BaseOutput<Integer> isAlreadyApply(IsAlreadyApplyInput input) {
        LOGGER.info("判断用户是否已经报名--");
        BaseOutput<Integer> out = super.httpPost("/api/activity/isAlreadyApply.do", input,
                new TypeReference<BaseOutput<Integer>>() {});
        return out;
    }

    @Override
    public BaseOutput<Integer> existsActivityOfMarket(ExistsActivityOfMarketInput input) {
        LOGGER.info("根据市场id判断是否有关联的活动--");
        BaseOutput<Integer> out = super.httpPost("/api/activity/existsActivityOfMarket.do", input,
                new TypeReference<BaseOutput<Integer>>() {});
        return out;
    }


}
