.class public final Lcom/alipay/pushsdk/util/b;
.super Ljava/lang/Object;
.source "AsyncTaskHelper.java"


# static fields
.field private static a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method public static final a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 31
    sget-object v0, Lcom/alipay/pushsdk/util/b;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 33
    sput-object v0, Lcom/alipay/pushsdk/util/b;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v1, 0x14

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 34
    sget-object v0, Lcom/alipay/pushsdk/util/b;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 36
    :cond_0
    sget-object v0, Lcom/alipay/pushsdk/util/b;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method
