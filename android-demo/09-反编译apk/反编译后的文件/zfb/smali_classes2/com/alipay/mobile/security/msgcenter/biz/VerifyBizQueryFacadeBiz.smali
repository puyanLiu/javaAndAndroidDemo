.class public Lcom/alipay/mobile/security/msgcenter/biz/VerifyBizQueryFacadeBiz;
.super Ljava/lang/Object;


# instance fields
.field mVerifyBizQueryFacade:Lcom/alipay/mobilesecurity/biz/gw/service/securityverify/VerifyBizQueryFacade;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFacade()Lcom/alipay/mobilesecurity/biz/gw/service/securityverify/VerifyBizQueryFacade;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/securityverify/VerifyBizQueryFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/securityverify/VerifyBizQueryFacade;

    return-object v0
.end method


# virtual methods
.method public queryBizStatus(Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizReq;)Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizRes;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/biz/VerifyBizQueryFacadeBiz;->getFacade()Lcom/alipay/mobilesecurity/biz/gw/service/securityverify/VerifyBizQueryFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/biz/VerifyBizQueryFacadeBiz;->mVerifyBizQueryFacade:Lcom/alipay/mobilesecurity/biz/gw/service/securityverify/VerifyBizQueryFacade;

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/biz/VerifyBizQueryFacadeBiz;->mVerifyBizQueryFacade:Lcom/alipay/mobilesecurity/biz/gw/service/securityverify/VerifyBizQueryFacade;

    invoke-interface {v0, p1}, Lcom/alipay/mobilesecurity/biz/gw/service/securityverify/VerifyBizQueryFacade;->queryBizStatus(Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizReq;)Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizRes;

    move-result-object v0

    return-object v0
.end method
