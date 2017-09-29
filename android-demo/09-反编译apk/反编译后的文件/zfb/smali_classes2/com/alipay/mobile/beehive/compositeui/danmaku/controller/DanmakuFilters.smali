.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;
.super Ljava/lang/Object;
.source "DanmakuFilters.java"


# static fields
.field public static final TAG_DUPLICATE_FILTER:Ljava/lang/String; = "1017_Filter"

.field public static final TAG_ELAPSED_TIME_FILTER:Ljava/lang/String; = "1012_Filter"

.field public static final TAG_GUEST_FILTER:Ljava/lang/String; = "1016_Filter"

.field public static final TAG_QUANTITY_DANMAKU_FILTER:Ljava/lang/String; = "1011_Filter"

.field public static final TAG_TEXT_COLOR_DANMAKU_FILTER:Ljava/lang/String; = "1013_Filter"

.field public static final TAG_TYPE_DANMAKU_FILTER:Ljava/lang/String; = "1010_Filter"

.field public static final TAG_USER_HASH_FILTER:Ljava/lang/String; = "1015_Filter"

.field public static final TAG_USER_ID_FILTER:Ljava/lang/String; = "1014_Filter"

.field private static final filters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static instance:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;


# instance fields
.field public final filterException:Ljava/lang/Exception;

.field mFilterArray:[Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->instance:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    .line 461
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    .line 460
    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "not suuport this filter tag"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->filterException:Ljava/lang/Exception;

    .line 471
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->mFilterArray:[Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 19
    return-void
.end method

.method public static getDefault()Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;
    .locals 1

    .prologue
    .line 546
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->instance:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;-><init>()V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->instance:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    .line 549
    :cond_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->instance:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;

    return-object v0
.end method

.method private throwFilterException()V
    .locals 1

    .prologue
    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->filterException:Ljava/lang/Exception;

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :catch_0
    move-exception v0

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 519
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->mFilterArray:[Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 523
    return-void

    .line 519
    :cond_0
    aget-object v3, v1, v0

    .line 520
    if-eqz v3, :cond_1

    .line 521
    invoke-interface {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;->clear()V

    .line 519
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public filter(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;IILcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Z)Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 452
    iget-object v8, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->mFilterArray:[Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    array-length v9, v8

    move v7, v6

    :goto_0
    if-lt v7, v9, :cond_0

    move v0, v6

    .line 457
    :goto_1
    return v0

    .line 452
    :cond_0
    aget-object v0, v8, v7

    .line 453
    if-eqz v0, :cond_1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;->filter(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;IILcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    const/4 v0, 0x1

    goto :goto_1

    .line 452
    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 464
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 465
    if-nez v0, :cond_0

    .line 466
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->registerFilter(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    move-result-object v0

    .line 468
    :cond_0
    return-object v0
.end method

.method public registerFilter(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 474
    if-nez p1, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->throwFilterException()V

    move-object v0, v1

    .line 506
    :goto_0
    return-object v0

    .line 478
    :cond_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 479
    if-nez v0, :cond_9

    .line 480
    const-string/jumbo v2, "1010_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;-><init>()V

    move-object v2, v0

    .line 499
    :goto_1
    if-nez v2, :cond_8

    .line 500
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->throwFilterException()V

    move-object v0, v1

    .line 501
    goto :goto_0

    .line 482
    :cond_1
    const-string/jumbo v2, "1011_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 483
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;-><init>()V

    move-object v2, v0

    goto :goto_1

    .line 484
    :cond_2
    const-string/jumbo v2, "1012_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 485
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;-><init>()V

    move-object v2, v0

    goto :goto_1

    .line 486
    :cond_3
    const-string/jumbo v2, "1013_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 487
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$TextColorFilter;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$TextColorFilter;-><init>()V

    move-object v2, v0

    goto :goto_1

    .line 488
    :cond_4
    const-string/jumbo v2, "1014_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 489
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$UserIdFilter;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$UserIdFilter;-><init>()V

    move-object v2, v0

    goto :goto_1

    .line 490
    :cond_5
    const-string/jumbo v2, "1015_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 491
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$UserHashFilter;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$UserHashFilter;-><init>()V

    move-object v2, v0

    goto :goto_1

    .line 492
    :cond_6
    const-string/jumbo v2, "1016_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 493
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$GuestFilter;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$GuestFilter;-><init>()V

    move-object v2, v0

    goto :goto_1

    .line 494
    :cond_7
    const-string/jumbo v2, "1017_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 495
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;-><init>()V

    move-object v2, v0

    goto :goto_1

    .line 503
    :cond_8
    invoke-interface {v2, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;->setData(Ljava/lang/Object;)V

    .line 504
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->mFilterArray:[Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->mFilterArray:[Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    move-object v0, v2

    .line 506
    goto/16 :goto_0

    :cond_9
    move-object v2, v0

    goto/16 :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->clear()V

    .line 534
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 535
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->mFilterArray:[Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 536
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 526
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->mFilterArray:[Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 530
    return-void

    .line 526
    :cond_0
    aget-object v3, v1, v0

    .line 527
    if-eqz v3, :cond_1

    .line 528
    invoke-interface {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;->reset()V

    .line 526
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterFilter(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 510
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 511
    if-eqz v0, :cond_0

    .line 512
    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;->clear()V

    .line 513
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->mFilterArray:[Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters;->mFilterArray:[Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 516
    :cond_0
    return-void
.end method
