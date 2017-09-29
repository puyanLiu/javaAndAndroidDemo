.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;
.super Landroid/view/View;
.source "DanmakuView.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuView;
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;


# static fields
.field private static final MAX_RECORD_SIZE:I = 0x32

.field private static final ONE_SECOND:I = 0x3e8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

.field private isSurfaceCreated:Z

.field private mBufferTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;

.field private mCallback:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;

.field private mClearFlag:Z

.field private mDanmakuVisible:Z

.field private mDrawFinished:Z

.field private mDrawMonitor:Ljava/lang/Object;

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

.field protected mDrawingThreadType:I

.field private mEnableDanmakuDrawingCache:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRequestRender:Z

.field private mShowFps:Z

.field private mTaskScheduler:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

.field private mUiThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Danmaku_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mEnableDanmakuDrawingCache:Z

    .line 65
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDanmakuVisible:Z

    .line 67
    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawingThreadType:I

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    .line 71
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawFinished:Z

    .line 73
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mRequestRender:Z

    .line 83
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->init()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mEnableDanmakuDrawingCache:Z

    .line 65
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDanmakuVisible:Z

    .line 67
    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawingThreadType:I

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    .line 71
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawFinished:Z

    .line 73
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mRequestRender:Z

    .line 88
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->init()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mEnableDanmakuDrawingCache:Z

    .line 65
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDanmakuVisible:Z

    .line 67
    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawingThreadType:I

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    .line 71
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawFinished:Z

    .line 73
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mRequestRender:Z

    .line 93
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->init()V

    .line 94
    return-void
.end method

.method private createEmptyParser()Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView$3;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;)V

    return-object v0
.end method

