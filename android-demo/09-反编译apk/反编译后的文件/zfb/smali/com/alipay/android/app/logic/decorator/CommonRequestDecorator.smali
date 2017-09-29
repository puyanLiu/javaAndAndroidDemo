.class public Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;
.super Lcom/alipay/android/app/logic/decorator/BaseDecorator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a([BLjava/lang/String;)[B
    .locals 7

    .prologue
    .line 34
    const-string/jumbo v0, " CommonRequestDecorator   todo  start "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 38
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 41
    const-string/jumbo v3, "type"

    iget-object v4, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v4}, Lcom/alipay/android/app/logic/request/RequestConfig;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v3, "method"

    iget-object v4, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v4}, Lcom/alipay/android/app/logic/request/RequestConfig;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v3, "action"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 44
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;->a()Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string/jumbo v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bpArgsError:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/util/LogUtils;->c(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v3, "ex"

    const-string/jumbo v4, "bpArgsError"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "bp:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    const-string/jumbo v3, "bp"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const-string/jumbo v2, "uac"

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    const-string/jumbo v0, "gzip"

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->k()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    .line 55
    iget-object v0, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v0}, Lcom/alipay/android/app/logic/request/RequestConfig;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    const-string/jumbo v0, "session"

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    const-string/jumbo v2, "tid"

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CommonRequest:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 64
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 65
    const-string/jumbo v1, " CommonRequestDecorator   todo  end "

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    if-eqz v1, :cond_4

    .line 67
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    .line 68
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 70
    :cond_4
    return-object v0
.end method
