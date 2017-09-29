.class public Lcom/alipay/android/app/ui/quickpay/data/MiniFrameFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/data/MiniFrameFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;
    .locals 4

    .prologue
    .line 43
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    .line 46
    const-string/jumbo v2, "form"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;-><init>()V

    .line 49
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->b()V

    .line 50
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->b(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    .line 51
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    .line 52
    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/JsonUtil;->b(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->d(Lcom/alipay/android/app/json/JSONObject;)V

    .line 76
    :goto_0
    return-object v0

    .line 55
    :cond_0
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->a(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    move-result-object v2

    .line 58
    sget-object v3, Lcom/alipay/android/app/ui/quickpay/data/MiniFrameFactory$1;->a:[I

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 70
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/data/MiniFrameFactory;->a(Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :pswitch_0
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;-><init>()V

    .line 64
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->d(Lcom/alipay/android/app/json/JSONObject;)V

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->g()V

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/data/MiniFrameFactory;->a(Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    const-string/jumbo v0, "de"

    const-string/jumbo v1, "0060010"

    const-string/jumbo v2, "data_exception"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "mini_app_error"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string/jumbo v0, "msg"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "error_msg"

    invoke-virtual {p0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const-string/jumbo v0, "error_msg"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 89
    :cond_1
    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public static a(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;)V
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->b()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    .line 97
    const-string/jumbo v0, "form"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string/jumbo v0, "form"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->g(Ljava/lang/String;)V

    .line 104
    :cond_0
    const-string/jumbo v0, "end_code"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string/jumbo v0, "end_code"

    const-string/jumbo v1, "0"

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->a(Ljava/lang/String;)V

    .line 107
    :cond_1
    const-string/jumbo v0, "user_id"

    const-string/jumbo v1, ""

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->d(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v0, "result"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    const-string/jumbo v0, "result"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :try_start_0
    const-string/jumbo v1, "result"

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->b(Ljava/lang/String;)V

    .line 119
    :cond_2
    const-string/jumbo v0, "memo"

    const-string/jumbo v1, ""

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->c(Ljava/lang/String;)V

    .line 120
    return-void

    .line 114
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
