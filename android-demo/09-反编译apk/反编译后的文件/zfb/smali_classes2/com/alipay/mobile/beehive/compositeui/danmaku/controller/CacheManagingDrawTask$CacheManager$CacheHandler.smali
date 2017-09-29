.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;
.super Landroid/os/Handler;
.source "CacheManagingDrawTask.java"


# static fields
.field public static final ADD_DANMAKKU:I = 0x2

.field public static final BUILD_CACHES:I = 0x3

.field public static final CLEAR_ALL_CACHES:I = 0x7

.field public static final CLEAR_OUTSIDE_CACHES:I = 0x8

.field public static final CLEAR_OUTSIDE_CACHES_AND_RESET:I = 0x9

.field public static final CLEAR_TIMEOUT_CACHES:I = 0x4

.field public static final DISPATCH_ACTIONS:I = 0x10

.field private static final PREPARE:I = 0x1

.field public static final QUIT:I = 0x6

.field public static final SEEK:I = 0x5


# instance fields
.field private mCancelFlag:Z

.field private mPause:Z

.field private mSeekedFlag:Z

.field final synthetic this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 442
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 443
    return-void
.end method

.method private buildCache(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)B
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 732
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "Danmaku_CacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "buildCache: item="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isMeasured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->measure(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V

    .line 743
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    const/4 v4, 0x1

    invoke-static {v0, p1, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$6(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Z)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v0

    .line 744
    if-eqz v0, :cond_1

    .line 745
    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    .line 747
    :cond_1
    if-eqz v3, :cond_2

    .line 748
    :try_start_1
    invoke-virtual {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->increaseReference()V

    .line 749
    iput-object v3, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    .line 750
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$2(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v4, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->sizeOf(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I

    move-result v4

    invoke-static {v0, p1, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$7(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;I)Z

    move v0, v1

    .line 798
    :goto_0
    return v0

    .line 756
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    const/4 v4, 0x0

    invoke-static {v0, p1, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$6(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Z)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v4

    .line 757
    if-eqz v4, :cond_3

    .line 758
    iget-object v0, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

    move-object v3, v0

    .line 760
    :cond_3
    if-eqz v3, :cond_4

    .line 761
    const/4 v0, 0x0

    iput-object v0, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    .line 763
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-static {p1, v0, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;->buildDanmakuDrawingCache(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 764
    :try_start_2
    iput-object v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    .line 765
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$2(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$7(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;I)Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    .line 766
    goto :goto_0

    .line 771
    :cond_4
    :try_start_3
    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintWidth:F

    float-to-int v0, v0

    .line 772
    iget v4, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    float-to-int v4, v4

    .line 771
    invoke-static {v0, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;->getCacheSize(II)I

    move-result v0

    .line 773
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$8(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$9(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v4

    if-le v0, v4, :cond_5

    move v0, v2

    .line 775
    goto :goto_0

    .line 779
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;->acquire()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 780
    :try_start_4
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v3

    iget-object v4, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 781
    :try_start_5
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-static {p1, v3, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;->buildDanmakuDrawingCache(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v3

    .line 782
    :try_start_6
    iput-object v3, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    .line 783
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$2(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    move-result-object v0

    iget-object v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v5, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->sizeOf(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I

    move-result v5

    invoke-static {v0, p1, v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$7(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;I)Z

    move-result v0

    .line 784
    if-nez v0, :cond_6

    .line 785
    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->releaseDanmakuCache(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;)V

    .line 788
    :cond_6
    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 780
    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_2
    :try_start_7
    monitor-exit v4

    throw v0
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 792
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "Danmaku_CacheManager"

    const-string/jumbo v4, "break at error: oom"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->releaseDanmakuCache(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;)V

    move v0, v2

    .line 794
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 788
    goto :goto_1

    .line 795
    :catch_1
    move-exception v0

    .line 796
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "Danmaku_CacheManager"

    const-string/jumbo v5, "break at error: "

    invoke-interface {v1, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 797
    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->releaseDanmakuCache(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;)V

    move v0, v2

    .line 798
    goto/16 :goto_0

    .line 795
    :catch_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v3, v1

    goto :goto_4

    .line 792
    :catch_4
    move-exception v0

    move-object v0, v3

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v0, v3

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_3

    .line 780
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method private dispatchAction()J
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const-wide/16 v2, 0x0

    .line 540
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->getPoolPercent()F

    move-result v4

    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->first()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    iget-object v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v5

    iget-object v5, v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v5, v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v0, v5

    .line 543
    :goto_0
    sget-wide v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    const-wide/16 v7, 0x2

    mul-long/2addr v5, v7

    .line 546
    const v7, 0x3f19999a    # 0.6f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    sget-wide v7, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    cmp-long v7, v0, v7

    if-lez v7, :cond_1

    .line 547
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v4, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    .line 548
    invoke-virtual {p0, v9}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 549
    invoke-virtual {p0, v9}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 550
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v4, "dispatchAction: msg=BUILD_CACHES"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :goto_1
    return-wide v2

    :cond_0
    move-wide v0, v2

    .line 542
    goto :goto_0

    .line 552
    :cond_1
    const v7, 0x3ecccccd    # 0.4f

    cmpl-float v7, v4, v7

    if-lez v7, :cond_2

    neg-long v7, v5

    cmp-long v0, v0, v7

    if-gez v0, :cond_2

    .line 554
    invoke-virtual {p0, v10}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 555
    invoke-virtual {p0, v10}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 556
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v4, "dispatchAction: msg=CLEAR_TIMEOUT_CACHES"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 560
    :cond_2
    const v0, 0x3f666666    # 0.9f

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_3

    .line 562
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v4, "dispatchAction: no-op"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 567
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v7, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v0, v7

    .line 568
    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    .line 569
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v4, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    .line 570
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v4, "dispatchAction: msg=CLEAR_TIMEOUT_CACHES, BUILD_CACHES"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 572
    invoke-virtual {p0, v9}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 574
    :cond_4
    cmp-long v0, v0, v5

    if-lez v0, :cond_5

    .line 575
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v4, "dispatchAction: no-op"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 580
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_CacheManager"

    const-string/jumbo v4, "dispatchAction: msg=BUILD_CACHES"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0, v9}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 582
    invoke-virtual {p0, v9}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method

.method private prepareCaches(Z)J
    .locals 26

    .prologue
    .line 605
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "Danmaku_CacheManager"

    const-string/jumbo v4, "prepareCaches()"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v2

    iget-wide v13, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 607
    sget-wide v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    add-long v15, v13, v2

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    cmp-long v2, v15, v2

    if-gez v2, :cond_0

    .line 609
    const-wide/16 v2, 0x0

    .line 722
    :goto_0
    return-wide v2

    .line 613
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    iget-object v3, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    monitor-enter v3

    .line 618
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    move-wide v0, v15

    invoke-interface {v2, v13, v14, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->subnew(JJ)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    move-result-object v19

    .line 617
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 622
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    .line 623
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 617
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 626
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "Danmaku_CacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->first()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v2

    .line 629
    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->last()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v20

    .line 630
    iget-wide v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v4, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v2, v4

    .line 631
    const-wide/16 v4, 0x1e

    const-wide/16 v6, 0xa

    mul-long/2addr v2, v6

    sget-wide v6, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    div-long/2addr v2, v6

    add-long/2addr v2, v4

    .line 632
    const-wide/16 v4, 0x64

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 633
    if-eqz p1, :cond_f

    .line 634
    const-wide/16 v2, 0x0

    move-wide v8, v2

    .line 637
    :goto_1
    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->iterator()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;

    move-result-object v21

    .line 638
    const/4 v6, 0x0

    .line 639
    const/4 v3, 0x0

    .line 641
    const/4 v4, 0x0

    .line 642
    const/4 v2, 0x0

    .line 643
    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->size()I

    move-result v5

    .line 644
    const-string/jumbo v12, ""

    move v10, v2

    move v11, v3

    move-object v3, v6

    .line 645
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mCancelFlag:Z

    if-eqz v2, :cond_5

    :cond_4
    move-object v2, v12

    .line 713
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v17

    .line 714
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "Danmaku_CacheManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ", "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 715
    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " caches built, cost="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, "ms"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-interface {v6, v7, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    if-eqz v3, :cond_c

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v2

    iget-wide v6, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    invoke-virtual {v2, v6, v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    :goto_4
    move-wide v2, v4

    .line 722
    goto/16 :goto_0

    .line 646
    :cond_5
    invoke-interface/range {v21 .. v21}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v2

    .line 647
    if-nez v2, :cond_6

    .line 648
    const-string/jumbo v2, "break at not hasNext"

    goto :goto_3

    .line 651
    :cond_6
    invoke-interface/range {v21 .. v21}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->next()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v3

    .line 653
    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v0, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    move-wide/from16 v22, v0

    cmp-long v2, v6, v22

    if-gez v2, :cond_7

    .line 654
    const-string/jumbo v2, "break at last.time < mTimer.currMillisecond"

    goto/16 :goto_3

    .line 658
    :cond_7
    invoke-virtual {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->hasDrawingCache()Z

    move-result v2

    if-nez v2, :cond_3

    .line 660
    if-nez p1, :cond_8

    invoke-virtual {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 664
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v2

    .line 668
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 667
    invoke-virtual/range {v2 .. v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->filter(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;IILcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Z)Z

    move-result v2

    .line 669
    if-nez v2, :cond_3

    .line 670
    invoke-virtual {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_e

    .line 675
    iget-wide v6, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    sub-long/2addr v6, v13

    sget-wide v22, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    div-long v6, v6, v22

    long-to-int v2, v6

    .line 676
    if-ne v10, v2, :cond_a

    .line 677
    add-int/lit8 v4, v4, 0x1

    move v2, v10

    .line 684
    :goto_5
    if-nez p1, :cond_9

    .line 686
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 687
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 686
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 696
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->buildCache(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)B

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 697
    const-string/jumbo v2, "break at build failed"

    goto/16 :goto_3

    .line 679
    :cond_a
    const/4 v4, 0x0

    .line 680
    goto :goto_5

    .line 686
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v6

    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 689
    :catch_0
    move-exception v2

    .line 690
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "Danmaku_CacheManager"

    invoke-interface {v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v12

    .line 691
    goto/16 :goto_3

    .line 701
    :cond_b
    add-int/lit8 v6, v11, 0x1

    .line 703
    if-nez p1, :cond_d

    .line 704
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v17

    .line 705
    const-wide/16 v22, 0xed8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    cmp-long v7, v10, v22

    if-ltz v7, :cond_d

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "break at consumingTime out:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v11, v6

    .line 707
    goto/16 :goto_3

    .line 720
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    goto/16 :goto_4

    :cond_d
    move v10, v2

    move v11, v6

    goto/16 :goto_2

    :cond_e
    move v2, v10

    goto/16 :goto_5

    :cond_f
    move-wide v8, v2

    goto/16 :goto_1
.end method

.method private releaseDanmakuCache(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;)V
    .locals 2

    .prologue
    .line 587
    if-nez p2, :cond_1

    .line 588
    iget-object v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

    .line 590
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    .line 591
    if-nez v0, :cond_0

    .line 596
    :goto_1
    return-void

    .line 594
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->destroy()V

    .line 595
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;->release(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;)V

    goto :goto_1

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 3

    .prologue
    .line 803
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 804
    const/4 v0, 0x4

    sget-wide v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 805
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 451
    iget v0, p1, Landroid/os/Message;->what:I

    .line 452
    packed-switch v0, :pswitch_data_0

    .line 531
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 454
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 455
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "Danmaku_CacheManager"

    .line 456
    const-string/jumbo v3, "pre-allocate 300 DrawingCache objects for better performance "

    .line 455
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :goto_1
    const/16 v0, 0x12c

    if-lt v1, v0, :cond_2

    .line 461
    :pswitch_2
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->dispatchAction()J

    move-result-wide v0

    .line 463
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 464
    sget-wide v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    .line 466
    :cond_1
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;

    new-instance v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

    invoke-direct {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;-><init>()V

    invoke-interface {v0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Pool;->release(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;)V

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 469
    :pswitch_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "Danmaku_CacheManager"

    const-string/jumbo v4, "build caches"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 471
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTaskListener:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mReadyState:Z

    if-eqz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    if-nez v0, :cond_5

    move v0, v1

    .line 472
    :goto_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->prepareCaches(Z)J

    .line 473
    if-eqz v0, :cond_4

    .line 474
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    .line 475
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTaskListener:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mReadyState:Z

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTaskListener:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;->ready()V

    .line 477
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    iput-boolean v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mReadyState:Z

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 471
    goto :goto_2

    .line 482
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    iget-object v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    monitor-enter v1

    .line 483
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 484
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "Danmaku_CacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "CacheManager: on danmaku added, item="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 486
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 488
    :cond_6
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->hasDrawingCache()Z

    move-result v2

    if-nez v2, :cond_7

    .line 489
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->buildCache(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)B

    .line 491
    :cond_7
    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v0, :cond_8

    .line 492
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 493
    sget-wide v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    iget-object v6, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 492
    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    .line 482
    :cond_8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 498
    :pswitch_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$2(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    goto/16 :goto_0

    .line 501
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 502
    if-eqz v0, :cond_0

    .line 503
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    .line 504
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    .line 505
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 506
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->resume()V

    goto/16 :goto_0

    .line 510
    :pswitch_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 511
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    .line 512
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$3(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 513
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$4(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 514
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 517
    :pswitch_8
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$3(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 518
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v3, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    sget-wide v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    .line 519
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    goto/16 :goto_0

    .line 522
    :pswitch_9
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$5(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;Z)V

    .line 523
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    goto/16 :goto_0

    .line 526
    :pswitch_a
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$5(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;Z)V

    .line 527
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    .line 528
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->requestClear()V

    goto/16 :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    .line 809
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 810
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 811
    return-void
.end method

.method public requestBuildCacheAndDraw(J)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 826
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mCancelFlag:Z

    .line 829
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->access$0(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    .line 830
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 831
    return-void
.end method

.method public requestCancelCaching()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mCancelFlag:Z

    .line 447
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/16 v1, 0x10

    const/4 v0, 0x0

    .line 814
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mCancelFlag:Z

    .line 815
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    .line 816
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 817
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 818
    const/4 v0, 0x4

    sget-wide v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 819
    return-void
.end method
