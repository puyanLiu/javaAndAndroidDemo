.class public abstract Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public addRegAuthData(Lcom/alipay/android/app/json/JSONObject;II)V
    .locals 3

    .prologue
    .line 53
    const-string/jumbo v0, "secData"

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, p3, v2}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getRegAuthData(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public createInitReplyJson(III)Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 68
    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 69
    const-string/jumbo v0, "message"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 72
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 73
    invoke-virtual {p0, v0, p2, p3}, Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;->addRegAuthData(Lcom/alipay/android/app/json/JSONObject;II)V

    .line 74
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createRequestJson(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 30
    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {v1, v0, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 31
    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 32
    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0, p3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toCallback(Lcom/alipay/android/app/hardwarepay/base/BaseCommonPayHelper;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p1, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/base/BaseCommonPayHelper;->a(Ljava/lang/Object;ILjava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b()V

    .line 42
    return-void
.end method
