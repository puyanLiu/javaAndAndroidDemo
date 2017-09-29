.class public Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;
.super Landroid/widget/FrameLayout;
.source "EnhancedVideoPlayView.java"


# static fields
.field public static final CODE_ERR_FILE_ID_NOT_EXIST:I = 0xb

.field public static final CODE_ERR_NETWORK_ERR:I = 0xa

.field public static final CODE_ERR_NO_NETWORK:I = 0x9

.field public static final CODE_SUCCESS:I = 0x0

.field private static final STATE_DOWNLOAD_ERROR:I = 0x3

.field private static final STATE_DOWNLOAD_FINISH:I = 0x2

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_START_DOWNLOAD:I = 0x1

.field private static final STATE_UPDATEPROGRESS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "EnhancedVideoPlayView"

.field private static final TIME_DELAY_MOVE_HINT:I = 0x1388

.field private static mDisableAutoPlayInPoorNetwork:Z

.field private static mOriVideoExtraInfoType:I

.field private static mShowPlayFinishHint:Z


# instance fields
.field private FILE_SCHEME:Ljava/lang/String;

.field private delayMoveHintHandler:Landroid/os/Handler;

.field private isFocusing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isHintShowed:Z

.field private mActivity:Landroid/app/Activity;

.field private mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

.field private mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

.field private mVideoView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;

.field private oPlayBtn:Landroid/widget/ImageView;

.field private oProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

.field private oVideoExtraInfoV:Landroid/widget/TextView;

.field private oVideoThumb:Landroid/widget/ImageView;

.field private originalVideoZone:Landroid/widget/FrameLayout;

.field private sFinishHintTv:Landroid/widget/TextView;

.field private sPlayBtn:Landroid/widget/ImageView;

.field private sProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

.field private smallVideoZone:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    sput v0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mOriVideoExtraInfoType:I

    .line 74
    sput-boolean v0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mShowPlayFinishHint:Z

    .line 75
    sput-boolean v0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mDisableAutoPlayInPoorNetwork:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->isHintShowed:Z

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->isFocusing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 356
    const-string/jumbo v0, "file://"

    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->FILE_SCHEME:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$layout;->view_enhanced_sightplayview:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    sget v0, Lcom/alipay/mobile/beehive/R$id;->videoPlayView:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->setLooping(Z)V

    .line 91
    sget v0, Lcom/alipay/mobile/beehive/R$id;->smallVideoZone:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->smallVideoZone:Landroid/widget/FrameLayout;

    .line 92
    sget v0, Lcom/alipay/mobile/beehive/R$id;->sProgressBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    .line 93
    sget v0, Lcom/alipay/mobile/beehive/R$id;->sStart:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sPlayBtn:Landroid/widget/ImageView;

    .line 94
    sget v0, Lcom/alipay/mobile/beehive/R$id;->finishHint:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sFinishHintTv:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/alipay/mobile/beehive/R$id;->originalVideoZone:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->originalVideoZone:Landroid/widget/FrameLayout;

    .line 97
    sget v0, Lcom/alipay/mobile/beehive/R$id;->oProgressBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    .line 98
    sget v0, Lcom/alipay/mobile/beehive/R$id;->oStart:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oPlayBtn:Landroid/widget/ImageView;

    .line 99
    sget v0, Lcom/alipay/mobile/beehive/R$id;->oVideoSizeTv:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oVideoExtraInfoV:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/alipay/mobile/beehive/R$id;->oVideoThumb:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oVideoThumb:Landroid/widget/ImageView;

    .line 102
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;ZI)V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->safeChangeViewState(Lcom/alipay/mobile/beehive/service/PhotoInfo;ZI)V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sFinishHintTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->isHintShowed:Z

    return-void
.end method

