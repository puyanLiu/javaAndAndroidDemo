.class Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;
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
    .line 638
    iput-object p1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput-object p2, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 640
    return-void
.end method


# virtual methods
.method public onDownloadError(Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoDownloadRsp;)V
    .locals 4

    .prologue
    .line 644
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$0(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;ZI)V

    .line 645
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$4(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoDownloadRsp;)V

    .line 646
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "video download error. path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$1(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method public onDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoDownloadRsp;)V
    .locals 4

    .prologue
    .line 652
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$0(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;ZI)V

    .line 653
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$5(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$6(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    .line 656
    :cond_0
    return-void
.end method

.method public onDownloadProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;I)V
    .locals 4

    .prologue
    .line 660
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$0(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;ZI)V

    .line 661
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$1(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 662
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$7(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->safeSetProgress(I)V

    .line 664
    :cond_0
    return-void
.end method

.method public onDownloadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 668
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->this$0:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$OriGinalVideoDownloadCallback;->videoInfoRecord:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-static {v0, v1, v2, v2}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->access$0(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;ZI)V

    .line 669
    return-void
.end method

.method public onThumbDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoDownloadRsp;)V
    .locals 0

    .prologue
    .line 674
    return-void
.end method
