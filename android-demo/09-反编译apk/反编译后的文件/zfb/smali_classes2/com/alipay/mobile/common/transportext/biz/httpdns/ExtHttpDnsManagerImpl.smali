.class public Lcom/alipay/mobile/common/transportext/biz/httpdns/ExtHttpDnsManagerImpl;
.super Ljava/lang/Object;
.source "ExtHttpDnsManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/ext/ExtHttpDnsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public ayncNotifyUpdateDnsInfo(Z)V
    .locals 3

    .prologue
    .line 23
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/httpdns/ExtHttpDnsManagerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/transportext/biz/httpdns/ExtHttpDnsManagerImpl$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/httpdns/ExtHttpDnsManagerImpl;Z)V

    const-string/jumbo v2, "NotifyUpdateDnsInfo"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 36
    return-void
.end method
