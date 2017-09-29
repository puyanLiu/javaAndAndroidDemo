.class Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;
.super Ljava/lang/Object;
.source "EnhancedVideoPlayView.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/video/APVideoDownloadCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

.field private videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-object p2, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 595
    return-void
.end method


# virtual methods
.method public onDownloadError(Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoDownloadRsp;)V
    .locals 4

    .prologue
    .line 624
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$0(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;ZI)V

    .line 625
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$4(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoDownloadRsp;)V

    .line 626
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "video download error. path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$1(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 626
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public onDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoDownloadRsp;)V
    .locals 4

    .prologue
    .line 618
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$0(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;ZI)V

    .line 619
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$3(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    .line 620
    return-void
.end method

.method public onDownloadProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;I)V
    .locals 4

    .prologue
    .line 610
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$0(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;ZI)V

    .line 611
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$1(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 612
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$2(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->safeSetProgress(I)V

    .line 614
    :cond_0
    return-void
.end method

.method public onDownloadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 4

    .prologue
    .line 604
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "start download"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$0(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;ZI)V

    .line 606
    return-void
.end method

.method public onThumbDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoDownloadRsp;)V
    .locals 0

    .prologue
    .line 600
    return-void
.end method
