.class public Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;
.super Lcom/ali/user/mobile/service/BaseBizService;
.source "UserRegisterServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/service/UserRegisterService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/service/BaseBizService",
        "<",
        "Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;",
        ">;",
        "Lcom/ali/user/mobile/service/UserRegisterService;"
    }
.end annotation


# instance fields
.field private a:Lcom/ali/user/mobile/info/AppInfo;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/service/BaseBizService;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    .line 37
    return-void
.end method


# virtual methods
.method public countryCodeRes()Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;
    .locals 5

    .prologue
    .line 44
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCOUNTRIES:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C32"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "getCountyCode"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.register.countryCodeProcesser"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 48
    :try_start_0
    new-instance v2, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;

    invoke-direct {v2}, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;-><init>()V

    .line 49
    const-string/jumbo v0, "ALIPAY"

    iput-object v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;->appId:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;->apdId:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;->productVersion:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;->sdkVersion:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;->appKey:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;->productId:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;->productVersion:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v0, v2}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->getCountyCode(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;

    move-result-object v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "RegMixRes=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 62
    :goto_0
    return-object v2

    .line 60
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    iget v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->resultStatus:I

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->resultStatus:I

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(I)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 65
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 66
    throw v0

    .line 60
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public emailActivateV2(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;
    .locals 5

    .prologue
    .line 295
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->ACTIVATE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C30"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "emailActivateV2Processer"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.register.emailActivateAndRegister"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 299
    :try_start_0
    new-instance v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;-><init>()V

    .line 300
    iput-object p1, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->token:Ljava/lang/String;

    .line 301
    const-string/jumbo v0, "ALIPAY"

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->appId:Ljava/lang/String;

    .line 302
    iput-object p2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->emailUrl:Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getMspTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->tid:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->apdId:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->productVersion:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->sdkVersion:Ljava/lang/String;

    .line 307
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->appKey:Ljava/lang/String;

    .line 308
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->productId:Ljava/lang/String;

    .line 309
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->productVersion:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v0, v2}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->emailActivateV2Processer(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    move-result-object v2

    .line 311
    if-nez v2, :cond_0

    .line 312
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "EmailActivateRes=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 316
    :goto_0
    return-object v2

    .line 314
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    iget v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->resultStatus:I

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->resultStatus:I

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(I)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 319
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 320
    throw v0

    .line 314
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public mobileRegPreVerifyV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;
    .locals 5

    .prologue
    .line 74
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->DOCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C29"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "mobileRegPreVerifyV3"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.register.mobileRegPreVerifyV3"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 78
    :try_start_0
    new-instance v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;-><init>()V

    .line 79
    iput-object p3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->countryCode:Ljava/lang/String;

    .line 80
    iput-object p7, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->checkCode:Ljava/lang/String;

    .line 81
    iput-object p9, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->rdsInfo:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "ALIPAY"

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->appId:Ljava/lang/String;

    .line 83
    iput-object p2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->longonId:Ljava/lang/String;

    .line 84
    iput-object p1, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->token:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->productVersion:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->sdkVersion:Ljava/lang/String;

    .line 87
    iput-object p4, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->headImg:Ljava/lang/String;

    .line 88
    iput-object p6, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->nickName:Ljava/lang/String;

    .line 89
    iput-object p5, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->queryPassword:Ljava/lang/String;

    .line 90
    iput-object p8, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->securityId:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->appKey:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->productId:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->productVersion:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v0, v2}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->mobileRegPreVerifyV3(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;

    move-result-object v2

    .line 95
    if-nez v2, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "RegPreVerifyRes=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 100
    :goto_0
    return-object v2

    .line 98
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    iget v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(I)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 103
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 104
    throw v0

    .line 98
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterRes;
    .locals 5

    .prologue
    .line 200
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->REGISTER:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C31"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "register"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.register.registerProcesser"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 204
    :try_start_0
    new-instance v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;-><init>()V

    .line 205
    const-string/jumbo v0, "ALIPAY"

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->appId:Ljava/lang/String;

    .line 206
    iput-object p2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->password:Ljava/lang/String;

    .line 207
    iput-object p1, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->token:Ljava/lang/String;

    .line 208
    iput-object p3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->rdsInfo:Ljava/lang/String;

    .line 209
    iput-object p4, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->wa:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->productVersion:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->sdkVersion:Ljava/lang/String;

    .line 212
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->tid:Ljava/lang/String;

    .line 213
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->appKey:Ljava/lang/String;

    .line 214
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->productId:Ljava/lang/String;

    .line 215
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->productVersion:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v0, v2}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->register(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterRes;

    move-result-object v2

    .line 217
    if-nez v2, :cond_0

    .line 218
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "RegisterRes=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 222
    :goto_0
    return-object v2

    .line 220
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    iget v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterRes;->resultStatus:I

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterRes;->resultStatus:I

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(I)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 225
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 226
    throw v0

    .line 220
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;
    .locals 4

    .prologue
    .line 110
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C28"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "sendSms"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.sms.sendSms"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 114
    :try_start_0
    new-instance v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;

    invoke-direct {v2}, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;-><init>()V

    .line 115
    iput-object p2, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->mobile:Ljava/lang/String;

    .line 116
    iput-object p3, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->type:Ljava/lang/String;

    .line 117
    iput-object p1, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->token:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->appKey:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->productId:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->productVersion:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v0, v2}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->sendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    move-result-object v2

    .line 122
    if-nez v2, :cond_0

    .line 123
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "SmsGwRes=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 127
    :goto_0
    return-object v2

    .line 125
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    iget-boolean v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->success:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 130
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 131
    throw v0

    .line 125
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setMobileNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->b:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public supplementV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;
    .locals 5

    .prologue
    .line 233
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->REGISTER:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C31"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "supplementV2"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.register.completeProcesserV2"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 237
    :try_start_0
    new-instance v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;-><init>()V

    .line 238
    const-string/jumbo v0, "ALIPAY"

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->appId:Ljava/lang/String;

    .line 239
    iput-object p2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->payPassword:Ljava/lang/String;

    .line 240
    iput-object p3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->simplePassword:Ljava/lang/String;

    .line 241
    iput-object p1, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->token:Ljava/lang/String;

    .line 242
    iput-object p4, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->rdsInfo:Ljava/lang/String;

    .line 243
    iput-object p5, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->wa:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->productVersion:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->sdkVersion:Ljava/lang/String;

    .line 246
    iput-boolean p6, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->optionStatus:Z

    .line 247
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->appKey:Ljava/lang/String;

    .line 248
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->productId:Ljava/lang/String;

    .line 249
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->productVersion:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v0, v2}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->supplementV2(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;)Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;

    move-result-object v2

    .line 251
    if-nez v2, :cond_0

    .line 252
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "supplementV2Res=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 256
    :goto_0
    return-object v2

    .line 254
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    iget v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->resultStatus:I

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget v3, v2, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->resultStatus:I

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(I)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 259
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 260
    throw v0

    .line 254
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public verifyEmailAndVerification(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;
    .locals 5

    .prologue
    .line 266
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->ACTIVATE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C30"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "verifyEmailAndVerification"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.register.verifyEmailAndVerification"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 270
    :try_start_0
    new-instance v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;-><init>()V

    .line 271
    iput-object p1, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->token:Ljava/lang/String;

    .line 272
    const-string/jumbo v0, "ALIPAY"

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->appId:Ljava/lang/String;

    .line 273
    iput-object p2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->emailUrl:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->productVersion:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->sdkVersion:Ljava/lang/String;

    .line 276
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->appKey:Ljava/lang/String;

    .line 277
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->productId:Ljava/lang/String;

    .line 278
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->productVersion:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v0, v2}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->verifyEmailAndVerification(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    move-result-object v2

    .line 280
    if-nez v2, :cond_0

    .line 281
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "EmailActivateRes=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 285
    :goto_0
    return-object v2

    .line 283
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    iget v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->resultStatus:I

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->resultStatus:I

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(I)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 288
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 289
    throw v0

    .line 283
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public verifyIDCardAndRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;
    .locals 5

    .prologue
    .line 168
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->DOCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C29"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "verifyIDCardAndRegister"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.register.verifyIDCardAndRegister"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 172
    :try_start_0
    new-instance v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;-><init>()V

    .line 173
    iput-object p2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->name:Ljava/lang/String;

    .line 174
    iput-object p3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->cardNO:Ljava/lang/String;

    .line 175
    const-string/jumbo v0, "ALIPAY"

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->appId:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getMspTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->tid:Ljava/lang/String;

    .line 177
    iput-object p1, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->token:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->productVersion:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->apdId:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->sdkVersion:Ljava/lang/String;

    .line 181
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->appKey:Ljava/lang/String;

    .line 182
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->productId:Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->productVersion:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v0, v2}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->verifyIDCardAndRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    move-result-object v2

    .line 185
    if-nez v2, :cond_0

    .line 186
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "VerifyIDCardRes=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 190
    :goto_0
    return-object v2

    .line 188
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    iget v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->resultStatus:I

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->resultStatus:I

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(I)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 193
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 194
    throw v0

    .line 188
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public verifyMobileAndRegister(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;
    .locals 5

    .prologue
    .line 137
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->DOCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C29"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "verifyMobileAndRegister"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.register.verifyMobileAndRegister"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 141
    :try_start_0
    new-instance v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;-><init>()V

    .line 142
    const-string/jumbo v0, "ALIPAY"

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->appId:Ljava/lang/String;

    .line 143
    iput-object p2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->smsCode:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getMspTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->tid:Ljava/lang/String;

    .line 145
    iput-object p1, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->token:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->productVersion:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->apdId:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->sdkVersion:Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->appKey:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->productId:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->productVersion:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v0, v2}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->verifyMobileAndRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;

    move-result-object v2

    .line 153
    if-nez v2, :cond_0

    .line 154
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "RegStatusRes=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 158
    :goto_0
    return-object v2

    .line 156
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    iget v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(I)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 161
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 162
    throw v0

    .line 156
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
