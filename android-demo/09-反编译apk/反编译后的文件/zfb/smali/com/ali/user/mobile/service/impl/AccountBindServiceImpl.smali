.class public Lcom/ali/user/mobile/service/impl/AccountBindServiceImpl;
.super Lcom/ali/user/mobile/service/BaseBizService;
.source "AccountBindServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/service/AccountBindService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/service/BaseBizService",
        "<",
        "Lcom/alipay/aliusergw/biz/shared/facade/AccountBindFacade;",
        ">;",
        "Lcom/ali/user/mobile/service/AccountBindService;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/service/BaseBizService;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public alipayAccountBinding(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;
    .locals 5

    .prologue
    .line 24
    new-instance v1, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/AccountBindServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->DOCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C29"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "alipayAccountBinding"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logSeedID(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v2, "alipay.client.bindTaobaoAccount"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logFacade(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 28
    :try_start_0
    new-instance v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoReq;-><init>()V

    .line 29
    iput-object p1, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoReq;->userid:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoReq;->imei:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoReq;->imsi:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoReq;->productId:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoReq;->productVersion:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoReq;->sdkVersion:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getUmid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoReq;->umidToken:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/AccountBindServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/AccountBindFacade;

    invoke-interface {v0, v2}, Lcom/alipay/aliusergw/biz/shared/facade/AccountBindFacade;->alipayAccountBinding(Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoReq;)Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    move-result-object v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "N"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    const-string/jumbo v3, "BindTaobaoRes=null"

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 43
    :goto_0
    return-object v2

    .line 41
    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v3

    const-string/jumbo v0, "1000"

    iget-object v4, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatus(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStatusMsg(Ljava/lang/String;)Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logRpcException(Lcom/ali/user/mobile/log/TimeConsumingLogAgent;Lcom/alipay/mobile/common/rpc/RpcException;)V

    .line 46
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd()Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->commit()V

    .line 47
    throw v0

    .line 41
    :cond_1
    :try_start_1
    const-string/jumbo v0, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
