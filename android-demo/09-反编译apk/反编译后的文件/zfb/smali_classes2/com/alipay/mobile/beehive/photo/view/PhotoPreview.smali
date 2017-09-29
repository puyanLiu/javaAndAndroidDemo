.class public Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;
.super Landroid/widget/RelativeLayout;
.source "PhotoPreview.java"


# static fields
.field static SDK_INT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PreviewPhoto"


# instance fields
.field private mVideoView:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

.field private pbLoading:Landroid/widget/ProgressBar;

.field private photoZone:Landroid/widget/FrameLayout;

.field private pvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->SDK_INT:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public changeViewType(I)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 53
    packed-switch p1, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->mVideoView:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->photoZone:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->mVideoView:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->photoZone:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getPhotoView()Lcom/alipay/mobile/beehive/photo/view/PhotoView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->pvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->pbLoading:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getVideoPlayView()Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->mVideoView:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    return-object v0
.end method

.method public makeClean()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->pvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->mVideoView:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->photoZone:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->mVideoView:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->makeClean()V

    .line 76
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 35
    sget v0, Lcom/alipay/mobile/beehive/R$id;->photoZone:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->photoZone:Landroid/widget/FrameLayout;

    .line 36
    sget v0, Lcom/alipay/mobile/beehive/R$id;->pb_loading:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->pbLoading:Landroid/widget/ProgressBar;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 38
    sget v0, Lcom/alipay/mobile/beehive/R$id;->iv_content:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->pvPhoto:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    .line 39
    sget v0, Lcom/alipay/mobile/beehive/R$id;->eVideoPlayView:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoPreview;->mVideoView:Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;

    .line 40
    return-void
.end method
