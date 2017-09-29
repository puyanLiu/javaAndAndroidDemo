.class public Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;
.super Ljava/lang/Object;


# static fields
.field public static final HAS_NOTIFIED:Ljava/lang/String; = "has_notified"

.field public static final Key_Channels:Ljava/lang/String; = "onsitepay_config_channels_910"

.field public static final Key_Config:Ljava/lang/String; = "onsitepay_config_910"

.field public static final Key_Last_Channel:Ljava/lang/String; = "onsitepay_config_last_channel"

.field public static final Key_Out_Of_Date:Ljava/lang/String; = "onsitepay_config_out_of_date"

.field public static final ONSITEPAY_GET_INIT_ARGS_USE_RPC:Ljava/lang/String; = "ONSITEPAY_GET_INIT_ARGS_USE_RPC"

.field private static TAG:Ljava/lang/String; = null

.field private static final file:Ljava/lang/String; = "face_pay"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "commonbiz:ConfigUtil"

    sput-object v0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;)V
    .locals 0

    invoke-static {p0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->doFetchChannels(Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;)V

    return-void
.end method

.method protected static doFetchByOldRPC(Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;

    invoke-direct {v1}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;->isQueryFacePaySwitch:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->getInitArgsPB(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;

    move-result-object v0

    const-string/jumbo v1, "ConfigFetch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "config fetched "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->success:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->fromOldRPCStruct(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;)Lcom/alipay/mobile/onsitepaystatic/OspSwitches;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->writeOspSwitches(Lcom/alipay/mobile/onsitepaystatic/OspSwitches;)Z
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;->callBack()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static doFetchChannels(Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;)V
    .locals 5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "begin fetch channels with new interface"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelReq;

    invoke-direct {v1}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelReq;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->getPayChannelPB(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelReq;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "config fetched "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->success:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->fromGetPayChannelRes(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->writeOspChannels(Ljava/util/ArrayList;)Z

    iget-object v0, v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->displayPayChannel:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->writeDisplayPayChannel(Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;->callBack()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static fetchPayChannlesAtBackground(Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$2;-><init>(Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ftechConfigAtBackground(Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$1;-><init>(Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static getConfigFromConfigServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigOutOfDate()Z
    .locals 2

    const-string/jumbo v0, "onsitepay_config_out_of_date"

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static getOnsitepaySwitch()Z
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->readOspSwitches()Lcom/alipay/mobile/onsitepaystatic/OspSwitches;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get onsitepay switch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->facePaySwitch:Z

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getSecurityCacheService()Lcom/alipay/mobile/framework/service/common/SecurityCacheService;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    return-object v0
.end method

.method public static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->getSecurityCacheService()Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static objToStr(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    sget-object v1, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    sget-object v2, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static putStringProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->getSecurityCacheService()Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p0, p1}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readChannelsInfo()Ljava/util/List;
    .locals 6

    const-string/jumbo v0, "onsitepay_config_channels_910"

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parse channels failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static readLastUsedChannel()Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;
    .locals 4

    sget-object v0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onsitepay_config_last_channel"

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->readChannelsInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;

    iget-object v3, v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->assignedChannel:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readLastUsedChannel success, find"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->channelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static readOspSwitches()Lcom/alipay/mobile/onsitepaystatic/OspSwitches;
    .locals 2

    const-string/jumbo v0, "onsitepay_config_910"

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->strToObj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;

    return-object v0
.end method

.method public static registGetOspSwitches()Z
    .locals 3

    const-string/jumbo v1, "FACEPAY-INIT"

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    new-instance v2, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$3;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$3;-><init>(Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->registSyncReceiver(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z

    move-result v0

    return v0
.end method

.method public static registSyncReceiver(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setConfigOutOfDate(Z)V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onsitepay_config_out_of_date"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->putStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public static setOnsitepaySwitch(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->readOspSwitches()Lcom/alipay/mobile/onsitepaystatic/OspSwitches;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;

    invoke-direct {v0}, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;-><init>()V

    :cond_0
    const-string/jumbo v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->facePaySwitch:Z

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->writeOspSwitches(Lcom/alipay/mobile/onsitepaystatic/OspSwitches;)Z

    return-void
.end method

.method public static strToObj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    sget-object v1, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get res from json "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    sget-object v2, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static writeDisplayPayChannel(Z)V
    .locals 5

    invoke-static {}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->readOspSwitches()Lcom/alipay/mobile/onsitepaystatic/OspSwitches;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;

    invoke-direct {v0}, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;-><init>()V

    :cond_0
    iput-boolean p0, v0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->displayPayChannel:Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "write display pay channels switch "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->writeOspSwitches(Lcom/alipay/mobile/onsitepaystatic/OspSwitches;)Z

    return-void
.end method

.method public static writeLastUsedChannel(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onsitepay_config_last_channel"

    invoke-static {v0, p0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->putStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static writeOspChannels(Ljava/util/ArrayList;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->objToStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onsitepay_config_channels_910"

    invoke-static {v1, v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->putStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static writeOspSwitches(Lcom/alipay/mobile/onsitepaystatic/OspSwitches;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->objToStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onsitepay_config_910"

    invoke-static {v1, v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->putStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
