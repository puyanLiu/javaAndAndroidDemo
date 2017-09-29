.class public final Lcom/alipay/pushsdk/util/h;
.super Ljava/lang/Object;
.source "PacketUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 10
    const/4 v1, 0x0

    .line 12
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    return-object v0

    .line 13
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method
