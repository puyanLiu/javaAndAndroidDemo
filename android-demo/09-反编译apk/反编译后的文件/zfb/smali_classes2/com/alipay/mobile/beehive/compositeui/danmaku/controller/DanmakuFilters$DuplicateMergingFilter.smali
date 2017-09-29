.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final blockedDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

.field protected final currentDanmakus:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation
.end field

.field private final passedDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 338
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;-><init>()V

    .line 340
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    .line 341
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    .line 342
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    .line 338
    return-void
.end method

.method private final removeTimeoutDanmakus(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;J)V
    .locals 5

    .prologue
    .line 345
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->iterator()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;

    move-result-object v0

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 359
    :goto_0
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 362
    :cond_0
    :goto_1
    return-void

    .line 349
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->next()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v3

    .line 350
    invoke-virtual {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakuIterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    cmp-long v3, v3, p2

    if-gtz v3, :cond_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private removeTimeoutDanmakus(Ljava/util/LinkedHashMap;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 381
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_1
    return-void

    .line 370
    :cond_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 372
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    int-to-long v6, p2

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->reset()V

    .line 426
    return-void
.end method

.method public declared-synchronized filter(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;IILcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 389
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    const-wide/16 v3, 0x2

    invoke-direct {p0, v2, v3, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->removeTimeoutDanmakus(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;J)V

    .line 390
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    const-wide/16 v3, 0x2

    invoke-direct {p0, v2, v3, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->removeTimeoutDanmakus(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;J)V

    .line 391
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->removeTimeoutDanmakus(Ljava/util/LinkedHashMap;I)V

    .line 392
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v2, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->contains(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isOutside()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 406
    :goto_0
    monitor-exit p0

    return v0

    .line 395
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v2, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->contains(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 396
    goto :goto_0

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    iget-object v3, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->removeItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    .line 401
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->addItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 404
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->addItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 406
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->clear()V

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->clear()V

    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    monitor-exit p0

    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->setData(Ljava/lang/Void;)V

    return-void
.end method

.method public setData(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 414
    return-void
.end method
