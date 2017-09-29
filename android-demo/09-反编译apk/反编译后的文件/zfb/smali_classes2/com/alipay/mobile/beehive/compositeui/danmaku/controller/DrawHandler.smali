.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;
.super Landroid/os/Handler;
.source "DrawHandler.java"


# static fields
.field private static final CLEAR_DANMAKUS_ON_SCREEN:I = 0xd

.field private static final HIDE_DANMAKUS:I = 0x9

.field private static final INDEFINITE_TIME:J = 0x989680L

.field private static final MAX_RECORD_SIZE:I = 0x1f4

.field private static final NOTIFY_DISP_SIZE_CHANGED:I = 0xa

.field private static final NOTIFY_RENDERING:I = 0xb

.field private static final PAUSE:I = 0x7

.field public static final PREPARE:I = 0x5

.field private static final QUIT:I = 0x6

.field public static final RESUME:I = 0x3

.field public static final SEEK_POS:I = 0x4

.field private static final SHOW_DANMAKUS:I = 0x8

.field public static final START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Danmaku"

.field public static final UPDATE:I = 0x2

.field private static final UPDATE_WHEN_PAUSED:I = 0xc


# instance fields
.field public drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

.field private isWaitedInCurrentThread:Z

.field private mCallback:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;

.field private mCordonTime:J

.field private mCordonTime2:J

.field private mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

.field private mDanmakusVisible:Z

.field private mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer",
            "<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawTimes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameUpdateRate:J

.field private mIdleSleep:Z

.field private mInSeekingAction:Z

.field private mInSyncAction:Z

.field private mInWaitingState:Z

.field private mLastDeltaTime:J

.field private mParser:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

.field private mReady:Z

.field private mRemainingTime:J

.field private final mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

.field private mSkipFrames:I

.field private mThread:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;

.field private mThresholdTime:J

.field private mTimeBase:J

.field private final mUpdateInNewThread:Z

.field private pausedPosition:J

.field private quitFlag:Z

.field private timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 84
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->pausedPosition:J

    .line 86
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->quitFlag:Z

    .line 94
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    .line 102
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    .line 106
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    .line 115
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    .line 121
    const-wide/16 v3, 0x1e

    iput-wide v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mCordonTime:J

    .line 123
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->isWaitedInCurrentThread:Z

    .line 126
    const-wide/16 v3, 0x3c

    iput-wide v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mCordonTime2:J

    .line 131
    const-wide/16 v3, 0x10

    iput-wide v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    .line 157
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mUpdateInNewThread:Z

    .line 158
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->isProblemBoxDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mIdleSleep:Z

    .line 159
    invoke-direct {p0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->bindView(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;)V

    .line 160
    if-eqz p3, :cond_2

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->showDanmakus(Ljava/lang/Long;)V

    .line 165
    :goto_1
    iput-boolean p3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    .line 166
    return-void

    :cond_1
    move v0, v2

    .line 157
    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->hideDanmakus(Z)J

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mReady:Z

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mCallback:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->initRenderingConfigs()V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->quitFlag:Z

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;J)J
    .locals 2

    .prologue
    .line 475
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->syncTimer(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    return v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;J)V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->waitRendering(J)V

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mIdleSleep:Z

    return v0
.end method

