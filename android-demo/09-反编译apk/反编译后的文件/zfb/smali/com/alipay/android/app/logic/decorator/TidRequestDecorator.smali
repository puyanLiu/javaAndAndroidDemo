.class public Lcom/alipay/android/app/logic/decorator/TidRequestDecorator;
.super Lcom/alipay/android/app/logic/decorator/BaseDecorator;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a([BLjava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 36
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 38
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    .line 39
    const-string/jumbo v2, "pa"

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-gt v2, v3, :cond_1

    .line 42
    :cond_0
    const-string/jumbo v2, "ua"

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v5, v4}, Lcom/alipay/android/app/IAppConfig;->a(Lcom/alipay/android/app/tid/TidInfo;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    const-string/jumbo v2, "utdid"

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 51
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lcom/alipay/android/app/logic/decorator/TidRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v3}, Lcom/alipay/android/app/logic/request/RequestConfig;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v2, "method"

    iget-object v3, p0, Lcom/alipay/android/app/logic/decorator/TidRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v3}, Lcom/alipay/android/app/logic/request/RequestConfig;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 55
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/TidRequestDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/TidRequestDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/TidRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    .line 57
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/TidRequestDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 59
    :goto_1
    return-object v0

    .line 45
    :cond_1
    const-string/jumbo v2, "ua"

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v5, v4}, Lcom/alipay/android/app/IAppConfig;->a(Lcom/alipay/android/app/tid/TidInfo;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1
.end method
