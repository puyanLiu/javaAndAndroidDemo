.class Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$PurchaseEmotionPackageTask;
.super Landroid/os/AsyncTask;
.source "EmotionPackageDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$PurchaseEmotionPackageTask;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$PurchaseEmotionPackageTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;
    .locals 4

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 244
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 245
    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 243
    const-class v2, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;

    .line 247
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-interface {v0, v2}, Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;->purchaseEmotionPackage(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$PurchaseEmotionPackageTask;->doInBackground([Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$PurchaseEmotionPackageTask;->onPostExecute(Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;)V

    return-void
.end method
