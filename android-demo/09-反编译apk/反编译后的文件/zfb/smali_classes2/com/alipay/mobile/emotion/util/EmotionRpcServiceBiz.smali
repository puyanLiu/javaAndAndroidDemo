.class public Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;
.super Ljava/lang/Object;
.source "EmotionRpcServiceBiz.java"


# static fields
.field public static mInstance:Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;


# instance fields
.field application:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private final mRPCService:Lcom/alipay/mobile/framework/service/common/RpcService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;->mInstance:Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 31
    iput-object v0, p0, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;->mRPCService:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 34
    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/alipay/mobile/framework/app/ActivityApplication;)Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;->mInstance:Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;->mInstance:Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;

    .line 26
    :cond_0
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;->mInstance:Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getEmotionPackageDetail(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;->mRPCService:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 51
    const-class v1, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;

    .line 50
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;->queryEmotionPackage(Ljava/lang/String;Z)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;

    move-result-object v0

    return-object v0
.end method

.method public getEmotionPackageDownloadHistory(J)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;->mRPCService:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 62
    const-class v1, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;

    .line 61
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;->queryEmotionPackageDownloadHistory(J)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;

    move-result-object v0

    return-object v0
.end method

.method public getEmotionPackageList(J)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;->mRPCService:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 41
    const-class v1, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;

    .line 40
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;->queryEmotionPackageList(J)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;

    move-result-object v0

    return-object v0
.end method
