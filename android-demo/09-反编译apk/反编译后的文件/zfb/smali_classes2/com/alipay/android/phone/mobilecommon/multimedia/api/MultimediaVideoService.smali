.class public abstract Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract burnFile(Ljava/lang/String;)V
.end method

.method public abstract cancelDownload(Ljava/lang/String;)V
.end method

.method public abstract cancelUpload(Ljava/lang/String;)V
.end method

.method public abstract compressVideo(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APAlbumVideoInfo;
.end method

.method public abstract createCameraView(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightCameraView;
.end method

.method public abstract createCameraView(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/CameraParams;)Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightCameraView;
.end method

.method public abstract createCameraView(Ljava/lang/Object;Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/CameraParams;)Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightCameraView;
.end method

.method public abstract createPlayView(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;
.end method

.method public abstract createPlayView(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/CameraParams;)Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;
.end method

.method public abstract createVideoPlayView(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;
.end method

.method public abstract createVideoPlayView(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/CameraParams;)Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;
.end method

.method public abstract deleteShortVideo(Ljava/lang/String;)V
.end method

.method public abstract downloadVideo(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/video/APVideoDownloadCallback;)V
.end method

.method public abstract getRecentVideo(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getThumbPathById(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVideoPathById(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVideoThumbnail(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isVideoAvailable(Ljava/lang/String;)Z
.end method

.method public abstract isVideoTransmissible(Ljava/lang/String;)Z
.end method

.method public abstract loadAlbumVideo(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V
.end method

.method public abstract loadAlbumVideo(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V
.end method

.method public abstract loadShortVideo(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/video/APVideoDownloadCallback;Z)V
.end method

.method public abstract loadShortVideo(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/video/APVideoDownloadCallback;Z)V
.end method

.method public abstract loadShortVideoSync(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/video/APVideoDownloadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoDownloadRsp;
.end method

.method public abstract loadVideoThumb(Ljava/lang/String;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V
.end method

.method public abstract loadVideoThumb(Ljava/lang/String;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V
.end method

.method public abstract parseVideoInfo(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoInfo;
.end method

.method public abstract startPlay(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;)V
.end method

.method public abstract uploadAlbumVideo(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/video/APVideoUploadCallback;)V
.end method

.method public abstract uploadAlbumVideoSync(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/video/APVideoUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoUploadRsp;
.end method

.method public abstract uploadShortVideoSync(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/video/APVideoUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoUploadRsp;
.end method
