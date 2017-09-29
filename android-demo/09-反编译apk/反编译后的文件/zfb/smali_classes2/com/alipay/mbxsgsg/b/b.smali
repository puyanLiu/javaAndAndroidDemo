.class public final Lcom/alipay/mbxsgsg/b/b;
.super Ljava/lang/Object;
.source "MessageboxRpcServiceImpl.java"

# interfaces
.implements Lcom/alipay/mbxsgsg/b/a;


# instance fields
.field msgboxOperateFacade:Lcom/alipay/mbxsgsg/e/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/alipay/mbxsgsg/b/c;->getRpcService()Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    const-class v1, Lcom/alipay/mbxsgsg/e/a;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mbxsgsg/e/a;

    iput-object v0, p0, Lcom/alipay/mbxsgsg/b/b;->msgboxOperateFacade:Lcom/alipay/mbxsgsg/e/a;

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public final operateByMsgIdList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mbxsgsg/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mbxsgsg/e/b;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mbxsgsg/b/b;->msgboxOperateFacade:Lcom/alipay/mbxsgsg/e/a;

    invoke-interface {v0}, Lcom/alipay/mbxsgsg/e/a;->a()Lcom/alipay/mbxsgsg/e/b;

    move-result-object v0

    .line 36
    return-object v0
.end method

.method public final operateByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mbxsgsg/e/b;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mbxsgsg/b/b;->msgboxOperateFacade:Lcom/alipay/mbxsgsg/e/a;

    invoke-interface {v0}, Lcom/alipay/mbxsgsg/e/a;->b()Lcom/alipay/mbxsgsg/e/b;

    move-result-object v0

    .line 46
    return-object v0
.end method