.method static synthetic access$12(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->delayMoveHintHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$13(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    return-object v0
.end method

.method static synthetic access$14(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;ZI)V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->changeViewState(ZI)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->playVideo(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoDownloadRsp;)V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->safeShowDownLoadError(Lcom/alipay/mobile/beehive/service/PhotoInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoDownloadRsp;)V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->isFocusing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->playLocalOriginalVideo(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->showPlayFinishHint()V

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->isHintShowed:Z

    return v0
.end method

.method private changeViewState(ZI)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 495
    if-eqz p1, :cond_2

    .line 496
    packed-switch p2, :pswitch_data_0

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 498
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 502
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 506
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 510
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 514
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->setVisibility(I)V

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 518
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 525
    :cond_2
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 527
    :pswitch_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 531
    :pswitch_6
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 535
    :pswitch_7
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 540
    :pswitch_8
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 544
    :pswitch_9
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 545
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->setVisibility(I)V

    .line 547
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 525
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private downloadAndPlayInside()V
    .locals 4

    .prologue
    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sPlayBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$SmallVideoDownloadCallback;-><init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->downloadVideo(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/video/APVideoDownloadCallback;)V

    .line 454
    return-void
.end method

.method public static globalConfig(IZZ)V
    .locals 0

    .prologue
    .line 176
    sput p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mOriVideoExtraInfoType:I

    .line 177
    sput-boolean p1, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mShowPlayFinishHint:Z

    .line 178
    sput-boolean p2, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mDisableAutoPlayInPoorNetwork:Z

    .line 179
    return-void
.end method

.method private handleOfficalVideo()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->isVideoAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "local file exist,start play"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->playVideo(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    .line 434
    :goto_0
    return-void

    .line 407
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mDisableAutoPlayInPoorNetwork:Z

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sPlayBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sPlayBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$6;-><init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->playVideo(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    goto :goto_0

    .line 422
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "no local file ,need download"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "network is good,auto download"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->downloadAndPlayInside()V

    goto :goto_0

    .line 430
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "poor network,wait user call start download"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->loadAndPlayDepends()V

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 679
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 680
    const-string/jumbo v2, "connectivity"

    .line 679
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 681
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 685
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAndPlayDepends()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sPlayBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sPlayBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$7;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$7;-><init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    return-void
.end method

.method private playLocalOriginalVideo(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 5

    .prologue
    .line 359
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "playLocalOriginalVideo() called."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    if-eq p1, v0, :cond_1

    .line 362
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "related video info has changed,just return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "EnhancedVideoPlayView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "playOriginalVideo() filePath = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->FILE_SCHEME:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 382
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "EnhancedVideoPlayView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "play local original video : url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    const-string/jumbo v2, "video/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 392
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$string;->no_suitable_video_player_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 379
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->FILE_SCHEME:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->getVideoPathById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private playVideo(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 3

    .prologue
    .line 437
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "playVideo() called."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    if-eq p1, v0, :cond_1

    .line 440
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "related video info has changed,just return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->isFocusing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->start(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private restoreDefaultState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 210
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->isHintShowed:Z

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->isFocusing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oVideoExtraInfoV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sFinishHintTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oVideoThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sProgressBar:Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->delayMoveHintHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->delayMoveHintHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    :cond_0
    return-void
.end method

.method private safeChangeViewState(Lcom/alipay/mobile/beehive/service/PhotoInfo;ZI)V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    if-eq p1, v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 482
    new-instance v0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$8;

    invoke-direct {v0, p0, p2, p3}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$8;-><init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;ZI)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 490
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->changeViewState(ZI)V

    goto :goto_0
.end method

.method private safeShowDownLoadError(Lcom/alipay/mobile/beehive/service/PhotoInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoDownloadRsp;)V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    if-eq p1, v0, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoDownloadRsp;->getRetCode()I

    move-result v0

    .line 571
    if-eqz v0, :cond_0

    .line 573
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 575
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$string;->file_not_exist:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 581
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 576
    :cond_2
    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 577
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$string;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 579
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$string;->download_failed_try_again_later:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private showOVideoExtraInfo(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 147
    sget v0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mOriVideoExtraInfoType:I

    packed-switch v0, :pswitch_data_0

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oVideoExtraInfoV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 150
    :pswitch_0
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oVideoExtraInfoV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/beehive/R$string;->video_size:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getVideoSizeStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oVideoExtraInfoV:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getVideoDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oVideoExtraInfoV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/beehive/R$string;->duraion:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getVideoDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oVideoExtraInfoV:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showPlayFinishHint()V
    .locals 3

    .prologue
    .line 187
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "\u89c6\u9891\u64ad\u653e\u5b8c\u6210\u4e00\u904d"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$2;-><init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method


# virtual methods
.method public fetchThumbnail()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x280

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 232
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "EnhancedVideoPlayView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fetchThumbnail video:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getMediaType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;

    .line 235
    new-instance v3, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$3;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$3;-><init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)V

    .line 234
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->loadVideoThumb(Ljava/lang/String;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V

    .line 276
    :cond_1
    :goto_0
    return-void

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getMediaType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oVideoThumb:Landroid/widget/ImageView;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$4;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$4;-><init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)V

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->loadAlbumVideo(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V

    goto :goto_0
.end method

.method public idHoldingVideo()Z
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    const/4 v0, 0x1

    .line 693
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadVideoInfo(Lcom/alipay/mobile/beehive/service/PhotoInfo;)Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 109
    iput-object p1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 110
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->restoreDefaultState()V

    .line 111
    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getMediaType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->setVideoId(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    if-nez v0, :cond_1

    .line 139
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 140
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    .line 139
    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    .line 143
    :cond_1
    return-object p0

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->smallVideoZone:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->originalVideoZone:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 118
    sget-boolean v0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mShowPlayFinishHint:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->delayMoveHintHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->delayMoveHintHandler:Landroid/os/Handler;

    .line 122
    :cond_2
    new-instance v0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$1;-><init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)V

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->setOnCompletionListener(Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView$OnPlayCompletionListener;)V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->smallVideoZone:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->originalVideoZone:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->showOVideoExtraInfo(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public makeClean()V
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 701
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->restoreDefaultState()V

    .line 702
    return-void
.end method

.method public onFocus(Z)V
    .locals 3

    .prologue
    .line 282
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "onFocus()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->isFocusing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    if-nez v0, :cond_1

    .line 285
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "not video or didn`t set videoInfo"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getMediaType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 318
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "not video"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "is small video"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->handleOfficalVideo()V

    goto :goto_0

    .line 296
    :pswitch_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "is original video"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oPlayBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oPlayBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView$5;-><init>(Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    if-eqz p1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->oPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoseFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "onLoseFocus()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->isFocusing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    if-nez v0, :cond_1

    .line 330
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EnhancedVideoPlayView"

    const-string/jumbo v2, "not video or didn`t set videoInfo"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoInfo:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getMediaType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 350
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "videoCompact"

    const-string/jumbo v2, "not video\uff0cnothing to do"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "videoCompact"

    const-string/jumbo v2, "original video\uff0cnothing to do"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :pswitch_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "videoCompact"

    const-string/jumbo v2, "small video,stop play"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mVideoView:Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/widget/VideoPlayView;->stop()V

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->sFinishHintTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->isHintShowed:Z

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->delayMoveHintHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->delayMoveHintHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setActivity(Landroid/app/Activity;)Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alipay/mobile/beehive/video/views/EnhancedVideoPlayView;->mActivity:Landroid/app/Activity;

    .line 183
    return-object p0
.end method
