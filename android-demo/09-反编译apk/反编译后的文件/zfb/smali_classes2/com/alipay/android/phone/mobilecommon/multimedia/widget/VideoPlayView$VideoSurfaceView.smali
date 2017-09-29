.class public Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;
.super Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public drawBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public drawThumbnail()V
    .locals 0

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getDuration()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    return-void
.end method

.method public setOnCompletionListener(Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$OnPlayCompletionListener;)V
    .locals 0

    return-void
.end method

.method public setOnErrorListener(Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$OnPlayErrorListener;)V
    .locals 0

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public start(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
