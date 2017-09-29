.class public Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;
.super Ljava/lang/Object;
.source "RpcRunConfig.java"


# instance fields
.field public cacheMode:Lcom/alipay/mobile/beehive/rpc/CacheMode;

.field public loadingMode:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

.field public showNetError:Z

.field public showWarn:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/alipay/mobile/beehive/rpc/CacheMode;->NONE:Lcom/alipay/mobile/beehive/rpc/CacheMode;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;->cacheMode:Lcom/alipay/mobile/beehive/rpc/CacheMode;

    .line 19
    sget-object v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->CANCELABLE_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;->loadingMode:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    .line 24
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;->showNetError:Z

    .line 29
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;->showWarn:Z

    .line 9
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 38
    :cond_0
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;-><init>()V

    .line 39
    const-string/jumbo v1, "cacheMode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/beehive/rpc/CacheMode;->fromString(Ljava/lang/String;)Lcom/alipay/mobile/beehive/rpc/CacheMode;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;->cacheMode:Lcom/alipay/mobile/beehive/rpc/CacheMode;

    .line 40
    const-string/jumbo v1, "loadingMode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->fromString(Ljava/lang/String;)Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;->loadingMode:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    .line 41
    const-string/jumbo v1, "showNetError"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;->showNetError:Z

    .line 42
    const-string/jumbo v1, "showWarn"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;->showWarn:Z

    goto :goto_0
.end method
