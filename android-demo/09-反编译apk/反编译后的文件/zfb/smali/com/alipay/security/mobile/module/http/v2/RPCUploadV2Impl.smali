.class public Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/security/mobile/module/http/v2/IUploadV2;


# static fields
.field private static a:Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;


# instance fields
.field private b:Lcom/alipay/mobile/common/rpc/RpcFactory;

.field private c:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

.field private d:Lcom/alipay/tscenter/biz/rpc/pb/DeviceDataReportPBService;

.field private e:Lcom/alipay/tscenter/biz/rpc/pb/AppListCmdPBService;

.field private f:Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->a:Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->c:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->d:Lcom/alipay/tscenter/biz/rpc/pb/DeviceDataReportPBService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->e:Lcom/alipay/tscenter/biz/rpc/pb/AppListCmdPBService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->f:Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;

    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcFactory;

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;-><init>()V

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->setContext(Landroid/content/Context;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    const-class v1, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->c:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    const-class v1, Lcom/alipay/tscenter/biz/rpc/pb/DeviceDataReportPBService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/pb/DeviceDataReportPBService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->d:Lcom/alipay/tscenter/biz/rpc/pb/DeviceDataReportPBService;

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    const-class v1, Lcom/alipay/tscenter/biz/rpc/pb/AppListCmdPBService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/pb/AppListCmdPBService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->e:Lcom/alipay/tscenter/biz/rpc/pb/AppListCmdPBService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/LOG;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;)Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->f:Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->f:Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;)Lcom/alipay/tscenter/biz/rpc/pb/DeviceDataReportPBService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->d:Lcom/alipay/tscenter/biz/rpc/pb/DeviceDataReportPBService;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;
    .locals 2

    const-class v1, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->a:Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->a:Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;

    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->a:Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAppList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/model/AppListResponseModel;
    .locals 2

    invoke-static {p1, p2, p3, p4}, Lcom/alipay/security/mobile/module/http/model/ConvertUtil;->convertFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/tscenter/biz/rpc/pb/request/AppListCmdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->e:Lcom/alipay/tscenter/biz/rpc/pb/AppListCmdPBService;

    invoke-interface {v1, v0}, Lcom/alipay/tscenter/biz/rpc/pb/AppListCmdPBService;->getAppListCmd(Lcom/alipay/tscenter/biz/rpc/pb/request/AppListCmdRequest;)Lcom/alipay/tscenter/biz/rpc/pb/result/AppListCmdResult;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/http/model/ConvertUtil;->convertFrom(Lcom/alipay/tscenter/biz/rpc/pb/result/AppListCmdResult;)Lcom/alipay/security/mobile/module/http/model/AppListResponseModel;

    move-result-object v0

    return-object v0
.end method

.method public logCollect(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->c:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->c:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->textCompress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;->logCollect(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "success"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_2
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/LOG;->logException(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public updateStaticData(Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;)Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->d:Lcom/alipay/tscenter/biz/rpc/pb/DeviceDataReportPBService;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/alipay/security/mobile/module/http/model/ConvertUtil;->convertFrom(Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;)Lcom/alipay/tscenter/biz/rpc/pb/request/DeviceDataReportRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->f:Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl$1;

    invoke-direct {v2, p0, v1}, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl$1;-><init>(Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;Lcom/alipay/tscenter/biz/rpc/pb/request/DeviceDataReportRequest;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x493e0

    :goto_1
    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->f:Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;

    if-nez v1, :cond_2

    if-ltz v0, :cond_2

    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x32

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/LOG;->logException(Ljava/lang/Throwable;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->f:Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/http/model/ConvertUtil;->convertFrom(Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;)Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;

    move-result-object v0

    goto :goto_0
.end method
