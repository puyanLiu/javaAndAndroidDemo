.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;
.super Ljava/lang/Object;
.source "BufferTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static FEEDING_INTERVAL:I

.field private static MAX_BUFFER_CAPACITY:I

.field private static MAX_OFFSET:I

.field private static MIN_OFFSET:I

.field private static MY_START_TIME_DELAY:I

.field private static NUM_DISPLAY_DANMAKUS_EACH_RUN:I

.field private static START_TIME_DELAY:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation
.end field

.field private danmakuViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;",
            ">;"
        }
    .end annotation
.end field

.field private isFirstRun:Z

.field private lastTime:J

.field volatile mIsQuited:Z

.field private myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Danmaku_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->isFirstRun:Z

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->lastTime:J

    .line 51
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->maxBufferCapacity:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MAX_BUFFER_CAPACITY:I

    .line 52
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->feedingInterval:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->FEEDING_INTERVAL:I

    .line 53
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->maxOffset:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MAX_OFFSET:I

    .line 54
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->minOffset:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MIN_OFFSET:I

    .line 55
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->numDisplayItemsEachRun:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->NUM_DISPLAY_DANMAKUS_EACH_RUN:I

    .line 56
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->startTimeDelay:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->START_TIME_DELAY:I

    .line 57
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->myStartTimeDelay:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MY_START_TIME_DELAY:I

    .line 58
    return-void
.end method


# virtual methods
.method public addDanmakuToBuffer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z
    .locals 6

    .prologue
    const/16 v4, 0x63

    .line 61
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addDanmakuToBuffer: item="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    const-string/jumbo v3, ", sendByMe="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->priority:B

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", bufferSize="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    const-string/jumbo v3, ", myBufferSize="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-byte v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->priority:B

    if-ne v0, v4, :cond_3

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MAX_BUFFER_CAPACITY:I

    if-lt v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    .line 69
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "addDanmakuToBuffer: myBuffer is full, dropped the oldest one."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v2

    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MY_START_TIME_DELAY:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    move v0, v1

    .line 89
    :goto_1
    return v0

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_2
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MY_START_TIME_DELAY:I

    int-to-long v2, v0

    iput-wide v2, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    move v0, v1

    goto :goto_1

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MAX_BUFFER_CAPACITY:I

    if-lt v0, v1, :cond_4

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "addDanmakuToBuffer: buffer is full, dropped the oldest one."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v2

    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->START_TIME_DELAY:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    move v0, v1

    goto :goto_1

    .line 86
    :cond_5
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->START_TIME_DELAY:I

    int-to-long v2, v0

    iput-wide v2, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    move v0, v1

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 94
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public getMyBufferSize()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public isQuited()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->mIsQuited:Z

    return v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->mIsQuited:Z

    .line 98
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->isQuited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    return-void

    .line 116
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->lastTime:J

    sub-long/2addr v0, v2

    .line 119
    sget v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->FEEDING_INTERVAL:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_9

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tick="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->lastTime:J

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->TAG:Ljava/lang/String;

    .line 127
    const-string/jumbo v2, "rendering was paused or not yet started, data would be stored in buffer until rendering resumes."

    .line 126
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 135
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->NUM_DISPLAY_DANMAKUS_EACH_RUN:I

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v6, v5

    .line 136
    :goto_1
    if-lt v6, v4, :cond_3

    move v0, v4

    .line 158
    :goto_2
    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->NUM_DISPLAY_DANMAKUS_EACH_RUN:I

    sub-int v7, v1, v0

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez v7, :cond_0

    move v6, v5

    .line 160
    :goto_3
    if-lt v6, v7, :cond_6

    .line 189
    iput-boolean v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->isFirstRun:Z

    goto/16 :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 138
    iget-wide v2, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v2

    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MY_START_TIME_DELAY:I

    int-to-long v7, v0

    add-long/2addr v2, v7

    .line 145
    :goto_4
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sget v7, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MAX_OFFSET:I

    sget v8, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MIN_OFFSET:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v7, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MIN_OFFSET:I

    add-int/2addr v0, v7

    .line 146
    int-to-long v7, v0

    add-long/2addr v2, v7

    iput-wide v2, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    .line 136
    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 143
    :cond_5
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MY_START_TIME_DELAY:I

    int-to-long v2, v0

    goto :goto_4

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 163
    iget-wide v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 165
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 166
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v1

    sget v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->START_TIME_DELAY:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 170
    :goto_5
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    sget v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MAX_OFFSET:I

    sget v8, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MIN_OFFSET:I

    sub-int/2addr v4, v8

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sget v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MIN_OFFSET:I

    add-int/2addr v4, v3

    .line 172
    iget-boolean v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->isFirstRun:Z

    if-eqz v3, :cond_a

    .line 173
    int-to-float v3, v4

    sget v8, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MIN_OFFSET:I

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    cmpg-float v3, v3, v8

    if-gez v3, :cond_a

    .line 175
    int-to-float v3, v4

    sget v8, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->MAX_OFFSET:I

    int-to-float v8, v8

    const v9, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v9

    add-float/2addr v3, v8

    float-to-int v3, v3

    .line 176
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    sget-object v9, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "adjust first-run offset for item"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": old="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, ", new="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-interface {v8, v9, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_6
    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 181
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->danmakuViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    .line 160
    :cond_7
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_3

    .line 168
    :cond_8
    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->START_TIME_DELAY:I

    int-to-long v1, v1

    goto :goto_5

    .line 193
    :cond_9
    sget v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferTask;->FEEDING_INTERVAL:I

    int-to-long v2, v2

    sub-long v0, v2, v0

    .line 194
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 196
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_a
    move v3, v4

    goto :goto_6

    :cond_b
    move v0, v5

    goto/16 :goto_2
.end method
