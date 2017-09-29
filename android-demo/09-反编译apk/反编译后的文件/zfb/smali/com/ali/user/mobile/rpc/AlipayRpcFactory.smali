.class public Lcom/ali/user/mobile/rpc/AlipayRpcFactory;
.super Ljava/lang/Object;
.source "AlipayRpcFactory.java"

# interfaces
.implements Lcom/ali/user/mobile/rpc/IRpcFactory;


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x2710


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/common/rpc/RpcFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo p2, "https://mobilegw.alipay.com/mgw.htm"

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->a:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcFactory;

    new-instance v1, Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1;-><init>(Lcom/ali/user/mobile/rpc/AlipayRpcFactory;)V

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    .line 64
    iget-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->setContext(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/rpc/AlipayRpcFactory;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setTimeout(J)V

    .line 78
    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setTimeout(J)V

    .line 71
    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public prepareResetCookie(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->prepareResetCookie(Ljava/lang/Object;)V

    .line 93
    return-void
.end method
