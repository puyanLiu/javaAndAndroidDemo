.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;
.super Ljava/lang/Object;
.source "CacheManagingDrawTask.java"


# static fields
.field public static final RESULT_FAILED:B = 0x1t

.field public static final RESULT_FAILED_OVERSIZE:B = 0x2t

.field public static final RESULT_SUCCESS:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "Danmaku_CacheManager"


# instance fields
.field mCachePool:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;",
            ">;"
        }
    .end annotation
.end field

.field mCachePoolManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCachePoolManager;

.field mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

.field private mEndFlag:Z

.field private mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

.field private mMaxSize:I

.field private mRealSize:I

.field private mScreenSize:I

.field public mThread:Landroid/os/HandlerThread;

.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 171
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    .line 157
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCachePoolManager;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCachePoolManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePoolManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCachePoolManager;

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePoolManager:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCachePoolManager;

    const/16 v1, 0x320

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pools;->finitePool(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/PoolableManager;I)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;

    .line 165
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mScreenSize:I

    .line 172
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CacheManager: maxCacheSize="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    const-string/jumbo v3, ", screenSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput-boolean v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mEndFlag:Z

    .line 175
    iput v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 176
    iput p2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    .line 177
    iput p3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mScreenSize:I

    .line 178
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->evictAllNotInScreen()V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mScreenSize:I

    return v0
.end method

