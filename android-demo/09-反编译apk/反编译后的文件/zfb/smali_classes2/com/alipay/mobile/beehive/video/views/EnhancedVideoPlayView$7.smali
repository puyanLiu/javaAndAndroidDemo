.class Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$7;
.super Ljava/lang/Object;
.source "EnhancedVideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$7;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 465
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "user click to download"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$7;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$13(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$7;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$1(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$7;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$7;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$1(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;-><init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->downloadVideo(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/video/APVideoDownloadCallback;)V

    .line 467
    return-void
.end method
