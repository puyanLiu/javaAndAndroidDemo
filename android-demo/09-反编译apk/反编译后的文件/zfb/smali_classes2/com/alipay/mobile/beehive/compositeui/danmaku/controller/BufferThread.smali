.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;
.super Ljava/lang/Thread;
.source "BufferThread.java"


# static fields
.field private static FEEDING_INTERVAL:I = 0x0

.field private static MAX_BUFFER_CAPACITY:I = 0x0

.field private static MAX_OFFSET:I = 0x0

.field private static MIN_OFFSET:I = 0x0

.field private static MY_START_TIME_DELAY:I = 0x0

.field private static NUM_DISPLAY_DANMAKUS_EACH_RUN:I = 0x0

.field private static START_TIME_DELAY:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Danmaku"


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

.field private danmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

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
.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 46
    const-string/jumbo v0, "Danmaku - BufferThread"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->setName(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->danmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->lastTime:J

    .line 51
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->maxBufferCapacity:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->MAX_BUFFER_CAPACITY:I

    .line 52
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->feedingInterval:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->FEEDING_INTERVAL:I

    .line 53
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->maxOffset:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->MAX_OFFSET:I

    .line 54
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->minOffset:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->MIN_OFFSET:I

    .line 55
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->numDisplayItemsEachRun:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->NUM_DISPLAY_DANMAKUS_EACH_RUN:I

    .line 56
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->startTimeDelay:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->START_TIME_DELAY:I

    .line 57
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->myStartTimeDelay:I

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->MY_START_TIME_DELAY:I

    .line 58
    return-void
.end method


# virtual methods
.method public addDanmakuToBuffer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z
    .locals 6

    .prologue
    .line 61
    iget-byte v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->priority:B

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->MAX_BUFFER_CAPACITY:I

    if-lt v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku"

    const-string/jumbo v2, "addDanmakuToBuffer: myBuffer is full, dropped the oldest one."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->danmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v1

    sget v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->MY_START_TIME_DELAY:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 78
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Danmaku"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addDanmakuToBuffer: current size= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return v0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->MAX_BUFFER_CAPACITY:I

    if-lt v0, v1, :cond_2

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku"

    const-string/jumbo v2, "addDanmakuToBuffer: buffer is full, dropped the oldest one."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->danmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v1

    sget v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->START_TIME_DELAY:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 84
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public getMyBufferSize()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public isQuited()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->mIsQuited:Z

    return v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->mIsQuited:Z

    .line 88
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->isQuited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    return-void

    .line 106
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->lastTime:J

    sub-long/2addr v0, v3

    .line 109
    sget v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->FEEDING_INTERVAL:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tick="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->lastTime:J

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->danmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku"

    .line 117
    const-string/jumbo v3, "rendering was paused or not yet started, data would be stored in buffer until rendering resumes."

    .line 116
    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 125
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->NUM_DISPLAY_DANMAKUS_EACH_RUN:I

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v3, v2

    .line 126
    :goto_1
    if-lt v3, v1, :cond_4

    move v0, v1

    .line 140
    :goto_2
    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->NUM_DISPLAY_DANMAKUS_EACH_RUN:I

    sub-int v3, v1, v0

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez v3, :cond_0

    move v1, v2

    .line 142
    :goto_3
    if-ge v1, v3, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 145
    iget-wide v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 146
    iget-object v6, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->danmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v6

    sget v8, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->START_TIME_DELAY:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 147
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    sget v9, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->MAX_OFFSET:I

    sget v10, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->MIN_OFFSET:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    sget v9, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->MIN_OFFSET:I

    add-int/2addr v8, v9

    .line 148
    int-to-long v9, v8

    add-long/2addr v9, v6

    iput-wide v9, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 149
    iget-object v9, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->danmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v9, "Danmaku"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "oldTime="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 151
    const-string/jumbo v11, ", newTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", delay="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v4, v6, v4

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 152
    const-string/jumbo v5, ", offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", sendByMe=falsebuffer size= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-interface {v0, v9, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->myBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 128
    iget-wide v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 129
    iget-object v6, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->danmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v6

    sget v8, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->MY_START_TIME_DELAY:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 130
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    sget v9, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->MAX_OFFSET:I

    sget v10, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->MIN_OFFSET:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    sget v9, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->MIN_OFFSET:I

    add-int/2addr v8, v9

    .line 131
    int-to-long v9, v8

    add-long/2addr v9, v6

    iput-wide v9, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 132
    iget-object v9, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->danmakuView:Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/widget/DanmakuView;->addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v9, "Danmaku"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "oldTime="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", newTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 134
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", delay="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v4, v6, v4

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 135
    const-string/jumbo v5, ", sendByMe=truemyBuffer size= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-interface {v0, v9, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 158
    :cond_5
    sget v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/BufferThread;->FEEDING_INTERVAL:I

    int-to-long v3, v3

    sub-long v0, v3, v0

    .line 159
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 161
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_2
.end method
