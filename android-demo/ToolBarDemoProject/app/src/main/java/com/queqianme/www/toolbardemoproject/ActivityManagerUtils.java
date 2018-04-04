package com.queqianme.www.toolbardemoproject;

import android.app.Activity;

import java.util.Stack;

/**
 * Created by liupuyan on 2017/12/26.
 *
 * Activity管理类
 */

public class ActivityManagerUtils {
    private static Stack<Activity> activityStack;
    private static ActivityManagerUtils instance;

    private ActivityManagerUtils() {
    }

    /**
     * 单一实例
     * @return
     */
    public static ActivityManagerUtils getActivityManager() {
        if (instance == null) {
            instance = new ActivityManagerUtils();
        }
        return instance;
    }

    public int getActivityStackSize() {
        return activityStack.size();
    }

    /**
     * 添加Activity到堆栈
     * @param activity
     */
    public void addActivity(Activity activity) {
        if (activityStack == null) {
            activityStack = new Stack<>();
        }
        activityStack.add(activity);
    }

    /**
     * 获取当前Activity（堆栈中最后一个压入的）
     */
    public Activity currentActivity(){
        Activity activity = activityStack.lastElement();
        return activity;
    }

    /**
     * 结束当前Activity（堆栈中最后一个压入的）
     */
    public void finishActivity(){
        Activity activity = activityStack.lastElement();
        if(activity != null){
            activity.finish();
        }
    }

    /**
     * 结束指定的Activity
     */
    public void finishActivity(Activity activity){
        if(activity != null){
            activityStack.remove(activity);
            activity.finish();
        }
    }

    /**
     * 结束指定类名的Activity
     */
    public void finishActivity(Class<?> cls){
        for (Activity activity : activityStack) {
            if(activity.getClass().equals(cls) ){
                finishActivity(activity);
            }
        }
    }

    /**
     * 结束所有Activity
     */
    public void finishAllActivity(){
        for (int i = 0, size = activityStack.size(); i < size; i++){
            if (null != activityStack.get(i)){
                activityStack.get(i).finish();
            }
        }
        activityStack.clear();
    }
}
