.class final Lcom/alipay/mobile/socialsdk/api/image/d;
.super Ljava/lang/Object;
.source "ImagesDownloader.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;

.field private final synthetic b:Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/image/d;->a:Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/api/image/d;->b:Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/image/d;->b:Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;->onLoad(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;IZ)V

    .line 125
    return-void
.end method

.method public final onProcess(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public final onSucc(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onSucc"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