.method private bindView(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    .line 170
    return-void
.end method

.method private createDrawTask(ZLcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Landroid/content/Context;IIZLcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;
    .locals 6

    .prologue
    .line 565
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    .line 566
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p4, p5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;->setSize(II)V

    .line 567
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 568
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 569
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 568
    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;->setDensities(FIF)V

    .line 570
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->scaleTextSize:F

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;->resetSlopPixel(F)V

    .line 571
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;->setHardwareAccelerated(Z)V

    .line 572
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 573
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->notifyDispSizeChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V

    .line 575
    if-eqz p1, :cond_0

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    .line 576
    const/high16 v1, 0x100000

    invoke-static {p3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/AndroidUtils;->getMemoryClass(Landroid/content/Context;)I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v5, v1, 0x3

    move-object v1, p2

    move-object v2, p3

    move-object v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Landroid/content/Context;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;I)V

    .line 578
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mParser:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->setParser(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;)V

    .line 579
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->prepare()V

    .line 580
    return-object v0

    .line 577
    :cond_0
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-direct {v0, p2, p3, v1, p7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Landroid/content/Context;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;)V

    goto :goto_0
.end method

.method private declared-synchronized getAverageRenderingTime()J
    .locals 6

    .prologue
    .line 697
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 698
    if-gtz v1, :cond_0

    .line 699
    const-wide/16 v0, 0x0

    .line 701
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 700
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 701
    int-to-long v0, v1

    div-long v0, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initRenderingConfigs()V
    .locals 4

    .prologue
    .line 520
    const-wide/16 v0, 0x21

    const-wide/16 v2, 0x28

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mCordonTime:J

    .line 522
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mCordonTime:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mCordonTime2:J

    .line 523
    const-wide/16 v0, 0x10

    const-wide/16 v2, 0xf

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    .line 524
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    .line 525
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mThresholdTime:J

    .line 528
    return-void
.end method

.method private notifyRendering()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 645
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mInWaitingState:Z

    if-nez v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->requestClear()V

    .line 651
    :cond_1
    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mSkipFrames:I

    .line 652
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mUpdateInNewThread:Z

    if-eqz v0, :cond_2

    .line 653
    monitor-enter p0

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 653
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    monitor-enter v1

    .line 657
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 656
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 664
    :goto_1
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mInWaitingState:Z

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 656
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 660
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 661
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 662
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private prepare(Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;->isDanmakuDrawingCacheEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    .line 533
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;->getHeight()I

    move-result v5

    .line 534
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;->isHardwareAccelerated()Z

    move-result v6

    new-instance v7, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$3;

    invoke-direct {v7, p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$3;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;Ljava/lang/Runnable;)V

    move-object v0, p0

    .line 532
    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->createDrawTask(ZLcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Landroid/content/Context;IIZLcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private quitUpdateThread()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mThread:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;

    if-eqz v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 337
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mThread:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;->quit()V

    .line 342
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mThread:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 346
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mThread:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;

    .line 348
    :cond_0
    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 344
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku"

    const-string/jumbo v2, "failed to quit UpdateThread"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized recordRenderingTime()V
    .locals 3

    .prologue
    .line 705
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 706
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 707
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 708
    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 709
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    :cond_0
    monitor-exit p0

    return-void

    .line 705
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final syncTimer(J)J
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    .line 476
    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mInSeekingAction:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mInSyncAction:Z

    if-eqz v2, :cond_1

    :cond_0
    move-wide v2, v0

    .line 510
    :goto_0
    return-wide v2

    .line 479
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mInSyncAction:Z

    .line 481
    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mTimeBase:J

    sub-long v2, p1, v2

    .line 482
    iget-boolean v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iget-boolean v4, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mInWaitingState:Z

    if-eqz v4, :cond_4

    .line 483
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    invoke-virtual {v4, v2, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    .line 484
    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mRemainingTime:J

    move-wide v2, v0

    .line 506
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mCallback:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;

    if-eqz v0, :cond_3

    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mCallback:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;->updateTimer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;)V

    .line 509
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mInSyncAction:Z

    goto :goto_0

    .line 486
    :cond_4
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v4, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v2, v4

    .line 487
    iget-wide v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->getAverageRenderingTime()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 488
    const-wide/16 v6, 0x7d0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_5

    iget-object v6, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iget-wide v6, v6, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->consumingTime:J

    iget-wide v8, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mCordonTime:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    iget-wide v6, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mCordonTime:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_6

    .line 501
    :cond_5
    :goto_2
    iput-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    .line 502
    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mRemainingTime:J

    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->add(J)J

    goto :goto_1

    .line 492
    :cond_6
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    div-long v0, v2, v0

    add-long/2addr v0, v4

    .line 493
    iget-wide v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 494
    iget-wide v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mCordonTime:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 495
    iget-wide v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    sub-long v4, v0, v4

    .line 496
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    iget-wide v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_7

    iget-wide v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    iget-wide v6, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    .line 497
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    .line 499
    :cond_7
    sub-long/2addr v2, v0

    move-wide v10, v2

    move-wide v2, v0

    move-wide v0, v10

    goto :goto_2
.end method

.method private syncTimerIfNeeded()V
    .locals 2

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mInWaitingState:Z

    if-eqz v0, :cond_0

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->syncTimer(J)J

    .line 517
    :cond_0
    return-void
.end method

.method private updateInCurrentThread()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 358
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->quitFlag:Z

    if-eqz v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 363
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->syncTimer(J)J

    move-result-wide v0

    .line 364
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 365
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 366
    const-wide/16 v2, 0x3c

    sub-long v0, v2, v0

    invoke-virtual {p0, v6, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;->drawDanmakus()J

    move-result-wide v0

    .line 370
    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->isWaitedInCurrentThread:Z

    if-eqz v2, :cond_2

    .line 371
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 372
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->isWaitedInCurrentThread:Z

    .line 375
    :cond_2
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 376
    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-nez v2, :cond_3

    .line 378
    const-wide/32 v0, 0x989680

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->waitRendering(J)V

    .line 379
    iput-boolean v7, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->isWaitedInCurrentThread:Z

    goto :goto_0

    .line 381
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iget-boolean v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mIdleSleep:Z

    if-eqz v2, :cond_4

    .line 383
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iget-wide v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v4, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v2, v4

    .line 384
    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 385
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "wait rendering for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    sub-long v5, v2, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 387
    const-string/jumbo v5, "ms because nothing rendered in last frame. now="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 385
    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    sub-long v0, v2, v8

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->waitRendering(J)V

    .line 391
    iput-boolean v7, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->isWaitedInCurrentThread:Z

    goto/16 :goto_0

    .line 397
    :cond_4
    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 398
    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    sub-long v0, v2, v0

    invoke-virtual {p0, v6, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 401
    :cond_5
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private updateInNewThread()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mThread:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;

    if-eqz v0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 411
    :cond_0
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;

    const-string/jumbo v1, "Danmaku - UpdateThread"

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mThread:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;

    .line 472
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mThread:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;->start()V

    goto :goto_0
.end method

.method private waitRendering(J)V
    .locals 7

    .prologue
    const-wide/32 v5, 0x989680

    const/4 v4, 0x2

    const/16 v3, 0xb

    .line 668
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->sysTime:J

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mInWaitingState:Z

    .line 670
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mUpdateInNewThread:Z

    if-eqz v0, :cond_1

    .line 672
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    cmp-long v0, p1, v5

    if-nez v0, :cond_0

    .line 674
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 678
    :goto_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 679
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 672
    monitor-exit v1

    .line 694
    :goto_1
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 672
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 681
    :catch_0
    move-exception v0

    goto :goto_1

    .line 685
    :cond_1
    cmp-long v0, p1, v5

    if-nez v0, :cond_2

    .line 686
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 687
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    goto :goto_1

    .line 689
    :cond_2
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 690
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 691
    invoke-virtual {p0, v3, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method


# virtual methods
.method public addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->setTimer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;)V

    .line 594
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    .line 595
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 597
    :cond_0
    return-void
.end method

.method public clearDanmakusOnScreen()V
    .locals 1

    .prologue
    .line 748
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 749
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;
    .locals 3

    .prologue
    .line 634
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    .line 639
    :goto_0
    return-object v0

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;->setExtraData(Ljava/lang/Object;)V

    .line 637
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->draw(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->set(Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;)V

    .line 638
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->recordRenderingTime()V

    .line 639
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    goto :goto_0
.end method

.method public getCurrentTime()J
    .locals 4

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->quitFlag:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mInWaitingState:Z

    if-nez v0, :cond_1

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mRemainingTime:J

    sub-long/2addr v0, v2

    .line 744
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mTimeBase:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDisplayer()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    return-object v0
.end method

.method public getVisibility()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    iget v1, p1, Landroid/os/Message;->what:I

    .line 191
    packed-switch v1, :pswitch_data_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 193
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mParser:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;->isViewReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    :cond_1
    const/4 v0, 0x5

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 196
    :cond_2
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$1;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->prepare(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 209
    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->pausedPosition:J

    .line 215
    :goto_1
    :pswitch_2
    iput-boolean v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->quitFlag:Z

    .line 216
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mReady:Z

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->reset()V

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->pausedPosition:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mTimeBase:J

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->pausedPosition:J

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    .line 221
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 222
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->start()V

    .line 224
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->notifyRendering()V

    .line 225
    iput-boolean v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mInSeekingAction:Z

    goto :goto_0

    .line 212
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->pausedPosition:J

    goto :goto_1

    .line 227
    :cond_4
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v6, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 231
    :pswitch_3
    iput-boolean v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->quitFlag:Z

    .line 232
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->quitUpdateThread()V

    .line 233
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 234
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v0, v2

    .line 235
    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mTimeBase:J

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mTimeBase:J

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mTimeBase:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_5

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->seek(J)V

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->pausedPosition:J

    .line 240
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 241
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 244
    :pswitch_4
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mUpdateInNewThread:Z

    if-eqz v0, :cond_6

    .line 245
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->updateInNewThread()V

    goto/16 :goto_0

    .line 247
    :cond_6
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->updateInCurrentThread()V

    goto/16 :goto_0

    .line 251
    :pswitch_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->notifyDispSizeChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V

    .line 252
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 253
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->updateMeasureFlag()V

    goto/16 :goto_0

    .line 258
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 259
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    if-eqz v1, :cond_7

    .line 260
    if-nez v0, :cond_9

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->getCurrentTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->requestClear()V

    .line 270
    :cond_7
    :goto_2
    iput-boolean v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    .line 271
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->quitFlag:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    if-eqz v0, :cond_8

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;->drawDanmakus()J

    .line 274
    :cond_8
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->notifyRendering()V

    goto/16 :goto_0

    .line 264
    :cond_9
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-interface {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->start()V

    .line 265
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->seek(J)V

    .line 266
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-interface {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->requestClear()V

    .line 267
    invoke-virtual {p0, v5, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 277
    :pswitch_7
    iput-boolean v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    if-eqz v0, :cond_a

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;->clear()V

    .line 281
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_b

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->requestClear()V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->requestHide()V

    .line 285
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 286
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    if-eqz v2, :cond_c

    .line 287
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-interface {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->quit()V

    .line 289
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 295
    :pswitch_9
    if-ne v1, v8, :cond_d

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 298
    :cond_d
    iput-boolean v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->quitFlag:Z

    .line 299
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->syncTimerIfNeeded()V

    .line 300
    iput v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mSkipFrames:I

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mThread:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;

    if-eqz v0, :cond_e

    .line 302
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->notifyRendering()V

    .line 303
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->quitUpdateThread()V

    .line 305
    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    iput-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->pausedPosition:J

    .line 306
    if-ne v1, v8, :cond_0

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_f

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->quit()V

    .line 310
    :cond_f
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mParser:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

    if-eqz v0, :cond_10

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mParser:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->release()V

    .line 313
    :cond_10
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 318
    :pswitch_a
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->notifyRendering()V

    goto/16 :goto_0

    .line 321
    :pswitch_b
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->quitFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->requestClear()V

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;->drawDanmakus()J

    .line 324
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->notifyRendering()V

    goto/16 :goto_0

    .line 328
    :pswitch_c
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->getCurrentTime()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->clearDanmakusOnScreen(J)V

    goto/16 :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public hideDanmakus(Z)J
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 621
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 626
    :goto_0
    return-wide v0

    .line 623
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 624
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 625
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 626
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mReady:Z

    return v0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->quitFlag:Z

    return v0
.end method

.method public notifyDispSizeChanged(II)V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    if-nez v0, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 723
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;->setSize(II)V

    .line 724
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->syncTimerIfNeeded()V

    .line 609
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 610
    return-void
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 605
    return-void
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 182
    return-void
.end method

.method public removeAllDanmakus()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->removeAllDanmakus()V

    .line 732
    :cond_0
    return-void
.end method

.method public removeAllLiveDanmakus()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->drawTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;->removeAllLiveDanmakus()V

    .line 738
    :cond_0
    return-void
.end method

.method public resetTimer()V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->timer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 352
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 601
    return-void
.end method

.method public seekTo(Ljava/lang/Long;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mInSeekingAction:Z

    .line 585
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 586
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 587
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 588
    invoke-virtual {p0, v1, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 589
    return-void
.end method

.method public setCallback(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mCallback:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;

    .line 178
    return-void
.end method

.method public setParser(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mParser:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

    .line 174
    return-void
.end method

.method public showDanmakus(Ljava/lang/Long;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 613
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-eqz v0, :cond_0

    .line 618
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 616
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 617
    invoke-virtual {p0, v1, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
