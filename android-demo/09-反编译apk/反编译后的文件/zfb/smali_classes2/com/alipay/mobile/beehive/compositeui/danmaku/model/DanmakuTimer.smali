.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;
.super Ljava/lang/Object;
.source "DanmakuTimer.java"


# instance fields
.field public currMillisecond:J

.field private lastInterval:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->update(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public lastInterval()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->lastInterval:J

    return-wide v0
.end method

.method public update(J)J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->lastInterval:J

    .line 26
    iput-wide p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 27
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->lastInterval:J

    return-wide v0
.end method
