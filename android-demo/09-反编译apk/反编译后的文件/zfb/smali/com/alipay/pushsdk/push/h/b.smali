.class public final Lcom/alipay/pushsdk/push/h/b;
.super Ljava/lang/Object;
.source "HeartBeatTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/pushsdk/push/m;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alipay/pushsdk/push/h/b;->a:Lcom/alipay/pushsdk/push/m;

    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 21
    const-string/jumbo v0, "===== HeartBeatTask() Runnable====="

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/alipay/pushsdk/push/h/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    :try_start_0
    sget v0, Lcom/alipay/pushsdk/push/m;->h:I

    invoke-static {v0}, Lcom/alipay/pushsdk/push/e/c;->a(I)Lcom/alipay/pushsdk/push/e/a;

    move-result-object v0

    .line 27
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/e/a;->a(I)V

    .line 28
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/e/a;->b(I)V

    .line 29
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/e/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "HeartBeatTask() heartBeat will be sent! length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/e/a;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/alipay/pushsdk/push/h/b;->a:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/connection/i;->a(Lcom/alipay/pushsdk/push/e/a;)V

    .line 41
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 39
    :cond_0
    const-string/jumbo v0, "Account registered has not been done."

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