.method private fps()F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v0, v2

    .line 318
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 319
    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    .line 320
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 322
    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    div-float v0, v1, v0

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mUiThreadId:J

    .line 99
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->setBackgroundColor(I)V

    .line 100
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->setDrawingCacheBackgroundColor(I)V

    .line 101
    const/4 v0, 0x1

    invoke-static {v0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->useDrawColorToClearCanvas(ZZ)V

    .line 102
    return-void
.end method

.method private lockCanvas()V
    .locals 4

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDanmakuVisible:Z

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->postInvalidateCompat()V

    .line 357
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-nez v0, :cond_2

    .line 370
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawFinished:Z

    .line 357
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 361
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 363
    :catch_0
    move-exception v0

    :try_start_2
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDanmakuVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->isStop()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private lockCanvasAndClear()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mClearFlag:Z

    .line 376
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->lockCanvas()V

    .line 377
    return-void
.end method

.method private postInvalidateCompat()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mRequestRender:Z

    .line 337
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->postInvalidateOnAnimation()V

    .line 349
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->postInvalidate()V

    goto :goto_0
.end method

.method private prepareHandler()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "prepareHandler()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawingThreadType:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->getLooper(I)Landroid/os/Looper;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDanmakuVisible:Z

    invoke-direct {v0, v1, p0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;-><init>(Landroid/os/Looper;Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    .line 227
    :cond_0
    return-void
.end method

.method private stopDraw()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->quit()V

    .line 178
    iput-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 187
    iput-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mBufferTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mBufferTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->isQuited()Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mBufferTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->quit()V

    .line 193
    :cond_2
    return-void

    .line 184
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to join HandlerThread"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unlockCanvasAndPost()V
    .locals 2

    .prologue
    .line 380
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawFinished:Z

    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 380
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textSize:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textSize:F

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    .line 112
    :cond_0
    return-void
.end method

.method public addDanmaku(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    return-void

    .line 117
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 118
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    goto :goto_0
.end method

.method public addDanmakuBuffered(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V
    .locals 1

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mBufferTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->addDanmakuToBuffer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    .line 128
    :cond_0
    return-void
.end method

.method public addDanmakuListBuffered(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    return-void

    .line 133
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 134
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->addDanmakuBuffered(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 556
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "clear()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->isViewReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDanmakuVisible:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mUiThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 561
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mClearFlag:Z

    .line 562
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->postInvalidateCompat()V

    goto :goto_0

    .line 564
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->lockCanvasAndClear()V

    goto :goto_0
.end method

.method public clearDanmakusOnScreen()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->clearDanmakusOnScreen()V

    .line 602
    :cond_0
    return-void
.end method

.method public drawDanmakus()J
    .locals 4

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->isSurfaceCreated:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 331
    :goto_0
    return-wide v0

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 329
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 330
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->lockCanvas()V

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method public enableDanmakuDrawingCache(Z)V
    .locals 4

    .prologue
    .line 500
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "enableDanmakuDrawingCache(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mEnableDanmakuDrawingCache:Z

    .line 502
    return-void
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->getCurrentTime()J

    move-result-wide v0

    .line 583
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getLooper(I)Landroid/os/Looper;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 202
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 213
    const/4 v0, 0x0

    .line 216
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DFM Handler Thread #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_1
    return-object v0

    .line 204
    :pswitch_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_1

    .line 206
    :pswitch_1
    const/4 v0, -0x8

    .line 207
    goto :goto_0

    .line 209
    :pswitch_2
    const/16 v0, 0x13

    .line 210
    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 516
    return-object p0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 537
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hide()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDanmakuVisible:Z

    .line 539
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->hideDanmakus(Z)J

    goto :goto_0
.end method

.method public hideAndPauseDrawTask()J
    .locals 2

    .prologue
    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDanmakuVisible:Z

    .line 548
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 549
    const-wide/16 v0, 0x0

    .line 551
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->hideDanmakus(Z)J

    move-result-wide v0

    goto :goto_0
.end method

.method public isDanmakuDrawingCacheEnabled()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mEnableDanmakuDrawingCache:Z

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 590
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 591
    invoke-super {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    .line 593
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->isStop()Z

    move-result v0

    .line 467
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDanmakuVisible:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->isStop()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewReady()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->isSurfaceCreated:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 390
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDanmakuVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mRequestRender:Z

    if-nez v0, :cond_0

    .line 391
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 419
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mClearFlag:Z

    if-eqz v0, :cond_2

    .line 395
    invoke-static {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 396
    iput-boolean v9, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mClearFlag:Z

    .line 410
    :cond_1
    :goto_1
    iput-boolean v9, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mRequestRender:Z

    .line 412
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->unlockCanvasAndPost()V

    goto :goto_0

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->draw(Landroid/graphics/Canvas;)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v0

    .line 400
    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mShowFps:Z

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    .line 402
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 403
    const-string/jumbo v2, "fps %.2f, time:%d s, cache:%d, miss:%d, buffered: %d, mybuffered: %d"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 404
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->fps()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v5, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v5, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x4

    .line 405
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mBufferTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;

    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->getBufferSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mBufferTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;

    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->getMyBufferSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 402
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->drawFPS(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 423
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->notifyDispSizeChanged(II)V

    .line 427
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->isSurfaceCreated:Z

    .line 428
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 445
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pause()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->pause()V

    .line 449
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 8

    .prologue
    .line 231
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "prepare()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView$1;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->setCallback(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;)V

    .line 244
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->prepareHandler()V

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->createEmptyParser()Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->setParser(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;)V

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mCallback:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->setCallback(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;)V

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->prepare()V

    .line 249
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "buffer task scheduled."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 251
    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    invoke-virtual {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mBufferTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;

    .line 254
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 256
    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 254
    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mTaskScheduler:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mTaskScheduler:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mBufferTask:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;

    const-string/jumbo v2, "Danmaku - BufferThread"

    const-wide/16 v3, 0x3e8

    .line 258
    sget-object v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v5, v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->feedingInterval:I

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 257
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->scheduleAtFixedRate(Ljava/lang/Runnable;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 259
    return-void
.end method

.method public prepare(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;)V
    .locals 3

    .prologue
    .line 265
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "prepare()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parser can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView$2;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->setCallback(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;)V

    .line 282
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->prepareHandler()V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->setParser(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;)V

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mCallback:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->setCallback(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;)V

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->prepare()V

    .line 286
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 164
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "release()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->stop()V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 167
    :cond_0
    return-void
.end method

.method public removeAllDanmakus()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeAllDanmakus()V

    .line 144
    :cond_0
    return-void
.end method

.method public removeAllLiveDanmakus()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeAllLiveDanmakus()V

    .line 151
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 3

    .prologue
    .line 471
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "restart()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->stop()V

    .line 473
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->start()V

    .line 474
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 453
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resume()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->resume()V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->restart()V

    goto :goto_0
.end method

.method public seekTo(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 493
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "seekTo(): position="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->seekTo(Ljava/lang/Long;)V

    .line 497
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;)V
    .locals 1

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mCallback:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->setCallback(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$Callback;)V

    .line 160
    :cond_0
    return-void
.end method

.method public setDrawingThreadType(I)V
    .locals 0

    .prologue
    .line 575
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDrawingThreadType:I

    .line 576
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 521
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "show()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->showAndResumeDrawTask(Ljava/lang/Long;)V

    .line 523
    return-void
.end method

.method public showAndResumeDrawTask(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mDanmakuVisible:Z

    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mClearFlag:Z

    .line 529
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 533
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->showDanmakus(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public showFPS(Z)V
    .locals 0

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->mShowFps:Z

    .line 306
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 478
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->start(J)V

    .line 479
    return-void
.end method

.method public start(J)V
    .locals 4

    .prologue
    .line 483
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start(): position="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->prepareHandler()V

    .line 489
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 490
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 171
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stop()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->stopDraw()V

    .line 173
    return-void
.end method

.method public toggle()V
    .locals 3

    .prologue
    .line 431
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "toggle()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->isSurfaceCreated:Z

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    if-nez v0, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->start()V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->handler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->isStop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->resume()V

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->pause()V

    goto :goto_0
.end method
