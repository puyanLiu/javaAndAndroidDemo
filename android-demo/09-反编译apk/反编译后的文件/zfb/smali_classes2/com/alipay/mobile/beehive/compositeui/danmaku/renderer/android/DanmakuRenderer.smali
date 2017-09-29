.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/Renderer;
.source "DanmakuRenderer.java"


# instance fields
.field private final mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

.field private final mStartTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/Renderer;-><init>()V

    .line 31
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mStartTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    .line 32
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    .line 29
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->clear()V

    .line 37
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->clear()V

    .line 38
    return-void
.end method

.method public draw(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;J)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;
    .locals 10

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iget v6, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->reset()V

    .line 50
    invoke-interface {p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->iterator()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;

    move-result-object v7

    .line 51
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mStartTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    .line 53
    invoke-interface {p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->size()I

    move-result v3

    .line 54
    const/4 v1, 0x0

    .line 55
    :cond_0
    :goto_0
    invoke-interface {v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    .line 101
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    if-eqz v1, :cond_b

    iget-wide v0, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    :goto_2
    iput-wide v0, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iget v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    sub-int/2addr v1, v6

    iput v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->incrementCount:I

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mStartTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->consumingTime:J

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    return-object v0

    .line 57
    :cond_3
    invoke-interface {v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->next()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isLate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-wide v4, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    cmp-long v0, v4, p3

    if-ltz v0, :cond_0

    .line 65
    iget-byte v0, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->priority:B

    if-nez v0, :cond_4

    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    .line 66
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mStartTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    const/4 v5, 0x0

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->filter(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;IILcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :cond_4
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 76
    :cond_5
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isMeasured()Z

    move-result v0

    if-nez v0, :cond_6

    .line 77
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->measure(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V

    .line 81
    :cond_6
    invoke-static {v1, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->fix(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V

    .line 84
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v0

    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_0

    .line 86
    :cond_7
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->draw(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)I

    move-result v0

    .line 89
    const/4 v4, 0x1

    if-ne v0, v4, :cond_9

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iget-wide v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    .line 94
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->addCount(II)I

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->addTotalCount(I)I

    goto/16 :goto_0

    .line 91
    :cond_9
    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    iget-wide v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    goto :goto_3

    .line 100
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 101
    :cond_b
    const-wide/16 v0, -0x1

    goto/16 :goto_2
.end method

.method public release()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->release()V

    .line 43
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->release()V

    .line 44
    return-void
.end method
