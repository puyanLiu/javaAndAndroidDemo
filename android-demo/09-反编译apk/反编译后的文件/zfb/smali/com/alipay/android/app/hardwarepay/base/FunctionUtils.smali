.class public Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/json/JSONObject;->remove(Ljava/lang/String;)V

    .line 48
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
