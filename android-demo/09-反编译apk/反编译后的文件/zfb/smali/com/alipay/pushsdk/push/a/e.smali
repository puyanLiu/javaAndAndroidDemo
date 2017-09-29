.class public final Lcom/alipay/pushsdk/push/a/e;
.super Lcom/alipay/pushsdk/push/connection/i;
.source "AmnetConnection.java"


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/alipay/pushsdk/push/connection/i;-><init>(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/b/a;)V
    .locals 1

    .prologue
    .line 21
    :try_start_0
    invoke-static {p1, p0}, Lcom/alipay/pushsdk/push/a/a;->a(Lcom/alipay/pushsdk/push/b/a;Lcom/alipay/pushsdk/push/a/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-interface {p1, p0}, Lcom/alipay/pushsdk/push/b/a;->b(Lcom/alipay/pushsdk/push/connection/i;)V

    .line 24
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/pushsdk/push/e/a;)V
    .locals 1

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    const-string/jumbo v0, "try to send null packet"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/alipay/pushsdk/push/a/a;->a(Lcom/alipay/pushsdk/push/e/a;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/pushsdk/push/e/a;Z)V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    if-nez p1, :cond_1

    .line 42
    const-string/jumbo v0, "try to send null packet"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {p1, p2}, Lcom/alipay/pushsdk/push/a/a;->a(Lcom/alipay/pushsdk/push/e/a;Z)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/pushsdk/push/f/d;)V
    .locals 2

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/e;->d:Lcom/alipay/pushsdk/push/f/d;

    .line 53
    return-void
.end method
