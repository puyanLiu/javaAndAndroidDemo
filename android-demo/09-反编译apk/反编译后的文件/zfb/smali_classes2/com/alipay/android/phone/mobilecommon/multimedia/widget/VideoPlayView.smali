.class public Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlayView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

.field private mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->createVideoPlayView(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "thumbnail"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public drawBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->drawBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public drawThumbnail()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->drawThumbnail()V

    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->getDuration()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->getVideoId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "video service not set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->pause()V

    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$OnPlayCompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->setOnCompletionListener(Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$OnPlayCompletionListener;)V

    :cond_0
    return-void
.end method

.method public setOnErorrListener(Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$OnPlayErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->setOnErrorListener(Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$OnPlayErrorListener;)V

    :cond_0
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->setVideoId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->start()V

    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->start(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->start(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$VideoSurfaceView;->stop()V

    :cond_0
    return-void
.end method
