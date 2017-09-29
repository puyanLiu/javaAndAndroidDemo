.class public Lcom/alipay/android/app/logic/decorator/FirstRequestDecorator;
.super Lcom/alipay/android/app/logic/decorator/BaseDecorator;


# instance fields
.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>()V

    .line 32
    const-string/jumbo v0, "partner=\"\"&extern_token=\"GZ00UU9M9BtHDxKTeWXXwFWcG6bHe1mobilegwGZ00\"&logon_id=\"15997894630\"&biz_type=\"setting\"&biz_sub_type=\"\"&app_name=\"alipay\"&user_id=2088102140781758&page_id=0"

    iput-object v0, p0, Lcom/alipay/android/app/logic/decorator/FirstRequestDecorator;->c:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 32
    const-string/jumbo v0, "partner=\"\"&extern_token=\"GZ00UU9M9BtHDxKTeWXXwFWcG6bHe1mobilegwGZ00\"&logon_id=\"15997894630\"&biz_type=\"setting\"&biz_sub_type=\"\"&app_name=\"alipay\"&user_id=2088102140781758&page_id=0"

    iput-object v0, p0, Lcom/alipay/android/app/logic/decorator/FirstRequestDecorator;->c:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a([BLjava/lang/String;)[B
    .locals 8

    .prologue
    .line 44
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 45
    const-string/jumbo v1, " FirstRequestDecorator   todo  start "

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    .line 47
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v2

    .line 48
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 49
    invoke-virtual {v2}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 50
    const-string/jumbo v4, "tid"

    invoke-virtual {v2}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    const-string/jumbo v4, " FirstRequestDecorator   getuserAgent  start "

    invoke-static {v4}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-gt v4, v5, :cond_5

    .line 59
    :cond_0
    const-string/jumbo v4, "ua"

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v2, v6}, Lcom/alipay/android/app/IAppConfig;->a(Lcom/alipay/android/app/tid/TidInfo;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_1
    const-string/jumbo v2, "decay"

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v2, " FirstRequestDecorator   getuserAgent  end "

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v2, "has_alipay"

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/sys/DeviceInfo;->b(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    .line 70
    const-string/jumbo v2, "external_info"

    invoke-virtual {v3, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v2, "pa"

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    const-string/jumbo v2, "extok"

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;->a()Ljava/lang/String;

    move-result-object v2

    .line 76
    const-string/jumbo v4, "||"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "bpArgsError:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/util/LogUtils;->c(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v4, "ex"

    const-string/jumbo v5, "bpArgsError"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "bp:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_2
    const-string/jumbo v4, "lang"

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->C()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v4, "bp"

    invoke-virtual {v3, v4, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v2, "trid"

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    invoke-virtual {v2}, Lcom/alipay/android/app/MspInitAssistService;->getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    const-string/jumbo v4, "app_key"

    invoke-interface {v2}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_3
    const-string/jumbo v2, "utdid"

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "new_client_key"

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;)V

    .line 95
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 96
    const-string/jumbo v2, "sina"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "payment_setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 97
    const-string/jumbo v0, "type"

    const-string/jumbo v2, "cashier"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "method"

    const-string/jumbo v2, "main"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_2
    const-string/jumbo v0, "action"

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 107
    const-string/jumbo v0, "gzip"

    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/FirstRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->k()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FirstRequest:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 109
    const-string/jumbo v0, " FirstRequestDecorator   todo  end "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/alipay/android/app/logic/decorator/FirstRequestDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    if-eqz v0, :cond_8

    .line 111
    iget-object v0, p0, Lcom/alipay/android/app/logic/decorator/FirstRequestDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/FirstRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/android/app/logic/decorator/FirstRequestDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 114
    :goto_3
    return-object v0

    .line 53
    :cond_4
    invoke-virtual {v2}, Lcom/alipay/android/app/tid/TidInfo;->d()V

    goto/16 :goto_0

    .line 62
    :cond_5
    const-string/jumbo v4, "ua"

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v2, v6}, Lcom/alipay/android/app/IAppConfig;->a(Lcom/alipay/android/app/tid/TidInfo;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 99
    :cond_6
    const-string/jumbo v2, "setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 100
    const-string/jumbo v0, "type"

    const-string/jumbo v2, "setting"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "method"

    const-string/jumbo v2, "list"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 103
    :cond_7
    const-string/jumbo v0, "type"

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/FirstRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v0, "method"

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/FirstRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 114
    :cond_8
    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_3
.end method
