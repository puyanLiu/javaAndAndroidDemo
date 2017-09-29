.class Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$1;
.super Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
.source "EmotionPackageDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/rpc/ext/RpcExcutor",
        "<",
        "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$packageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$1;->val$packageId:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs excute([Ljava/lang/Object;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;
    .locals 4

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 53
    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 54
    const-class v2, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;

    .line 50
    iget-object v2, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$1;->val$packageId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;->queryEmotionPackage(Ljava/lang/String;Z)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge varargs synthetic excute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$1;->excute([Ljava/lang/Object;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;

    move-result-object v0

    return-object v0
.end method

.method public varargs onRpcFinish(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 66
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;->success:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;->emotionPackageDetailVOs:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    .line 68
    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    new-instance v1, Lcom/alipay/mobile/emotion/util/DefaultAPFileDownCallback;

    invoke-direct {v1}, Lcom/alipay/mobile/emotion/util/DefaultAPFileDownCallback;-><init>()V

    .line 72
    new-instance v2, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$1$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$1$1;-><init>(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$1;)V

    .line 71
    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper;->downloadFile(Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;Lcom/alipay/mobile/emotion/widget/AddPackageCallback;)V

    goto :goto_0
.end method

.method public bridge varargs synthetic onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$1;->onRpcFinish(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;[Ljava/lang/Object;)V

    return-void
.end method
