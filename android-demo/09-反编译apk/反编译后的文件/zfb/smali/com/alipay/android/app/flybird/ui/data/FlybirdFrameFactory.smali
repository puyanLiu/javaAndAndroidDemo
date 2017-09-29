.class public Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
    .locals 6

    .prologue
    .line 50
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "time"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v0, "time"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->d(Ljava/lang/String;)V

    .line 54
    :cond_0
    new-instance v3, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-direct {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;-><init>()V

    .line 55
    const-string/jumbo v0, "tpl"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 56
    const-string/jumbo v0, "tpl"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->b(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "tplid"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-string/jumbo v0, "tplid"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a(Ljava/lang/String;)V

    .line 62
    :cond_1
    const-string/jumbo v0, "data"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const-string/jumbo v0, "data"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 67
    :cond_2
    const-string/jumbo v0, "onload"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    const-string/jumbo v0, "onload"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c(Lcom/alipay/android/app/json/JSONObject;)V

    .line 70
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c(I)V

    .line 98
    :cond_4
    :goto_0
    const-string/jumbo v0, "keyboard"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99
    const-string/jumbo v0, "keyboard"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e(I)V

    .line 102
    :cond_5
    const-string/jumbo v0, "noBack"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    const-string/jumbo v0, "noBack"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a(I)V

    .line 107
    :cond_6
    const-string/jumbo v0, "end_code"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 108
    const-string/jumbo v0, "end_code"

    const-string/jumbo v1, "0"

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c(Ljava/lang/String;)V

    .line 111
    :cond_7
    const-string/jumbo v0, "result"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 112
    const-string/jumbo v0, "result"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :try_start_0
    const-string/jumbo v1, "result"

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_1
    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d(Ljava/lang/String;)V

    .line 122
    :cond_8
    const-string/jumbo v0, "memo"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 123
    const-string/jumbo v0, "memo"

    const-string/jumbo v1, ""

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e(Ljava/lang/String;)V

    .line 125
    :cond_9
    const-string/jumbo v0, "pkey"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 126
    const-string/jumbo v0, "pkey"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/app/IAppConfig;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->setRsaPublicKey(Ljava/lang/String;)V

    .line 128
    :cond_a
    const-string/jumbo v0, "tid"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "client_key"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 129
    const-string/jumbo v0, "client_key"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    const-string/jumbo v1, "tid"

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 132
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    .line 133
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v4

    .line 134
    invoke-virtual {v4, v1}, Lcom/alipay/android/app/tid/TidInfo;->a(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v4, v0}, Lcom/alipay/android/app/tid/TidInfo;->b(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v4, v2}, Lcom/alipay/android/app/tid/TidInfo;->a(Landroid/content/Context;)V

    .line 140
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "flybirdwindowframe id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 144
    return-object v3

    .line 72
    :cond_c
    const-string/jumbo v0, "wnd"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 73
    const-string/jumbo v0, "wnd"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 75
    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->b(Lcom/alipay/android/app/json/JSONObject;)V

    .line 77
    const-string/jumbo v1, "dlg"

    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 78
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c(I)V

    .line 85
    :cond_d
    :goto_2
    const-string/jumbo v0, "onload"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    const-string/jumbo v0, "onload"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c(Lcom/alipay/android/app/json/JSONObject;)V

    goto/16 :goto_0

    .line 80
    :cond_e
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c(I)V

    .line 81
    const-string/jumbo v0, "ajax"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 82
    const-string/jumbo v0, "ajax"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d(I)V

    goto :goto_2

    .line 88
    :cond_f
    const-string/jumbo v0, "page"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 89
    const-string/jumbo v0, "page"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 90
    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->b(Lcom/alipay/android/app/json/JSONObject;)V

    .line 91
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c(I)V

    goto/16 :goto_0

    .line 92
    :cond_10
    const-string/jumbo v0, "form"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 93
    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->r()V

    goto/16 :goto_0

    .line 95
    :cond_11
    new-instance v3, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "de"

    const-string/jumbo v4, "DATA_DATA_EXCEPTION"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "data_exception:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    const-string/jumbo v0, ""

    :goto_3
    invoke-static {v1, v4, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "mini_app_error"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "msg"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "error_msg"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v0, "error_msg"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v0, v1

    :cond_13
    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_14
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 116
    :catch_0
    move-exception v1

    .line 117
    const-string/jumbo v4, "ex"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 126
    :cond_15
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "\u7f3a\u5c11RSA-KEY\u6570\u636e"

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