.method static synthetic access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearTimeOutCaches()V

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->evictAll()V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearCachePool()V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;Z)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->evictAllNotInScreen(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Z)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
    .locals 1

    .prologue
    .line 373
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->findReuseableCache(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Z)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;I)Z
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->push(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    return v0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    return v0
.end method

.method private clearCachePool()V
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v2, "clearCachePool()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;->acquire()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

    if-nez v0, :cond_0

    .line 320
    return-void

    .line 318
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->destroy()V

    goto :goto_0
.end method

.method private clearTimeOutCaches()V
    .locals 3

    .prologue
    .line 341
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v2, "clearTimeOutCaches()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearTimeOutCaches(J)V

    .line 343
    return-void
.end method

.method private clearTimeOutCaches(J)V
    .locals 6

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->iterator()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;

    move-result-object v0

    .line 347
    :goto_0
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mEndFlag:Z

    if-eqz v1, :cond_1

    .line 364
    :cond_0
    :goto_1
    return-void

    .line 348
    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->next()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 349
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 352
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0x1e

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit v2

    .line 358
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->entryRemoved(ZLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    .line 359
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->remove()V

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "Danmaku_CacheManager"

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private evictAll()V
    .locals 4

    .prologue
    .line 250
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v2, "evictAll()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->iterator()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;

    move-result-object v0

    .line 253
    :goto_0
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->clear()V

    .line 259
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 260
    return-void

    .line 254
    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->next()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 255
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->entryRemoved(ZLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    goto :goto_0
.end method

.method private evictAllNotInScreen()V
    .locals 3

    .prologue
    .line 263
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v2, "evictAllNotInScreen()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->evictAllNotInScreen(Z)V

    .line 265
    return-void
.end method

.method private evictAllNotInScreen(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->iterator()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;

    move-result-object v3

    .line 270
    :cond_0
    :goto_0
    invoke-interface {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    :cond_1
    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 291
    return-void

    .line 271
    :cond_2
    invoke-interface {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->next()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v4

    .line 272
    iget-object v5, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    .line 273
    if-eqz v5, :cond_4

    invoke-interface {v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;->hasReferences()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 274
    :goto_1
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 275
    invoke-interface {v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 276
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    invoke-interface {v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;->size()I

    move-result v6

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 277
    invoke-interface {v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;->destroy()V

    .line 279
    :cond_3
    invoke-virtual {p0, v1, v4, v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->entryRemoved(ZLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    .line 280
    invoke-interface {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->remove()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 273
    goto :goto_1

    .line 283
    :cond_5
    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->hasDrawingCache()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    :cond_6
    invoke-virtual {p0, v1, v4, v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->entryRemoved(ZLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    .line 285
    invoke-interface {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->remove()V

    goto :goto_0
.end method

.method private findReuseableCache(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Z)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->iterator()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;

    move-result-object v2

    .line 376
    const/4 v0, 0x0

    .line 377
    if-nez p2, :cond_0

    .line 378
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;->getSlopPixel()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 380
    :cond_0
    invoke-interface {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 409
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 381
    :cond_2
    invoke-interface {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->next()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->hasDrawingCache()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    iget v3, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintWidth:F

    iget v4, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintWidth:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 386
    iget v3, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    iget v4, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 387
    iget v3, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->underlineColor:I

    iget v4, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->underlineColor:I

    if-ne v3, v4, :cond_3

    .line 388
    iget v3, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->borderColor:I

    iget v4, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->borderColor:I

    if-ne v3, v4, :cond_3

    .line 389
    iget v3, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textColor:I

    iget v4, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textColor:I

    if-ne v3, v4, :cond_3

    .line 390
    iget-object v3, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 391
    goto :goto_0

    .line 393
    :cond_3
    if-nez p2, :cond_0

    .line 394
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    iget-object v3, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    invoke-interface {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;->hasReferences()Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    iget-object v3, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    invoke-interface {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintWidth:F

    sub-float/2addr v3, v4

    .line 403
    iget-object v4, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    invoke-interface {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    sub-float/2addr v4, v5

    .line 404
    cmpl-float v5, v3, v6

    if-ltz v5, :cond_0

    int-to-float v5, v0

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    .line 405
    cmpl-float v3, v4, v6

    if-ltz v3, :cond_0

    int-to-float v3, v0

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_0

    move-object v0, v1

    .line 406
    goto :goto_0
.end method

.method private push(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 323
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Danmaku_CacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "push danmaku="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 324
    const-string/jumbo v4, " to cache, mRealSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", itemSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->addItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    .line 336
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 337
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->first()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    invoke-virtual {p0, v0, v1, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->entryRemoved(ZLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    .line 330
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->removeItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    goto :goto_0
.end method


# virtual methods
.method public addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    :cond_0
    return-void
.end method

.method public begin()V
    .locals 3

    .prologue
    .line 195
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v2, "begin()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DFM Cache-Building Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    .line 198
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v2, "cache building thread started."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->begin()V

    .line 204
    return-void
.end method

.method public end()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v2, "end()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mEndFlag:Z

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->pause()V

    .line 214
    iput-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 218
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v2, "wait for cache building thread to quit."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v2, "quitting cache building thread."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 225
    iput-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    .line 227
    :cond_1
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Danmaku_CacheManager"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected entryRemoved(ZLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;->hasReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;->decreaseReference()V

    .line 297
    iput-object v2, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->sizeOf(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 301
    iget-object v0, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;->destroy()V

    .line 302
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;

    iget-object v0, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;->release(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;)V

    .line 303
    iput-object v2, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    goto :goto_0
.end method

.method public getFirstCacheTime()J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 835
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 836
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->first()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v2

    .line 837
    if-nez v2, :cond_1

    .line 841
    :cond_0
    :goto_0
    return-wide v0

    .line 839
    :cond_1
    iget-wide v0, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    goto :goto_0
.end method

.method public getPoolPercent()F
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public isPoolFull()Z
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    add-int/lit16 v0, v0, 0x1400

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 881
    :goto_0
    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestBuild(J)V
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->requestBuildCacheAndDraw(J)V

    .line 848
    :cond_0
    return-void
.end method

.method public requestClearAll()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 851
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 858
    :goto_0
    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 855
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->requestCancelCaching()V

    .line 856
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 857
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public requestClearTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 869
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 874
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 873
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public requestClearUnused()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 861
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 866
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 865
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v2, "resume()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->resume()V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->begin()V

    goto :goto_0
.end method

.method public seek(J)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->requestCancelCaching()V

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected sizeOf(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;->hasReferences()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;->size()I

    move-result v0

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
