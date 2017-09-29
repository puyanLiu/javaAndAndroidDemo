.class public Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;
.super Lcom/alipay/android/app/logic/decorator/BaseDecorator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 52
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    const-string/jumbo v0, "res_data"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string/jumbo v0, "cp"

    const-string/jumbo v1, "0050006"

    const-string/jumbo v2, "encrtyedStr_empty"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "encrtyedStr_empty"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/encrypt/TriDes;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "respData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    .line 68
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 70
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    goto :goto_0
.end method

.method public final a([BLjava/lang/String;)[B
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "EncrptyDecorator todo start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 31
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 32
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 34
    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/android/app/util/JsonUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string/jumbo v2, "req_data"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    .line 42
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/EncrptyDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 44
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method
