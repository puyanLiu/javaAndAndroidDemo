.class Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;
.super Ljava/lang/Object;
.source "DanmakusRetainer.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;


# instance fields
.field protected mCancelFixingFlag:Z

.field protected mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mCancelFixingFlag:Z

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkVerticalEdge(ZLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;FLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 256
    iget v1, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    add-float/2addr v1, p4

    invoke-interface {p3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 257
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "DanmakuRetainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "drawItem="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " out of range, delay 500ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-wide v1, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 259
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->clear()V

    .line 269
    :goto_0
    return v0

    .line 264
    :cond_0
    cmpg-float v1, p4, v0

    if-ltz v1, :cond_2

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getTop()F

    move-result v1

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_2

    :cond_1
    iget v1, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    add-float/2addr v1, p4

    invoke-interface {p3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 265
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "DanmakuRetainer"

    const-string/jumbo v3, "reset topPos to 0 and clear"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->clear()V

    move p4, v0

    :cond_3
    move v0, p4

    .line 269
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mCancelFixingFlag:Z

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->clear()V

    .line 276
    return-void
.end method

.method public fix(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V
    .locals 17

    .prologue
    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v12, 0x0

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isShown()Z

    move-result v13

    .line 121
    if-nez v13, :cond_12

    .line 132
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mCancelFixingFlag:Z

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->iterator()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;

    move-result-object v16

    .line 134
    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    const/4 v14, 0x0

    move-object v10, v3

    .line 138
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mCancelFixingFlag:Z

    if-nez v3, :cond_2

    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    move v3, v14

    move-object v9, v2

    move-object v8, v10

    move-object v7, v4

    move-object v4, v15

    move v2, v13

    .line 194
    :goto_2
    if-eqz v4, :cond_a

    .line 195
    if-eqz v8, :cond_9

    .line 197
    invoke-virtual {v8}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v6

    .line 204
    :goto_3
    move-object/from16 v0, p1

    if-eq v4, v0, :cond_e

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->removeItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    .line 207
    const/4 v2, 0x0

    move v9, v2

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 235
    invoke-virtual/range {v2 .. v8}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->checkVerticalEdge(ZLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;FLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)F

    move-result v12

    .line 237
    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 238
    const/4 v9, 0x0

    .line 242
    :cond_3
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getLeft()F

    move-result v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v12}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->layout(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;FF)V

    .line 244
    if-nez v9, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->addItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    goto :goto_0

    .line 139
    :cond_4
    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->next()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v3

    .line 141
    move-object/from16 v0, p1

    if-ne v3, v0, :cond_5

    .line 143
    const/4 v10, 0x0

    .line 144
    const/4 v13, 0x1

    move-object v9, v2

    move-object v8, v10

    move-object v7, v4

    move-object v4, v3

    move v2, v13

    move v3, v14

    .line 148
    goto :goto_2

    .line 152
    :cond_5
    if-nez v4, :cond_11

    move-object v11, v3

    .line 158
    :goto_6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    invoke-virtual {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getTop()F

    move-result v5

    add-float/2addr v4, v5

    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 160
    const/4 v3, 0x1

    move-object v9, v2

    move-object v8, v10

    move-object v7, v11

    move-object v4, v15

    move v2, v13

    .line 161
    goto :goto_2

    .line 165
    :cond_6
    if-nez v2, :cond_7

    move-object v9, v3

    .line 176
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getDuration()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getTimer()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v2

    iget-wide v7, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    .line 175
    invoke-static/range {v2 .. v8}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;->willHitInDuration(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;JJ)Z

    move-result v2

    .line 178
    if-nez v2, :cond_8

    move-object v8, v10

    move-object v7, v11

    move-object v4, v3

    move v2, v13

    move v3, v14

    .line 182
    goto/16 :goto_2

    .line 168
    :cond_7
    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getRight()F

    move-result v4

    invoke-virtual {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getRight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_10

    move-object v9, v3

    .line 169
    goto :goto_7

    :cond_8
    move-object v2, v9

    move-object v10, v3

    move-object v4, v11

    .line 186
    goto/16 :goto_1

    .line 202
    :cond_9
    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getTop()F

    move-result v6

    goto/16 :goto_3

    .line 210
    :cond_a
    if-eqz v3, :cond_b

    .line 211
    if-eqz v9, :cond_f

    .line 212
    invoke-virtual {v9}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getTop()F

    move-result v6

    .line 213
    iget v4, v9, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintWidth:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintWidth:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v2, v9}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->removeItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    .line 215
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_4

    .line 219
    :cond_b
    if-eqz v8, :cond_c

    .line 221
    invoke-virtual {v8}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v6

    move v9, v2

    goto/16 :goto_4

    .line 223
    :cond_c
    if-eqz v7, :cond_d

    .line 225
    invoke-virtual {v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getTop()F

    move-result v6

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;->mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->removeItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    .line 227
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_4

    .line 231
    :cond_d
    const/4 v6, 0x0

    move v9, v2

    goto/16 :goto_4

    :cond_e
    move v9, v2

    goto/16 :goto_4

    :cond_f
    move v9, v2

    move v6, v12

    goto/16 :goto_4

    :cond_10
    move-object v9, v2

    goto :goto_7

    :cond_11
    move-object v11, v4

    goto/16 :goto_6

    :cond_12
    move v9, v13

    goto/16 :goto_5
.end method
