.class public Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
.super Ljava/lang/Object;
.source "InnerRpcInvokeContext.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/RpcInvokeContext;


# instance fields
.field public allowRetry:Z

.field public appKey:Ljava/lang/String;

.field public bgRpc:Ljava/lang/Boolean;

.field public compress:Ljava/lang/Boolean;

.field public gwUrl:Ljava/lang/String;

.field public requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public resetCookie:Ljava/lang/Boolean;

.field public responseHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public timeout:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowRetry:Z

    return-void
.end method


# virtual methods
.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->responseHeader:Ljava/util/Map;

    return-object v0
.end method

.method public setAllowRetry(Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowRetry:Z

    .line 82
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setBgRpc(Z)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    .line 77
    return-void
.end method

.method public setCompress(Z)V
    .locals 1

    .prologue
    .line 61
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->compress:Ljava/lang/Boolean;

    .line 62
    return-void
.end method

.method public setGwUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setRequestHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public setResetCookie(Z)V
    .locals 1

    .prologue
    .line 71
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    .line 72
    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->timeout:J

    .line 42
    return-void
.end method
