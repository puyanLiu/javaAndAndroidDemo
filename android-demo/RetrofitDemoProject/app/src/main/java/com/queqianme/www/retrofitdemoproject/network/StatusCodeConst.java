package com.queqianme.www.retrofitdemoproject.network;

/**
 * Created by liupuyan on 2017/12/26.
 * 状态码常量
 *
 * 负 negative
 * 正 positive
 */

public class StatusCodeConst {
    // 0 成功
    public static final Integer CODE_0 = 0;
    // -1 未知错误
    public static final Integer NEGATIVE_CODE_1 = -1;
    // -101 请求参数错误
    public static final Integer NEGATIVE_CODE_101 = -101;
    // -103 重新登录
    public static final Integer NEGATIVE_CODE_103 = -103;
    // 网络异常
    public static final String NO_WIFI = "网络异常，请检查您的网络连接";
}
