.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;
.super Ljava/lang/Object;
.source "IRenderer.java"


# static fields
.field public static final UNKNOWN_TIME:I = -0x1


# instance fields
.field public beginTime:J

.field public cacheHitCount:J

.field public cacheMissCount:J

.field public consumingTime:J

.field public endTime:J

.field public fbDanmakuCount:I

.field public ftDanmakuCount:I

.field public incrementCount:I

.field public l2rDanmakuCount:I

.field public nothingRendered:Z

.field public r2lDanmakuCount:I

.field public specialDanmakuCount:I

.field public sysTime:J

.field public totalDanmakuCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCount(II)I
    .locals 1

    .prologue
    .line 85
    packed-switch p1, :pswitch_data_0

    .line 102
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 87
    :pswitch_1
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->r2lDanmakuCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->r2lDanmakuCount:I

    .line 88
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->r2lDanmakuCount:I

    goto :goto_0

    .line 90
    :pswitch_2
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->l2rDanmakuCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->l2rDanmakuCount:I

    .line 91
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->l2rDanmakuCount:I

    goto :goto_0

    .line 93
    :pswitch_3
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->ftDanmakuCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->ftDanmakuCount:I

    .line 94
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->ftDanmakuCount:I

    goto :goto_0

    .line 96
    :pswitch_4
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->fbDanmakuCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->fbDanmakuCount:I

    .line 97
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->fbDanmakuCount:I

    goto :goto_0

    .line 99
    :pswitch_5
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->specialDanmakuCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->specialDanmakuCount:I

    .line 100
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->specialDanmakuCount:I

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public addTotalCount(I)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    .line 81
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->specialDanmakuCount:I

    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->fbDanmakuCount:I

    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->ftDanmakuCount:I

    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->l2rDanmakuCount:I

    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->r2lDanmakuCount:I

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->consumingTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->sysTime:J

    .line 108
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    .line 109
    return-void
.end method

.method public set(Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;)V
    .locals 2

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 114
    :cond_0
    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->r2lDanmakuCount:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->r2lDanmakuCount:I

    .line 115
    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->l2rDanmakuCount:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->l2rDanmakuCount:I

    .line 116
    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->ftDanmakuCount:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->ftDanmakuCount:I

    .line 117
    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->fbDanmakuCount:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->fbDanmakuCount:I

    .line 118
    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->specialDanmakuCount:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->specialDanmakuCount:I

    .line 119
    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    .line 120
    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->incrementCount:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->incrementCount:I

    .line 121
    iget-wide v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->consumingTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->consumingTime:J

    .line 122
    iget-wide v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    .line 123
    iget-wide v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    .line 124
    iget-boolean v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    .line 125
    iget-wide v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->sysTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->sysTime:J

    .line 126
    iget-wide v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    .line 127
    iget-wide v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    goto :goto_0
.end method
