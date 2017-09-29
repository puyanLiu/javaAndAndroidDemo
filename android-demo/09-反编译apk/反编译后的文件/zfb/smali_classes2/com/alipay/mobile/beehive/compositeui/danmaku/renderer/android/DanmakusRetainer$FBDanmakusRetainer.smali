.class Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;
.source "DanmakusRetainer.java"


# instance fields
.field protected mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;)V

    .line 296
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    .line 294
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkVerticalEdge(ZLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;FLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)F
    .locals 2

    .prologue
    .line 359
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v0

    invoke-interface {p3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 360
    :cond_0
    invoke-interface {p3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    sub-float p4, v0, v1

    .line 361
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->clear()V

    .line 363
    :cond_1
    return p4
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mCancelFixingFlag:Z

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->clear()V

    .line 370
    return-void
.end method

.method public fix(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V
    .locals 12

    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isShown()Z

    move-result v10

    .line 303
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getTop()F

    move-result v1

    .line 304
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    .line 305
    invoke-interface {p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    sub-float v1, v0, v1

    .line 307
    :cond_2
    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 308
    if-nez v10, :cond_a

    .line 309
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mCancelFixingFlag:Z

    .line 310
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->iterator()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;

    move-result-object v11

    move v8, v1

    .line 311
    :goto_1
    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mCancelFixingFlag:Z

    if-nez v1, :cond_3

    invoke-interface {v11}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move-object v5, v0

    move-object v7, v9

    .line 344
    :goto_2
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->checkVerticalEdge(ZLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;FLcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)F

    move-result v1

    .line 348
    :goto_3
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getLeft()F

    move-result v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->layout(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;FF)V

    .line 350
    if-nez v10, :cond_0

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->removeItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;->mVisibleDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->addItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    goto :goto_0

    .line 312
    :cond_4
    invoke-interface {v11}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->next()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 314
    if-ne v1, p1, :cond_5

    .line 315
    const/4 v1, 0x0

    move-object v5, v0

    move-object v7, v1

    .line 316
    goto :goto_2

    .line 319
    :cond_5
    if-nez v0, :cond_8

    .line 321
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v0

    invoke-interface {p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_9

    move-object v7, v1

    .line 322
    :goto_4
    const/4 v0, 0x0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_6

    .line 327
    const/4 v1, 0x0

    move-object v5, v7

    move-object v7, v1

    .line 328
    goto :goto_2

    .line 333
    :cond_6
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getDuration()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getTimer()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-wide v5, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    move-object v0, p2

    move-object v2, p1

    .line 332
    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DanmakuUtils;->willHitInDuration(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;JJ)Z

    move-result v0

    .line 334
    if-nez v0, :cond_7

    move-object v5, v7

    move-object v7, v1

    .line 337
    goto :goto_2

    .line 340
    :cond_7
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getTop()F

    move-result v0

    iget v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    sub-float/2addr v0, v1

    move v8, v0

    move-object v0, v7

    goto :goto_1

    :cond_8
    move-object v7, v0

    goto :goto_4

    :cond_9
    move-object v5, v1

    move-object v7, v9

    goto :goto_2

    :cond_a
    move-object v7, v9

    goto :goto_3
.end method
