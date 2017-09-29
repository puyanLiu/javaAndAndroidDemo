.class public Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlayView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

.field private mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

.field private mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mContext:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->createPlayView(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public drawBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;->drawBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;->drawBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public drawThumbnail()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;->drawThumbnail()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;->drawThumbnail()V

    goto :goto_0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;->getVideoId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;->getVideoId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "video service not set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;->drawBubblePreload(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public setBubbleEffect(Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/BubbleEffectParams;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;->setBubbleEffect(Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/BubbleEffectParams;)V

    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;->setLooping(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;->setLooping(Z)V

    goto :goto_0
.end method

.method public setOnErrorListener(Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView$OnPlayErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;->setOnErrorListener(Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView$OnPlayErrorListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;->setOnErrorListener(Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView$OnPlayErrorListener;)V

    goto :goto_0
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;->setVideoId(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;->setVideoId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;->start()V

    goto :goto_0
.end method

.method public start(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;->start(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;->start(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;->start(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;->start(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlayView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlayView;->stop()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightVideoPlayView;->mPlaySurfaceView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightPlaySurfaceView;->stop()V

    goto :goto_0
.end method
