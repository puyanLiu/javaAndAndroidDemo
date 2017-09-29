.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
.source "SpecialDanmaku.java"


# instance fields
.field public alphaDuration:J

.field public beginAlpha:I

.field public beginX:F

.field public beginY:F

.field private currStateValues:[F

.field public deltaAlpha:I

.field public deltaX:F

.field public deltaY:F

.field public endAlpha:I

.field public endX:F

.field public endY:F

.field public linePaths:[Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;

.field public pivotX:F

.field public pivotY:F

.field public rotateX:F

.field public rotateZ:F

.field public translationDuration:J

.field public translationStartDelay:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;-><init>()V

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->currStateValues:[F

    .line 19
    return-void
.end method


# virtual methods
.method public getBottom()F
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getLeft()F
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getRectAtTime(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)[F
    .locals 15

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->isMeasured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->time:J

    sub-long v6, p2, v0

    .line 107
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->alphaDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->deltaAlpha:I

    if-eqz v0, :cond_1

    .line 108
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->alphaDuration:J

    cmp-long v0, v6, v0

    if-ltz v0, :cond_5

    .line 109
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->endAlpha:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->alpha:I

    .line 118
    :cond_1
    :goto_1
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->beginX:F

    .line 119
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->beginY:F

    .line 120
    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->translationStartDelay:J

    sub-long v8, v6, v2

    .line 121
    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->translationDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-ltz v2, :cond_a

    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->translationDuration:J

    cmp-long v2, v8, v2

    if-gtz v2, :cond_a

    .line 122
    long-to-float v2, v8

    iget-wide v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->translationDuration:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    .line 123
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->linePaths:[Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;

    if-eqz v3, :cond_8

    .line 124
    const/4 v3, 0x0

    .line 125
    iget-object v10, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->linePaths:[Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;

    array-length v11, v10

    const/4 v2, 0x0

    move v4, v2

    move v14, v1

    move v1, v0

    move v0, v14

    :goto_2
    if-lt v4, v11, :cond_6

    move-object v2, v3

    .line 134
    :cond_2
    if-eqz v2, :cond_4

    .line 135
    iget v3, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->delatX:F

    .line 136
    iget v4, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->deltaY:F

    .line 137
    iget-wide v8, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->beginTime:J

    sub-long v5, v6, v8

    long-to-float v5, v5

    .line 138
    iget-wide v6, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->duration:J

    long-to-float v6, v6

    .line 137
    div-float/2addr v5, v6

    .line 139
    iget-object v6, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->pBegin:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

    iget v6, v6, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;->x:F

    .line 140
    iget-object v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->pBegin:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

    iget v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;->y:F

    .line 141
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_3

    .line 142
    mul-float v1, v3, v5

    .line 143
    add-float/2addr v1, v6

    .line 145
    :cond_3
    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_4

    .line 146
    mul-float v0, v4, v5

    .line 147
    add-float/2addr v0, v2

    .line 165
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 166
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 167
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v3, 0x2

    iget v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->paintWidth:F

    add-float/2addr v1, v4

    aput v1, v2, v3

    .line 168
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v2, 0x3

    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->paintHeight:F

    add-float/2addr v0, v3

    aput v0, v1, v2

    .line 170
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->isOutside()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->setVisibility(Z)V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->currStateValues:[F

    goto/16 :goto_0

    .line 111
    :cond_5
    long-to-float v0, v6

    iget-wide v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->alphaDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 112
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->deltaAlpha:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 113
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->beginAlpha:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->alpha:I

    goto/16 :goto_1

    .line 125
    :cond_6
    aget-object v2, v10, v4

    .line 126
    iget-wide v12, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->beginTime:J

    cmp-long v5, v8, v12

    if-ltz v5, :cond_7

    iget-wide v12, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->endTime:J

    cmp-long v5, v8, v12

    if-ltz v5, :cond_2

    .line 130
    :cond_7
    iget-object v0, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->pEnd:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

    iget v5, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;->x:F

    .line 131
    iget-object v0, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->pEnd:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

    iget v1, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;->y:F

    .line 125
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v1

    move v1, v5

    goto :goto_2

    .line 151
    :cond_8
    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->deltaX:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9

    .line 152
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->deltaX:F

    mul-float/2addr v0, v2

    .line 153
    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->beginX:F

    add-float/2addr v0, v3

    .line 155
    :cond_9
    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->deltaY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_c

    .line 156
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->deltaY:F

    mul-float/2addr v1, v2

    .line 157
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->beginY:F

    add-float/2addr v1, v2

    move v14, v1

    move v1, v0

    move v0, v14

    goto :goto_3

    .line 160
    :cond_a
    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->translationDuration:J

    cmp-long v2, v8, v2

    if-lez v2, :cond_c

    .line 161
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->endX:F

    .line 162
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->endY:F

    goto :goto_3

    .line 170
    :cond_b
    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    move v14, v1

    move v1, v0

    move v0, v14

    goto/16 :goto_3
.end method

.method public getRight()F
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getTop()F
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x7

    return v0
.end method

.method public layout(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;FF)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->getRectAtTime(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)[F

    .line 96
    return-void
.end method

.method public setAlphaData(IIJ)V
    .locals 1

    .prologue
    .line 213
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->beginAlpha:I

    .line 214
    iput p2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->endAlpha:I

    .line 215
    sub-int v0, p2, p1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->deltaAlpha:I

    .line 216
    iput-wide p3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->alphaDuration:J

    .line 217
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->deltaAlpha:I

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->MAX:I

    if-eq p1, v0, :cond_0

    .line 218
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->alpha:I

    .line 220
    :cond_0
    return-void
.end method

.method public setLinePathData([[F)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 223
    if-eqz p1, :cond_0

    .line 224
    array-length v0, p1

    .line 225
    aget-object v2, p1, v1

    aget v2, v2, v1

    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->beginX:F

    .line 226
    aget-object v2, p1, v1

    aget v2, v2, v7

    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->beginY:F

    .line 227
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    aget v2, v2, v1

    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->endX:F

    .line 228
    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    aget v0, v0, v7

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->endY:F

    .line 229
    array-length v0, p1

    if-le v0, v7, :cond_0

    .line 230
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->linePaths:[Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;

    move v0, v1

    .line 231
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->linePaths:[Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 236
    const/4 v0, 0x0

    .line 237
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->linePaths:[Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;

    array-length v5, v3

    move v4, v0

    move v0, v1

    :goto_1
    if-lt v0, v5, :cond_2

    .line 240
    const/4 v0, 0x0

    .line 241
    iget-object v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->linePaths:[Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;

    array-length v6, v5

    move v2, v1

    :goto_2
    if-lt v2, v6, :cond_3

    .line 250
    :cond_0
    return-void

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->linePaths:[Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;

    new-instance v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;)V

    aput-object v3, v2, v0

    .line 233
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->linePaths:[Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;

    aget-object v2, v2, v0

    new-instance v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

    aget-object v4, p1, v0

    aget v4, v4, v1

    aget-object v5, p1, v0

    aget v5, v5, v7

    invoke-direct {v3, p0, v4, v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;FF)V

    new-instance v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;

    .line 234
    add-int/lit8 v5, v0, 0x1

    aget-object v5, p1, v5

    aget v5, v5, v1

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p1, v6

    aget v6, v6, v7

    invoke-direct {v4, p0, v5, v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;FF)V

    .line 233
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->setPoints(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$Point;)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_2
    aget-object v2, v3, v0

    .line 238
    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->getDistance()F

    move-result v2

    add-float/2addr v2, v4

    .line 237
    add-int/lit8 v0, v0, 0x1

    move v4, v2

    goto :goto_1

    .line 241
    :cond_3
    aget-object v3, v5, v2

    .line 242
    invoke-virtual {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->getDistance()F

    move-result v1

    div-float/2addr v1, v4

    iget-wide v7, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->translationDuration:J

    long-to-float v7, v7

    mul-float/2addr v1, v7

    float-to-long v7, v1

    iput-wide v7, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->duration:J

    .line 243
    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    :goto_3
    iput-wide v0, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->beginTime:J

    .line 244
    iget-wide v0, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->beginTime:J

    iget-wide v7, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->duration:J

    add-long/2addr v0, v7

    iput-wide v0, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->endTime:J

    .line 241
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v0, v3

    goto :goto_2

    .line 243
    :cond_4
    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku$LinePath;->endTime:J

    goto :goto_3
.end method

.method public setTranslationData(FFFFJJ)V
    .locals 1

    .prologue
    .line 202
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->beginX:F

    .line 203
    iput p2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->beginY:F

    .line 204
    iput p3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->endX:F

    .line 205
    iput p4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->endY:F

    .line 206
    sub-float v0, p3, p1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->deltaX:F

    .line 207
    sub-float v0, p4, p2

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->deltaY:F

    .line 208
    iput-wide p5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->translationDuration:J

    .line 209
    iput-wide p7, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/SpecialDanmaku;->translationStartDelay:J

    .line 210
    return-void
.end method

.method public updateData(F)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method
