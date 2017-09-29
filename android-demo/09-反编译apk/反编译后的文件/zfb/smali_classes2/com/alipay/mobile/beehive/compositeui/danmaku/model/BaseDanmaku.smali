.class public abstract Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
.super Ljava/lang/Object;
.source "BaseDanmaku.java"


# static fields
.field public static final DANMAKU_BR_CHAR:Ljava/lang/String; = "/n"

.field public static final INVISIBLE:I = 0x0

.field public static final TYPE_FIX_BOTTOM:I = 0x4

.field public static final TYPE_FIX_TOP:I = 0x5

.field public static final TYPE_MOVEABLE_XXX:I = 0x0

.field public static final TYPE_SCROLL_LR:I = 0x6

.field public static final TYPE_SCROLL_RL:I = 0x1

.field public static final TYPE_SPECIAL:I = 0x7

.field public static final VISIBLE:I = 0x1


# instance fields
.field protected alpha:I

.field public borderColor:I

.field public cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache",
            "<*>;"
        }
    .end annotation
.end field

.field public duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

.field public index:I

.field public isGuest:Z

.field public isLive:Z

.field public lines:[Ljava/lang/String;

.field protected mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

.field private measureResetFlag:I

.field public padding:I

.field public paintHeight:F

.field public paintWidth:F

.field public priority:B

.field public rotationY:F

.field public rotationZ:F

.field public text:Ljava/lang/String;

.field public textColor:I

.field public textShadowColor:I

.field public textSize:F

.field public time:J

.field public underlineColor:I

.field public userHash:Ljava/lang/String;

.field public userId:I

.field public visibility:I

.field private visibleResetFlag:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->underlineColor:I

    .line 85
    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textSize:F

    .line 90
    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->borderColor:I

    .line 95
    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->padding:I

    .line 100
    iput-byte v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->priority:B

    .line 105
    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 110
    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    .line 130
    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->visibleResetFlag:I

    .line 135
    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->measureResetFlag:I

    .line 150
    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->userId:I

    .line 170
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->MAX:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->alpha:I

    .line 22
    return-void
.end method


# virtual methods
.method public draw(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)I
    .locals 1

    .prologue
    .line 187
    invoke-interface {p1, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->draw(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->alpha:I

    return v0
.end method

.method public abstract getBottom()F
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->value:J

    return-wide v0
.end method

.method public abstract getLeft()F
.end method

.method public abstract getRectAtTime(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)[F
.end method

.method public abstract getRight()F
.end method

.method public getTimer()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    return-object v0
.end method

.method public abstract getTop()F
.end method

.method public abstract getType()I
.end method

.method public hasDrawingCache()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLate()Z
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMeasured()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintWidth:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 192
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->measureResetFlag:I

    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 191
    goto :goto_0
.end method

.method public isOutside()Z
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isOutside(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOutside(J)Z
    .locals 4

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    sub-long v0, p1, v0

    .line 233
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iget-wide v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->value:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShown()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 215
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->visibility:I

    if-ne v1, v0, :cond_0

    .line 216
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->visibleResetFlag:I

    sget v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 215
    goto :goto_0
.end method

.method public isTimeOut()Z
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isTimeOut(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTimeOut(J)Z
    .locals 4

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iget-wide v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->value:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract layout(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;FF)V
.end method

.method public measure(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V
    .locals 1

    .prologue
    .line 201
    invoke-interface {p1, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->measure(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V

    .line 202
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->measureResetFlag:I

    .line 203
    return-void
.end method

.method public setDuration(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    .line 178
    return-void
.end method

.method public setTimer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    .line 281
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->visibleResetFlag:I

    .line 243
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->visibility:I

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->visibility:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BaseDanmaku[text=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
