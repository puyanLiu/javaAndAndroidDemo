.class Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;
.super Ljava/lang/Object;
.source "SpdyConnection.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$1;)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)V

    return-void
.end method


# virtual methods
.method public data(ZILjava/io/InputStream;I)V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    move-result-object v0

    .line 529
    if-nez v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    invoke-virtual {v0, p2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 531
    int-to-long v0, p4

    invoke-static {p3, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->skipByReading(Ljava/io/InputStream;J)J

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->receiveData(Ljava/io/InputStream;I)V

    .line 535
    if-eqz p1, :cond_0

    .line 536
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->receiveFin()V

    goto :goto_0
.end method

.method public goAway(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    .locals 4

    .prologue
    .line 691
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    monitor-enter v2

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1302(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;Z)Z

    .line 695
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 696
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 698
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 699
    if-le v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->receiveRstStream(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 701
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public headers(ZZIIILjava/util/List;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 576
    iget-object v10, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    monitor-enter v10

    .line 578
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    monitor-exit v10

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    move-result-object v2

    .line 583
    if-nez v2, :cond_5

    .line 585
    invoke-virtual/range {p7 .. p7}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;->failIfStreamAbsent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 586
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    sget-object v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    invoke-virtual {v2, p3, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 587
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v2

    monitor-exit v10

    throw v2

    .line 591
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1400(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)I

    move-result v2

    if-gt p3, v2, :cond_3

    .line 592
    monitor-exit v10

    goto :goto_0

    .line 595
    :cond_3
    rem-int/lit8 v2, p3, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1500(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_4

    .line 596
    monitor-exit v10

    goto :goto_0

    .line 599
    :cond_4
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    iget-object v9, v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->settings:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;

    move v3, p3

    move v5, p1

    move v6, p2

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;-><init>(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;ZZILjava/util/List;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V

    .line 601
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v3, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1402(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;I)I

    .line 602
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1900()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader$1;

    const-string/jumbo v5, "OkHttp Callback %s stream %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v8}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1700(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 614
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 616
    :cond_5
    monitor-exit v10

    .line 619
    invoke-virtual/range {p7 .. p7}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;->failIfStreamPresent()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 620
    sget-object v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->closeLater(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 621
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-virtual {v2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->removeStream(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    goto/16 :goto_0

    .line 626
    :cond_6
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->receiveHeaders(Ljava/util/List;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;)V

    .line 627
    if-eqz p2, :cond_0

    .line 628
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->receiveFin()V

    goto/16 :goto_0
.end method

.method public noop()V
    .locals 0

    .prologue
    .line 669
    return-void
.end method

.method public ping(ZII)V
    .locals 3

    .prologue
    .line 673
    if-eqz p1, :cond_1

    .line 674
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$2000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;->receive()V

    .line 680
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    move-result-object v1

    .line 681
    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManager;->notifyPingResponse(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;)V

    .line 682
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$2100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;Z)V

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, p3, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$2200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;ZIILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;)V

    goto :goto_0
.end method

.method public preReadSynReplyHeaders(I)V
    .locals 2

    .prologue
    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    move-result-object v0

    .line 556
    if-nez v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    .line 561
    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "WAIT_TIME"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public priority(II)V
    .locals 0

    .prologue
    .line 724
    return-void
.end method

.method public rstStream(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->removeStream(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->receiveRstStream(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 637
    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 502
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    .line 503
    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    .line 505
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;->nextFrame(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->NO_ERROR:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    .line 508
    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->CANCEL:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 522
    :goto_0
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 520
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 510
    :catch_1
    move-exception v1

    :try_start_2
    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 511
    :try_start_3
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 518
    :try_start_4
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 519
    :catch_2
    move-exception v0

    .line 520
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 512
    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 513
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SpdyReader:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 514
    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->PROTOCOL_ERROR_ALTS:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    .line 515
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->PROTOCOL_ERROR_ALTS:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 518
    :try_start_6
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 519
    :catch_4
    move-exception v0

    .line 520
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 518
    :goto_1
    :try_start_7
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v3, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 521
    :goto_2
    throw v0

    .line 519
    :catch_5
    move-exception v1

    .line 520
    const-string/jumbo v2, "MWALLET_SPDY_LOG"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 517
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public settings(ZLcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V
    .locals 6

    .prologue
    .line 641
    const/4 v0, 0x0

    .line 642
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    monitor-enter v2

    .line 643
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->settings:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    iput-object p2, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->settings:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;

    .line 648
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 649
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    move-object v1, v0

    .line 651
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    if-eqz v1, :cond_2

    .line 653
    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 658
    monitor-enter v3

    .line 659
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 660
    :try_start_2
    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    iget-object v5, v5, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->settings:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->receiveSettings(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V

    .line 661
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 662
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 646
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->settings:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;->merge(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 661
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v4

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 662
    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    .line 665
    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public tcpData(Ljava/io/InputStream;I)V
    .locals 3

    .prologue
    .line 543
    new-array v0, p2, [B

    .line 544
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readDataFully(Ljava/io/InputStream;I[BI)V

    .line 546
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->onRecvData([B)V

    .line 547
    const-string/jumbo v0, "LL_TRANSPORT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "LongLink Receive Tcp Data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method public windowUpdate(IIZ)V
    .locals 1

    .prologue
    .line 709
    if-nez p1, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    move-result-object v0

    .line 716
    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->receiveWindowUpdate(I)V

    goto :goto_0
.end method
