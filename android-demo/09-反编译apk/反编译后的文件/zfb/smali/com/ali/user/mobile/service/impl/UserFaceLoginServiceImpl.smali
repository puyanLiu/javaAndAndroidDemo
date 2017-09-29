.class public Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;
.super Lcom/ali/user/mobile/service/BaseBizService;
.source "UserFaceLoginServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/service/UserFaceLoginService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/service/BaseBizService",
        "<",
        "Lcom/alipay/mobileapp/biz/rpc/unifylogin/UserFaceLoginFacade;",
        ">;",
        "Lcom/ali/user/mobile/service/UserFaceLoginService;"
    }
.end annotation


# instance fields
.field private a:Lcom/ali/user/mobile/info/AppInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/service/BaseBizService;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    .line 28
    return-void
.end method


# virtual methods
.method public initFaceLogin(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;
    .locals 4

    .prologue
    .line 48
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->DOCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C29"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "initFaceLogin"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.initFaceLogin"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 52
    :try_start_0
    new-instance v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;-><init>()V

    .line 53
    iput-object p1, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->loginId:Ljava/lang/String;

    .line 54
    iput-object p2, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->userid:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getUmid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->umidToken:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getMspTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->tid:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->productId:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->productVersion:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "android"

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->systemName:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->apdid:Ljava/lang/String;

    .line 61
    iput p3, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->count:I

    .line 62
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/UserFaceLoginFacade;

    invoke-interface {v0, v2}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/UserFaceLoginFacade;->initFaceLogin(Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;

    move-result-object v2

    .line 63
    if-nez v2, :cond_0

    .line 64
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "InitFaceLoginRes=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 68
    :goto_0
    return-object v2

    .line 66
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    iget-boolean v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->success:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->resultStatus:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 71
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 72
    throw v0

    .line 66
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public queryFaceLogin(Ljava/util/List;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;"
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    new-instance v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;-><init>()V

    .line 34
    iput-object p1, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;->userIdLists:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;->productId:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;->productVersion:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;->sdkVersion:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/UserFaceLoginFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/UserFaceLoginFacade;->queryFaceLogin(Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 42
    throw v0
.end method
