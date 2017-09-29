.class public final Lcom/alipay/pushsdk/push/h/c;
.super Ljava/lang/Object;
.source "RegisterTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/pushsdk/push/m;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/pushsdk/push/h/c;->a:Lcom/alipay/pushsdk/push/m;

    .line 29
    return-void
.end method

.method private a()Lcom/alipay/pushsdk/push/e/a;
    .locals 2

    .prologue
    .line 55
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->i()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/e/c;->a(I)Lcom/alipay/pushsdk/push/e/a;

    move-result-object v0

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/e/a;->a(I)V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/e/a;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    iget-object v1, p0, Lcom/alipay/pushsdk/push/h/c;->a:Lcom/alipay/pushsdk/push/m;

    invoke-static {v1}, Lcom/alipay/pushsdk/push/h/c;->a(Lcom/alipay/pushsdk/push/m;)Lorg/json/JSONObject;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/e/a;->a(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    .line 60
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alipay/pushsdk/push/m;)Lorg/json/JSONObject;
    .locals 10

    .prologue
    .line 68
    new-instance v0, Lcom/alipay/pushsdk/util/d;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/util/d;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/d;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 76
    const-string/jumbo v0, "userId"

    .line 77
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/m;->d()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :goto_0
    const-string/jumbo v0, ""

    .line 83
    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_4

    .line 85
    const-string/jumbo v3, "com.eg.android.AlipayGphoneRC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    const-string/jumbo v0, "alipayclient-rc"

    .line 91
    :cond_0
    :goto_1
    const-string/jumbo v2, "appId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v0, "trigger"

    .line 94
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/m;->h()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "commandType"

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "commandVersion"

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Lcom/alipay/pushsdk/data/e;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/alipay/pushsdk/data/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/e;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "maxMsgId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    const-string/jumbo v2, "lastBroadcastId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    :cond_1
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->c()J

    move-result-wide v2

    .line 99
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/m;->f()J

    move-result-wide v4

    .line 100
    sub-long v6, v4, v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 101
    const-string/jumbo v0, "curCreate"

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v0, "preClose"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 104
    invoke-static {}, Lcom/alipay/pushsdk/push/d/e;->a()I

    move-result v0

    sget v2, Lcom/alipay/pushsdk/push/d/e;->a:I

    if-le v0, v2, :cond_2

    .line 105
    new-instance v0, Lcom/alipay/pushsdk/push/d/a;

    .line 106
    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    .line 105
    invoke-direct {v0, v2}, Lcom/alipay/pushsdk/push/d/a;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/d/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/d/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-static {v2, v3}, Lcom/alipay/pushsdk/push/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/d/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RegisterTask() locationString="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v2, "lbsInfo"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RegisterTask() registration userId:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string/jumbo v2, ", delTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 126
    :goto_2
    return-object v1

    .line 79
    :cond_3
    const-string/jumbo v0, "userId"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 123
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 87
    :cond_4
    if-eqz v2, :cond_0

    .line 88
    :try_start_1
    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string/jumbo v0, "alipayclient"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 32
    const-string/jumbo v0, "===== RegisterTask.run()====="

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/c;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string/jumbo v0, "Account registered already"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/alipay/pushsdk/push/h/c;->a()Lcom/alipay/pushsdk/push/e/a;

    move-result-object v0

    .line 38
    if-nez v0, :cond_1

    .line 40
    const-string/jumbo v0, "Packet registration  is null"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/alipay/pushsdk/push/h/c;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/alipay/pushsdk/push/h/c;->a:Lcom/alipay/pushsdk/push/m;

    invoke-static {v2}, Lcom/alipay/pushsdk/push/f/e;->a(Lcom/alipay/pushsdk/push/m;)Lcom/alipay/pushsdk/push/f/e;

    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/push/connection/i;->a(Lcom/alipay/pushsdk/push/f/d;)V

    .line 47
    const-string/jumbo v1, "before register package send"

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/alipay/pushsdk/push/h/c;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/connection/i;->a(Lcom/alipay/pushsdk/push/e/a;)V

    .line 49
    const-string/jumbo v0, "after register package send"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
