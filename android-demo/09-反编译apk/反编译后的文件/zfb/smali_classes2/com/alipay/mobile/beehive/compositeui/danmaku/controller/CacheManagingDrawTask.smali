.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;
.source "CacheManagingDrawTask.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_CACHE_SCREEN_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

.field private mCacheTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

.field private final mDrawingNotify:Ljava/lang/Object;

.field private mMaxCacheSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->$assertionsDisabled:Z

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Danmaku_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->TAG:Ljava/lang/String;

    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Landroid/content/Context;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;",
            "Landroid/content/Context;",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer",
            "<*>;",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Landroid/content/Context;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;)V

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mMaxCacheSize:I

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mDrawingNotify:Ljava/lang/Object;

    .line 59
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->loadLibs()V

    .line 60
    iput p5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mMaxCacheSize:I

    .line 61
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->isInNativeAlloc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    mul-int/lit8 v0, p5, 0x2

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mMaxCacheSize:I

    .line 64
    :cond_0
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p5, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;II)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mDrawingNotify:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    return-object v0
.end method


# virtual methods
.method public addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    goto :goto_0
.end method

.method public draw(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer",
            "<*>;)",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    monitor-enter v1

    .line 86
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->draw(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v0

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mDrawingNotify:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mDrawingNotify:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 88
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-eqz v1, :cond_0

    .line 93
    iget v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->incrementCount:I

    const/16 v2, -0x14

    if-ge v1, v2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestClearTimeout()V

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    sget-wide v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestBuild(J)V

    .line 98
    :cond_0
    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 88
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected initTimer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;)V
    .locals 3

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    .line 70
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    .line 72
    return-void
.end method

.method public varargs onDanmakuConfigChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 888
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->handleOnDanmakuConfigChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->scaleTextSize:F

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;->resetSlopPixel(F)V

    .line 892
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->requestClear()V

    .line 917
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTaskListener:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    new-instance v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$1;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->post(Ljava/lang/Runnable;)V

    .line 926
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 893
    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->isVisibilityRelatedTag()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 894
    if-eqz p3, :cond_4

    array-length v0, p3

    if-lez v0, :cond_4

    .line 895
    aget-object v0, p3, v1

    if-eqz v0, :cond_4

    aget-object v0, p3, v1

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 896
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-eqz v0, :cond_4

    .line 897
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestBuild(J)V

    .line 901
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->requestClear()V

    goto :goto_0

    .line 902
    :cond_5
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->TRANSPARENCY:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SCALE_TEXTSIZE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->DANMAKU_STYLE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 903
    :cond_6
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SCALE_TEXTSIZE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 904
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->scaleTextSize:F

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;->resetSlopPixel(F)V

    .line 906
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestClearAll()V

    .line 908
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    sget-wide v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestBuild(J)V

    goto :goto_0

    .line 911
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestClearUnused()V

    .line 913
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestBuild(J)V

    goto/16 :goto_0
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "prepare()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mParser:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mParser:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->loadDanmakus(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;)V

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->begin()V

    .line 143
    return-void
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->quit()V

    .line 129
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->reset()V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->end()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 134
    :cond_0
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->releaseLibs()V

    .line 135
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mRenderer:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mRenderer:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer;->clear()V

    .line 106
    :cond_0
    return-void
.end method

.method public seek(J)V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->seek(J)V

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->seek(J)V

    .line 112
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->start()V

    .line 117
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->loadLibs()V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mMaxCacheSize:I

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;II)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->begin()V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->resume()V

    goto :goto_0
.end method
