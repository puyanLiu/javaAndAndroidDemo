.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;
.super Ljava/lang/Object;
.source "DanmakuUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Danmaku_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDanmakuDrawingCache(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 102
    if-nez p2, :cond_0

    .line 103
    new-instance p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

    invoke-direct {p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;-><init>()V

    .line 105
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintWidth:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getDensityDpi()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->build(IIIZ)V

    .line 106
    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->get()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    iget-object v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    invoke-static {p0, v1, v3, v3, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->drawDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFZ)V

    .line 109
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getWidth()I

    move-result v1

    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getHeight()I

    move-result v2

    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getMaximumCacheWidth()I

    move-result v3

    .line 111
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getMaximumCacheHeight()I

    move-result v4

    .line 110
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->splitWith(IIII)V

    .line 119
    :cond_1
    return-object p2
.end method

.method private static checkHit(II[F[F)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    if-eq p0, p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    if-ne p0, v1, :cond_2

    .line 79
    aget v2, p3, v0

    aget v3, p2, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 82
    :cond_2
    const/4 v2, 0x6

    if-ne p0, v2, :cond_0

    .line 84
    aget v2, p3, v3

    aget v3, p2, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static checkHitAtTime(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;J)Z
    .locals 4

    .prologue
    .line 66
    invoke-virtual {p1, p0, p3, p4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getRectAtTime(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)[F

    move-result-object v0

    .line 67
    invoke-virtual {p2, p0, p3, p4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getRectAtTime(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)[F

    move-result-object v1

    .line 68
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v2

    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v3

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;->checkHit(II[F[F)Z

    move-result v0

    goto :goto_0
.end method

.method public static final compare(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 148
    if-ne p0, p1, :cond_1

    .line 149
    const/4 v0, 0x0

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    if-eqz p0, :cond_0

    .line 156
    if-nez p1, :cond_2

    move v0, v1

    .line 157
    goto :goto_0

    .line 160
    :cond_2
    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    iget-wide v4, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    sub-long/2addr v2, v4

    .line 161
    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    move v0, v1

    .line 162
    goto :goto_0

    .line 163
    :cond_3
    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 167
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->index:I

    iget v3, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->index:I

    sub-int/2addr v2, v3

    .line 168
    if-lez v2, :cond_4

    move v0, v1

    .line 169
    goto :goto_0

    .line 170
    :cond_4
    if-ltz v2, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v3

    sub-int/2addr v2, v3

    .line 175
    if-lez v2, :cond_5

    move v0, v1

    .line 176
    goto :goto_0

    .line 177
    :cond_5
    if-ltz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    if-nez v2, :cond_6

    move v0, v1

    .line 185
    goto :goto_0

    .line 188
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 189
    if-eqz v2, :cond_7

    move v0, v2

    .line 190
    goto :goto_0

    .line 193
    :cond_7
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textColor:I

    iget v3, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textColor:I

    sub-int/2addr v2, v3

    .line 194
    if-eqz v2, :cond_8

    .line 195
    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 197
    :cond_8
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->index:I

    iget v3, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->index:I

    sub-int/2addr v2, v3

    .line 198
    if-eqz v2, :cond_9

    .line 199
    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 201
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    .line 202
    goto :goto_0
.end method

.method public static getCacheSize(II)I
    .locals 1

    .prologue
    .line 123
    mul-int v0, p0, p1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static final isDuplicate(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 127
    if-ne p0, p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 138
    goto :goto_0

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 141
    goto :goto_0
.end method

.method public static final isOverSize(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z
    .locals 2

    .prologue
    .line 206
    invoke-interface {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintWidth:F

    invoke-interface {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getMaximumCacheWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    invoke-interface {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getMaximumCacheHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static willHitInDuration(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;JJ)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v2

    .line 42
    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v3

    .line 44
    if-eq v2, v3, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    iget-wide v3, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    iget-wide v5, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    sub-long/2addr v3, v5

    .line 51
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    move v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    :cond_3
    move v0, v1

    .line 58
    goto :goto_0

    .line 61
    :cond_4
    invoke-static {p0, p1, p2, p5, p6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;->checkHitAtTime(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;J)Z

    move-result v2

    if-nez v2, :cond_5

    .line 62
    iget-wide v2, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {p0, p1, p2, v2, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;->checkHitAtTime(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;J)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    .line 61
    goto :goto_0
.end method
