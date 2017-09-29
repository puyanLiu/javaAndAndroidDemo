.class final Lcom/alipay/mobile/socialsdk/api/image/b;
.super Ljava/lang/Object;
.source "ImagesDownloader.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;

.field private final synthetic b:Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/image/b;->a:Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/api/image/b;->b:Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;

    iput p3, p0, Lcom/alipay/mobile/socialsdk/api/image/b;->c:I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onError"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/image/b;->b:Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/image/b;->c:I

    const/4 v2, 0x1

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;->onLoad(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;IZ)V

    .line 80
    return-void
.end method

.method public final onProcess(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onProcess"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public final onSucc(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onSucc"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
