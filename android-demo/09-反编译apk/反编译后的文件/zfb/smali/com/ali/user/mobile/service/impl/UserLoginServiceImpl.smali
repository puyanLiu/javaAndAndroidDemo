.class public Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;
.super Lcom/ali/user/mobile/service/BaseBizService;
.source "UserLoginServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/service/UserLoginService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/service/BaseBizService",
        "<",
        "Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;",
        ">;",
        "Lcom/ali/user/mobile/service/UserLoginService;"
    }
.end annotation


# instance fields
.field private a:Lcom/ali/user/mobile/info/AppInfo;

.field private b:Lcom/ali/user/mobile/info/DeviceInfo;

.field private c:Lcom/ali/user/mobile/info/NetWorkInfo;

.field private d:Lcom/ali/user/mobile/info/LocationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/service/BaseBizService;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    .line 57
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    .line 58
    invoke-static {}, Lcom/ali/user/mobile/info/NetWorkInfo;->getInstance()Lcom/ali/user/mobile/info/NetWorkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->c:Lcom/ali/user/mobile/info/NetWorkInfo;

    .line 59
    invoke-static {}, Lcom/ali/user/mobile/info/LocationInfo;->getInstance()Lcom/ali/user/mobile/info/LocationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->d:Lcom/ali/user/mobile/info/LocationInfo;

    .line 60
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;
    .locals 2

    .prologue
    .line 474
    invoke-static {p0, p1}, Lcom/ali/user/mobile/rpc/RpcManager;->getRpcFactory2(Landroid/content/Context;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/IRpcFactory;

    move-result-object v0

    .line 475
    const-class v1, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/rpc/IRpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    .line 476
    return-object v0
.end method

.method private a(Lcom/ali/user/mobile/login/LoginParam;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;
    .locals 5

    .prologue
    .line 374
    new-instance v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;

    invoke-direct {v1}, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;-><init>()V

    .line 375
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->c:Lcom/ali/user/mobile/info/NetWorkInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/NetWorkInfo;->getWifiNodeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->accessPoint:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdidAsync()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->apdid:Ljava/lang/String;

    .line 377
    const-string/jumbo v0, "ALIPAY"

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appId:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appKey:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->deviceId:Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->d:Lcom/ali/user/mobile/info/LocationInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/LocationInfo;->getCellId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->cellId:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->channel:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getInstance(Landroid/content/Context;)Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getLastKnownLBSInfo()Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->location:Ljava/lang/String;

    .line 385
    const-string/jumbo v0, "android"

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->clientType:Ljava/lang/String;

    .line 386
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->alipayEnvJson:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->alipayEnvJson:Ljava/lang/String;

    .line 387
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->taobaoEnvJson:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->taobaoEnvJson:Ljava/lang/String;

    .line 388
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->externParams:Ljava/util/Map;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    .line 390
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->IMEI:Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->IMSI:Ljava/lang/String;

    .line 392
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->ismRooted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->isPrisonBreak:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->d:Lcom/ali/user/mobile/info/LocationInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/LocationInfo;->getTelLac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->lacId:Ljava/lang/String;

    .line 394
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->loginId:Ljava/lang/String;

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/rsa/Rsa;->getRSAKey(Landroid/content/Context;)Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    move-result-object v0

    .line 398
    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginParam;->loginPassword:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 399
    iget-object v0, v0, Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    .line 400
    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginParam;->loginPassword:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ali/user/mobile/rsa/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->loginPwd:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 411
    :cond_0
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->checkCodeId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->checkCodeId:Ljava/lang/String;

    .line 412
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->checkCode:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->checkCode:Ljava/lang/String;

    .line 414
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->loginType:Ljava/lang/String;

    .line 415
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileBrand()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->mobileBrand:Ljava/lang/String;

    .line 416
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->mobileModel:Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->sdkVersion:Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->productId:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->productVersion:Ljava/lang/String;

    .line 420
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->scene:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->scene:Ljava/lang/String;

    .line 421
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->token:Ljava/lang/String;

    .line 422
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->signData:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->signData:Ljava/lang/String;

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getHeightPix()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->screenHigh:Ljava/lang/String;

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getWidthPix()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->screenWidth:Ljava/lang/String;

    .line 426
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->ssoToken:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->ssoToken:Ljava/lang/String;

    .line 427
    const-string/jumbo v0, "android"

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->systemType:Ljava/lang/String;

    .line 428
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->systemVersion:Ljava/lang/String;

    .line 430
    :try_start_1
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->tid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 434
    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getUmid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->umidToken:Ljava/lang/String;

    .line 435
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->userAgent:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getUtDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->utdid:Ljava/lang/String;

    .line 437
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->validateTpye:Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->c:Lcom/ali/user/mobile/info/NetWorkInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/NetWorkInfo;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->mac:Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->c:Lcom/ali/user/mobile/info/NetWorkInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/NetWorkInfo;->getWifiNodeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->wifiNodeName:Ljava/lang/String;

    .line 441
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    .line 442
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "clientId"

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "sourceId"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "deviceToken"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "osVersion"

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "terminalName"

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "loginWthPwd"

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getDexHandler()Lcom/ali/user/mobile/login/dex/DexHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 451
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getDexHandler()Lcom/ali/user/mobile/login/dex/DexHandler;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/login/dex/DexHandler;->setDevInfo(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;)V

    .line 455
    :cond_1
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "vImsi"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getVImsi()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "vImei"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getVImei()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "mspImsi"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getMspImsi()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "mspImei"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getMspImei()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "mspTid"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getMspTid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "mspClientKey"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getMspClientKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "walletTid"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getWalletTid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "walletClientKey"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getWalletClientKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    return-object v1

    .line 384
    :cond_2
    const-string/jumbo v0, ""

    goto/16 :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 404
    throw v0

    .line 405
    :catch_1
    move-exception v0

    .line 406
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 407
    const-string/jumbo v1, "UserLoginService"

    const-string/jumbo v2, "\u5bc6\u7801\u52a0\u5bc6\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :catch_2
    move-exception v0

    .line 432
    const-string/jumbo v2, "UserLoginServiceImpl"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;
    .locals 1

    .prologue
    .line 329
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;

    invoke-direct {v0}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;-><init>()V

    .line 330
    iput-object p0, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->key:Ljava/lang/String;

    .line 331
    iput-object p1, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;->value:Ljava/lang/String;

    .line 332
    return-object v0
.end method

.method private a(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;
    .locals 5

    .prologue
    .line 238
    new-instance v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;

    invoke-direct {v2}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;-><init>()V

    .line 239
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->loginId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->loginId:Ljava/lang/String;

    .line 240
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->loginPwd:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->loginPwd:Ljava/lang/String;

    .line 241
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->tid:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->tid:Ljava/lang/String;

    .line 242
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->accessPoint:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->accessPoint:Ljava/lang/String;

    .line 243
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->apdid:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->apdid:Ljava/lang/String;

    .line 244
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->appId:Ljava/lang/String;

    .line 245
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appKey:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->appKey:Ljava/lang/String;

    .line 246
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->deviceId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->deviceId:Ljava/lang/String;

    .line 247
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->cellId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->cellId:Ljava/lang/String;

    .line 248
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->channel:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->channel:Ljava/lang/String;

    .line 249
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->location:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->clientPostion:Ljava/lang/String;

    .line 250
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->clientType:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->clientType:Ljava/lang/String;

    .line 251
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->alipayEnvJson:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->alipayEnvJson:Ljava/lang/String;

    .line 252
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->taobaoEnvJson:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->taobaoEnvJson:Ljava/lang/String;

    .line 253
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->IMEI:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->imei:Ljava/lang/String;

    .line 254
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->IMSI:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->imsi:Ljava/lang/String;

    .line 255
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->isPrisonBreak:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->isPrisonBreak:Ljava/lang/String;

    .line 256
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->lacId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->lacId:Ljava/lang/String;

    .line 257
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->checkCodeId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->checkCodeId:Ljava/lang/String;

    .line 258
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->checkCode:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->checkCode:Ljava/lang/String;

    .line 259
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->mobileBrand:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->mobileBrand:Ljava/lang/String;

    .line 260
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->mobileModel:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->mobileModel:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->sdkVersion:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->productId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->productId:Ljava/lang/String;

    .line 263
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->productVersion:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->productVersion:Ljava/lang/String;

    .line 264
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->scene:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->scene:Ljava/lang/String;

    .line 265
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->token:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->token:Ljava/lang/String;

    .line 266
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->signData:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->signData:Ljava/lang/String;

    .line 267
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->ssoToken:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->ssoToken:Ljava/lang/String;

    .line 268
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->systemType:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->systemType:Ljava/lang/String;

    .line 269
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->systemVersion:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->systemVersion:Ljava/lang/String;

    .line 270
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->umidToken:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->umidToken:Ljava/lang/String;

    .line 271
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->userAgent:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->userAgent:Ljava/lang/String;

    .line 272
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->utdid:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->utdid:Ljava/lang/String;

    .line 273
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->mac:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->wifiMac:Ljava/lang/String;

    .line 274
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->wifiNodeName:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->wifiNodeName:Ljava/lang/String;

    .line 275
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->loginType:Ljava/lang/String;

    const-string/jumbo v1, "taobao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;->taobao:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    :goto_0
    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->loginType:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    .line 276
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->validateTpye:Ljava/lang/String;

    const-string/jumbo v1, "withpwd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withpwd:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    :goto_1
    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->validateTpye:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    .line 278
    :try_start_0
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->screenHigh:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->screenHigh:Ljava/lang/Integer;

    .line 279
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->screenWidth:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->screenWidth:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_2
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->externParams:Ljava/util/List;

    .line 286
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 292
    :cond_0
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 293
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->appData:Ljava/util/List;

    .line 294
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 299
    :cond_1
    return-object v2

    .line 275
    :cond_2
    sget-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;->alipay:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginType;

    goto :goto_0

    .line 276
    :cond_3
    const-string/jumbo v1, "withchecktoken"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withchecktoken:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "withface"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withface:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "withmsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withmsg:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "withlogintoken"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withlogintoken:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v1, "afterreg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->afterreg:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    goto/16 :goto_1

    :cond_8
    sget-object v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;->withsndpwd:Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/LoginWthPwd;

    goto/16 :goto_1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string/jumbo v1, "UserLoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 287
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    iget-object v4, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->externParams:Ljava/util/List;

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 295
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    iget-object v4, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;->appData:Ljava/util/List;

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/ExternParams;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method


# virtual methods
.method public applyLoginSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;
    .locals 5

    .prologue
    .line 187
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C28"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "applyLoginSMS"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.sms.login.sendSms"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 191
    :try_start_0
    new-instance v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;

    invoke-direct {v2}, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;-><init>()V

    .line 192
    iput-object p1, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->token:Ljava/lang/String;

    .line 193
    iput-object p2, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->mobile:Ljava/lang/String;

    .line 194
    iput-object p3, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->type:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    invoke-interface {v0, v2}, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;->applyLoginSMS(Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    move-result-object v3

    .line 196
    if-nez v3, :cond_0

    .line 197
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v4, "N"

    invoke-virtual {v0, v4}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v4, "SmsGwRes=null"

    invoke-virtual {v0, v4}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v2, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 201
    :goto_0
    return-object v3

    .line 199
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v4

    iget-boolean v0, v3, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->success:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v4, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v4, v3, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v2, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 204
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 205
    throw v0

    .line 199
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public supplyPassword(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;
    .locals 4

    .prologue
    .line 124
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C28"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "supplyPassword"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.login.supplypass"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ali/user/mobile/gw/GWUrlSetting;->getMobileGW()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;->supplyPassword(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;

    move-result-object v2

    .line 129
    if-nez v2, :cond_0

    .line 130
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "SupplyPassGwRes=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 134
    :goto_0
    return-object v2

    .line 132
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    iget-boolean v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->success:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 137
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 138
    throw v0

    .line 132
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public supplySimplePassword(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;
    .locals 4

    .prologue
    .line 144
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C28"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "supplySimplePassword"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.login.supplysimplepass"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ali/user/mobile/gw/GWUrlSetting;->getMobileGW()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;->supplySimplePassword(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;

    move-result-object v2

    .line 149
    if-nez v2, :cond_0

    .line 150
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "SupplyPassGwRes=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 154
    :goto_0
    return-object v2

    .line 152
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    iget-boolean v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->success:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 157
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 158
    throw v0

    .line 152
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public taobaoAccountBinding(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;
    .locals 5

    .prologue
    .line 164
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C28"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "taobaoAccountBinding"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "alipay.client.bindAlipayAccount"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 168
    :try_start_0
    new-instance v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindReq;-><init>()V

    .line 169
    iput-object p1, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindReq;->bizScene:Ljava/lang/String;

    .line 170
    iput-object p2, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindReq;->token:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    invoke-interface {v0, v2}, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;->taobaoAccountBinding(Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindReq;)Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;

    move-result-object v3

    .line 172
    if-nez v3, :cond_0

    .line 173
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v4, "N"

    invoke-virtual {v0, v4}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v4, "SupplyPassGwRes=null"

    invoke-virtual {v0, v4}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindReq;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 177
    :goto_0
    return-object v3

    .line 175
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v2

    iget-boolean v0, v3, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;->success:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v2, v3, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v2, v3, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 180
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 181
    throw v0

    .line 175
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public unifyLogin(Lcom/ali/user/mobile/login/LoginParam;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/ali/user/mobile/gw/GWUrlSetting;->getMobileGW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->unifyLoginWithGW(Lcom/ali/user/mobile/login/LoginParam;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    move-result-object v0

    .line 75
    return-object v0
.end method

.method public unifyLoginPb(Lcom/ali/user/mobile/login/LoginParam;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginResPb;
    .locals 4

    .prologue
    .line 101
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->LOGIN:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C27"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "unifyLoginPb"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.unifyLoginPb"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    .line 103
    const-string/jumbo v2, "loginType"

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "validateTpye"

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 106
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a(Lcom/ali/user/mobile/login/LoginParam;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;

    move-result-object v0

    .line 108
    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;->unifyLoginPb(Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginReqPb;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginResPb;

    move-result-object v2

    .line 109
    if-nez v2, :cond_0

    .line 110
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "UnifyLoginResPb=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 114
    :goto_0
    return-object v2

    .line 112
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    iget-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginResPb;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginResPb;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/UnifyLoginResPb;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 117
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 118
    throw v0

    .line 112
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public unifyLoginWithGW(Lcom/ali/user/mobile/login/LoginParam;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;
    .locals 4

    .prologue
    .line 80
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->LOGIN:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C27"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "unifyLogin"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.unifyLogin"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    .line 82
    const-string/jumbo v2, "loginType"

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "validateTpye"

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 85
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a(Lcom/ali/user/mobile/login/LoginParam;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;

    move-result-object v0

    .line 86
    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;->unifyLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    move-result-object v2

    .line 87
    if-nez v2, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "UnifyLoginRes=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 92
    :goto_0
    return-object v2

    .line 90
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    iget-boolean v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->success:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 95
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 96
    throw v0

    .line 90
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public verifyLoginSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;
    .locals 5

    .prologue
    .line 211
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->DOCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C29"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "verifyLoginSMS"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.sms.login.verifySms"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 215
    :try_start_0
    new-instance v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;

    invoke-direct {v2}, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;-><init>()V

    .line 216
    iput-object p1, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->token:Ljava/lang/String;

    .line 217
    iput-object p2, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->mobile:Ljava/lang/String;

    .line 218
    iput-object p3, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->ackCode:Ljava/lang/String;

    .line 219
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->apdid:Ljava/lang/String;

    .line 220
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->appKey:Ljava/lang/String;

    .line 221
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->tid:Ljava/lang/String;

    .line 222
    iput-object p4, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->smsVerifyType:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    invoke-interface {v0, v2}, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;->verifyLoginSMS(Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    move-result-object v3

    .line 224
    if-nez v3, :cond_0

    .line 225
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v4, "N"

    invoke-virtual {v0, v4}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v4, "SmsGwRes=null"

    invoke-virtual {v0, v4}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v2, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 229
    :goto_0
    return-object v3

    .line 227
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v4

    iget-boolean v0, v3, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->success:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v4, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v4, v3, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v2, v2, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logToken(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 232
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 233
    throw v0

    .line 227
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
