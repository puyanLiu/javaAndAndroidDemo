.class public Lcom/alipay/android/app/logic/decorator/RpcRequestDecorator;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/android/app/logic/request/RequestConfig;Ljava/lang/String;I)Lcom/alipay/android/app/data/RpcRequestData;
    .locals 6

    .prologue
    .line 40
    new-instance v0, Lcom/alipay/android/app/data/RpcRequestData;

    invoke-direct {v0}, Lcom/alipay/android/app/data/RpcRequestData;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/alipay/android/app/logic/request/RequestConfig;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/RpcRequestData;->b(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/alipay/android/app/logic/request/RequestConfig;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/RpcRequestData;->c(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/alipay/android/app/logic/request/RequestConfig;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/RpcRequestData;->d(Ljava/lang/String;)V

    .line 44
    const/16 v1, 0x3e9

    if-eq p2, v1, :cond_0

    const/16 v1, 0x3ff

    if-eq p2, v1, :cond_0

    const/16 v1, 0x7d1

    if-ne p2, v1, :cond_1

    .line 47
    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/android/app/logic/decorator/RpcRequestDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/RpcRequestData;->e(Ljava/lang/String;)V

    .line 51
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/RpcRequestData;->f(Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/RpcRequestData;->g(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/alipay/android/app/logic/request/RequestConfig;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/RpcRequestData;->h(Ljava/lang/String;)V

    .line 55
    return-object v0

    .line 49
    :cond_1
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v4, "type"

    invoke-virtual {p0}, Lcom/alipay/android/app/logic/request/RequestConfig;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "method"

    invoke-virtual {p0}, Lcom/alipay/android/app/logic/request/RequestConfig;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "action"

    invoke-virtual {v1, v4, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v3, "gzip"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    const-string/jumbo v3, "bp"

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/logic/request/RequestConfig;->q()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "uac"

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/IAppConfig;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/logic/request/RequestConfig;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "session"

    invoke-virtual {p0}, Lcom/alipay/android/app/logic/request/RequestConfig;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v3, "tid"

    invoke-virtual {v2}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RPC common request\u53c2\u6570:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/RpcRequestData;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/alipay/android/app/logic/request/RequestConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    const-string/jumbo v2, " FirstRequestDecorator   todo  start "

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    .line 93
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v3

    .line 94
    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 95
    invoke-virtual {v3}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 96
    const-string/jumbo v5, "tid"

    invoke-virtual {v3}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "get tid time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "msms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 106
    const-string/jumbo v5, " FirstRequestDecorator   getuserAgent  start "

    invoke-static {v5}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 109
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 111
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-gt v5, v6, :cond_5

    .line 112
    :cond_0
    const-string/jumbo v5, "ua"

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v3, v7}, Lcom/alipay/android/app/IAppConfig;->a(Lcom/alipay/android/app/tid/TidInfo;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_1
    const-string/jumbo v3, "decay"

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "get ua time:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "msms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 122
    const-string/jumbo v0, "lang"

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 125
    const-string/jumbo v0, "pa"

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 128
    invoke-static {p1}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string/jumbo v0, "extok"

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 136
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;->a()Ljava/lang/String;

    move-result-object v3

    .line 137
    const-string/jumbo v5, "||"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "bpArgsError:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/app/util/LogUtils;->c(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v5, "ex"

    const-string/jumbo v6, "bpArgsError"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "bp:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_2
    const-string/jumbo v5, "bp"

    invoke-virtual {v4, v5, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v3, " FirstRequestDecorator   getuserAgent  end "

    invoke-static {v3}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v3, "has_alipay"

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/app/sys/DeviceInfo;->b(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    .line 145
    const-string/jumbo v3, "external_info"

    invoke-virtual {v4, v3, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v3, "trid"

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v3

    .line 148
    if-eqz v3, :cond_3

    .line 149
    invoke-virtual {v3}, Lcom/alipay/android/app/MspInitAssistService;->getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v3

    .line 150
    if-eqz v3, :cond_3

    .line 151
    const-string/jumbo v5, "app_key"

    invoke-interface {v3}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_3
    const-string/jumbo v3, "utdid"

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get utdid time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "msms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v0, "new_client_key"

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 165
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HardwarePayUtil init time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "msms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 169
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 170
    const-string/jumbo v1, "sina"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "payment_setting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 171
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "cashier"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "method"

    const-string/jumbo v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_2
    const-string/jumbo v1, "action"

    invoke-virtual {v4, v1, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 181
    const-string/jumbo v0, "gzip"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "RPC request\u53c2\u6570:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 183
    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_4
    invoke-virtual {v3}, Lcom/alipay/android/app/tid/TidInfo;->d()V

    goto/16 :goto_0

    .line 115
    :cond_5
    const-string/jumbo v5, "ua"

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v3, v7}, Lcom/alipay/android/app/IAppConfig;->a(Lcom/alipay/android/app/tid/TidInfo;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 173
    :cond_6
    const-string/jumbo v1, "setting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 174
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "setting"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v1, "method"

    const-string/jumbo v2, "list"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 177
    :cond_7
    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/alipay/android/app/logic/request/RequestConfig;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v1, "method"

    invoke-virtual {p0}, Lcom/alipay/android/app/logic/request/RequestConfig;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
