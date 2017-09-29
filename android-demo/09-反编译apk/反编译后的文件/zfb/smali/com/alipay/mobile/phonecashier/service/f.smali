.class final Lcom/alipay/mobile/phonecashier/service/f;
.super Ljava/lang/Object;
.source "PhoneCashierWearDeviceServiceImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;

.field private final synthetic g:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/f;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;

    iput-object p2, p0, Lcom/alipay/mobile/phonecashier/service/f;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

    iput-object p3, p0, Lcom/alipay/mobile/phonecashier/service/f;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/alipay/mobile/phonecashier/service/f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/phonecashier/service/f;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/phonecashier/service/f;->f:Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;

    iput-boolean p7, p0, Lcom/alipay/mobile/phonecashier/service/f;->g:Z

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/f;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->access$0()Z

    move-result v0

    if-nez v0, :cond_5

    .line 99
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/f;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/f;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/phonecashier/service/f;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/phonecashier/service/f;->f:Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;

    iget-boolean v5, p0, Lcom/alipay/mobile/phonecashier/service/f;->g:Z

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->access$1(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;Z)V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    const-string/jumbo v2, "mspParam"

    iget-object v3, p0, Lcom/alipay/mobile/phonecashier/service/f;->c:Landroid/content/Context;

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->access$2(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v2, "namespace"

    const-string/jumbo v3, "com.alipay.mobilecashier"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v2, "api_name"

    const-string/jumbo v3, "com.alipay.quickpay"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v2, "api_version"

    .line 108
    const-string/jumbo v3, "5.1.0"

    .line 107
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string/jumbo v2, "imei"

    iget-object v3, p0, Lcom/alipay/mobile/phonecashier/service/f;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v2, "params"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wwdc::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 114
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 122
    :goto_1
    const-string/jumbo v0, "mspParam"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/f;->c:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->access$2(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    .line 127
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    const-string/jumbo v0, "params"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v0, "success"

    const-string/jumbo v1, ""

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    const-string/jumbo v0, "msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    const-string/jumbo v0, "bicResult"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "forceOver"

    .line 134
    const-string/jumbo v2, "false"

    .line 133
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const-string/jumbo v1, "bizErroMsg"

    .line 138
    const-string/jumbo v2, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5(we01)"

    .line 136
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/f;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

    sget-object v3, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->FORCE_QUIT:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    invoke-interface {v2, v3, v1, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;->onProcessFailed(Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 149
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 115
    :catch_1
    move-exception v0

    .line 116
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    .line 117
    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 116
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 118
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/f;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->NET_ERROR:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    .line 119
    const-string/jumbo v3, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5(we04)"

    .line 118
    invoke-interface {v1, v2, v3, v6}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;->onProcessFailed(Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 120
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v1, v6

    goto/16 :goto_1

    .line 141
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/f;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;->onProcessSuccess(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 144
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    const-string/jumbo v0, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5(we02)"

    .line 147
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/f;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

    sget-object v3, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->SYS_ERROR:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    const-string/jumbo v4, "bicResult"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1, v3, v0, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;->onProcessFailed(Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 153
    :cond_5
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/f;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->SYS_ERROR:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    .line 155
    const-string/jumbo v2, "\u64cd\u4f5c\u88ab\u53d6\u6d88\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5(we03)"

    .line 154
    invoke-interface {v0, v1, v2, v6}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;->onProcessFailed(Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method
