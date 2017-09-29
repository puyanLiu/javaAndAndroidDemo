.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;
.super Ljava/lang/Object;
.source "DrawTask.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask;
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$ConfigChangedCallback;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected clearRetainerFlag:Z

.field protected danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

.field private danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

.field mContext:Landroid/content/Context;

.field protected mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer",
            "<*>;"
        }
    .end annotation
.end field

.field private mIsHidden:Z

.field private mLastBeginMills:J

.field private mLastEndMills:J

.field protected mParser:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

.field protected mReadyState:Z

.field mRenderer:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer;

.field private mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

.field private mStartRenderTime:J

.field mTaskListener:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;

.field mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->$assertionsDisabled:Z

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Danmaku_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->TAG:Ljava/lang/String;

    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Landroid/content/Context;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;",
            "Landroid/content/Context;",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer",
            "<*>;",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mStartRenderTime:J

    .line 64
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    .line 76
    iput-object p4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mTaskListener:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;

    .line 77
    iput-object p2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mRenderer:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer;

    .line 79
    iput-object p3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    .line 80
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->initTimer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;)V

    .line 81
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->isDuplicateMergingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    const-string/jumbo v1, "1017_Filter"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->registerFilter(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    const-string/jumbo v1, "1017_Filter"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V
    .locals 7

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-boolean v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v0, :cond_2

    .line 103
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->removeUnusedLiveDanmakusIn(I)V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->size()I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->index:I

    .line 106
    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastBeginMills:J

    iget-wide v4, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_6

    iget-wide v2, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    iget-wide v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastEndMills:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_6

    .line 108
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->addItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    move-result v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "add to danmakus, item="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 112
    const-string/jumbo v5, ", curr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v5, v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", lastBeg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 113
    iget-wide v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastBeginMills:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", lastEnd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastEndMills:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :cond_4
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->addItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    move-result v0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "add to danmakuList, item="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 123
    const-string/jumbo v5, ", curr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v5, v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", lastBeg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 124
    iget-wide v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastBeginMills:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", lastEnd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastEndMills:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mTaskListener:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mTaskListener:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;->onDanmakuAdd(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    goto/16 :goto_0

    .line 108
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 116
    :cond_6
    :try_start_4
    iget-boolean v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v0, :cond_4

    .line 117
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastEndMills:J

    iput-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastBeginMills:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method public clearDanmakusOnScreen(J)V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->reset()V

    .line 202
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 203
    iput-wide p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mStartRenderTime:J

    .line 204
    return-void
.end method

.method public draw(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer",
            "<*>;)",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->drawDanmakus(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected drawDanmakus(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer",
            "<*>;",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;",
            ")",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;"
        }
    .end annotation

    .prologue
    const-wide/16 v9, -0x1

    .line 241
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->clearRetainerFlag:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->clear()V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->clearRetainerFlag:Z

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    if-eqz v0, :cond_8

    .line 246
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;->getExtraData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    .line 247
    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 248
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mIsHidden:Z

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    .line 288
    :goto_0
    return-object v0

    .line 254
    :cond_1
    iget-wide v0, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    sget-wide v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    sub-long v2, v0, v2

    .line 255
    iget-wide v0, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    sget-wide v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    add-long/2addr v0, v4

    .line 256
    iget-wide v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastBeginMills:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_2

    iget-wide v4, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-wide v6, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastEndMills:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 257
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->sub(JJ)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    move-result-object v4

    .line 258
    if-eqz v4, :cond_5

    .line 259
    iput-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    .line 263
    :goto_1
    iput-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastBeginMills:J

    .line 264
    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastEndMills:J

    .line 269
    :goto_2
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 270
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mRenderer:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer;

    iget-object v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    iget-object v6, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    iget-wide v7, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mStartRenderTime:J

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer;->draw(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;J)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    .line 271
    iget-boolean v5, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-eqz v5, :cond_4

    .line 272
    iget-wide v5, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_3

    .line 273
    iput-wide v2, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    .line 275
    :cond_3
    iget-wide v2, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    cmp-long v2, v2, v9

    if-nez v2, :cond_4

    .line 276
    iput-wide v0, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    :cond_4
    move-object v0, v4

    .line 279
    goto :goto_0

    .line 261
    :cond_5
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->clear()V

    goto :goto_1

    .line 266
    :cond_6
    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastBeginMills:J

    .line 267
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastEndMills:J

    goto :goto_2

    .line 282
    :cond_7
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    .line 283
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iput-wide v2, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    .line 284
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iput-wide v0, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    goto :goto_0

    .line 288
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleOnDanmakuConfigChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 311
    .line 312
    if-eqz p2, :cond_0

    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 328
    :goto_0
    return v0

    .line 314
    :cond_1
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->DUPLICATE_MERGING_ENABLED:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Boolean;

    .line 316
    if-eqz v0, :cond_5

    .line 317
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    const-string/jumbo v2, "1017_Filter"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->registerFilter(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    :goto_1
    move v0, v1

    .line 322
    goto :goto_0

    .line 320
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    const-string/jumbo v2, "1017_Filter"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_3
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SCALE_TEXTSIZE:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->requestClearRetainer()V

    move v0, v2

    .line 326
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method protected initTimer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    .line 93
    return-void
.end method

.method protected loadDanmakus(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->setDisplayer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->setTimer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->getDanmakus()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    .line 232
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->resetAll()V

    .line 233
    return-void
.end method

.method public varargs onDanmakuConfigChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->handleOnDanmakuConfigChanged(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$DanmakuConfigTag;[Ljava/lang/Object;)Z

    move-result v0

    .line 304
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mTaskListener:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mTaskListener:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;->onDanmakuConfigChanged()V

    .line 307
    :cond_0
    return v0
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 221
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "prepare()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mParser:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mParser:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->loadDanmakus(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;)V

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mTaskListener:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mTaskListener:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDrawTask$TaskListener;->ready()V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mReadyState:Z

    .line 228
    :cond_1
    return-void
.end method

.method public quit()V
    .locals 3

    .prologue
    .line 214
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "quit()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mRenderer:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mRenderer:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer;->release()V

    .line 217
    :cond_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->unregisterConfigChangedCallback(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$ConfigChangedCallback;)V

    .line 218
    return-void
.end method

.method public removeAllDanmakus()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->clear()V

    .line 138
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeAllLiveDanmakus()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->iterator()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;

    move-result-object v0

    .line 149
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 147
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 150
    :cond_3
    :try_start_1
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->next()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v2

    iget-boolean v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v2, :cond_2

    .line 151
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected removeUnusedLiveDanmakusIn(I)V
    .locals 8

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    monitor-enter v1

    .line 161
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakuList:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->iterator()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;

    move-result-object v0

    .line 170
    :goto_1
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 160
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 164
    :cond_3
    :try_start_1
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->next()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v4

    .line 165
    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v5

    .line 166
    if-eqz v5, :cond_4

    iget-boolean v4, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v4, :cond_4

    .line 167
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->remove()V

    .line 169
    :cond_4
    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    sub-long/2addr v4, v2

    int-to-long v6, p1

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    goto :goto_1
.end method

.method public requestClear()V
    .locals 2

    .prologue
    .line 292
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastEndMills:J

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mLastBeginMills:J

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mIsHidden:Z

    .line 294
    return-void
.end method

.method public requestClearRetainer()V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->clearRetainerFlag:Z

    .line 298
    return-void
.end method

.method public requestHide()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mIsHidden:Z

    .line 334
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->clear()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mRenderer:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mRenderer:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer;->clear()V

    .line 189
    :cond_1
    return-void
.end method

.method public seek(J)V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->reset()V

    .line 195
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 196
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    iput-wide p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mStartRenderTime:J

    .line 197
    return-void
.end method

.method public setParser(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;)V
    .locals 1

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mParser:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->mReadyState:Z

    .line 238
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 208
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "start()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->registerConfigChangedCallback(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig$ConfigChangedCallback;)V

    .line 210
    return-void
.end method
