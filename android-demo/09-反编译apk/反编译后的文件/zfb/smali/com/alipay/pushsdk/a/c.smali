.class final Lcom/alipay/pushsdk/a/c;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Lcom/alipay/pushsdk/a/g;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/a/b;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/a/b;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alipay/pushsdk/a/c;->a:Lcom/alipay/pushsdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 93
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/alipay/pushsdk/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UpdateUserListener onFail."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/pushsdk/b/b;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 107
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 108
    invoke-virtual {p1}, Lcom/alipay/pushsdk/b/b;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x3

    invoke-static {}, Lcom/alipay/pushsdk/a/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ConfigListener onComplete jsonResponse:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    const-string/jumbo v1, "resultStatus"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 117
    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 118
    iget-object v1, p0, Lcom/alipay/pushsdk/a/c;->a:Lcom/alipay/pushsdk/a/b;

    invoke-static {v1, v0}, Lcom/alipay/pushsdk/a/b;->a(Lcom/alipay/pushsdk/a/b;Lorg/json/JSONObject;)V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 122
    iget-object v2, p0, Lcom/alipay/pushsdk/a/c;->a:Lcom/alipay/pushsdk/a/b;

    invoke-static {v2}, Lcom/alipay/pushsdk/a/b;->a(Lcom/alipay/pushsdk/a/b;)Lcom/alipay/pushsdk/util/d;

    move-result-object v2

    const-string/jumbo v3, "LAST_CONFIG_TIME"

    invoke-virtual {v2, v3, v0, v1}, Lcom/alipay/pushsdk/util/d;->a(Ljava/lang/String;J)V

    .line 124
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const/4 v2, 0x3

    .line 127
    invoke-static {}, Lcom/alipay/pushsdk/a/b;->b()Ljava/lang/String;

    move-result-object v3

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onComplete() saveCfgPolicy Time is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-static {v0, v1}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v2, v3, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :cond_2
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    invoke-static {}, Lcom/alipay/pushsdk/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    invoke-static {}, Lcom/alipay/pushsdk/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
