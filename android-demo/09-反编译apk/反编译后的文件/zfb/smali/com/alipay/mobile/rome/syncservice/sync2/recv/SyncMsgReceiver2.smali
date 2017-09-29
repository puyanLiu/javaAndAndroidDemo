.class public Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;
.super Ljava/lang/Object;
.source "SyncMsgReceiver2.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SyncMsgReceiver2"

.field private static volatile instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method private dispatchSyncPacket(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/c;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 379
    const-string/jumbo v0, "SyncMsgReceiver2"

    const-string/jumbo v1, "dispatchSyncPacket: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    const-string/jumbo v0, "SyncMsgReceiver2"

    const-string/jumbo v1, "dispatchSyncPacket: syncPacketArr null or size==0 "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 401
    :goto_0
    return v0

    .line 386
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 401
    goto :goto_0

    .line 386
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/c;

    .line 388
    :try_start_0
    iget-boolean v1, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->h:Z

    if-eqz v1, :cond_4

    .line 389
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->recvMsg(Lcom/alipay/mobile/rome/syncservice/sync/c;)I

    move-result v1

    .line 390
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 391
    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->handleDBExceptionResp(Lcom/alipay/mobile/rome/syncservice/sync/c;)V

    move v0, v1

    .line 392
    goto :goto_0

    .line 395
    :cond_4
    const-string/jumbo v0, "SyncMsgReceiver2"

    const-string/jumbo v1, "dispatchSyncPacket: [ syncPacket.needDisptch=false ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    const-string/jumbo v1, "SyncMsgReceiver2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dispatchMsgData: [ Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleDBExceptionResp(Lcom/alipay/mobile/rome/syncservice/sync/c;)V
    .locals 6

    .prologue
    .line 406
    if-nez p1, :cond_0

    .line 436
    :goto_0
    return-void

    .line 409
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode4001;

    invoke-direct {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode4001;-><init>()V

    .line 410
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 411
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 412
    new-instance v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizError;

    invoke-direct {v4}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizError;-><init>()V

    .line 413
    iget-object v5, p1, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizError;->biz_type:Ljava/lang/String;

    .line 414
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizError;->sync_key:Ljava/lang/Long;

    .line 415
    const-string/jumbo v1, "dbException"

    iput-object v1, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizError;->error:Ljava/lang/String;

    .line 416
    const-string/jumbo v1, "3001"

    iput-object v1, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizError;->error_code:Ljava/lang/String;

    .line 417
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iput-object v3, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode4001;->biz_error:Ljava/util/List;

    .line 419
    iget-object v1, p1, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode4001;->principal_id:Ljava/lang/String;

    .line 420
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 423
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 425
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 426
    const/16 v3, 0xfa1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 427
    invoke-virtual {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode4001;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 428
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 430
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 431
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 432
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->sendPacketUplinkSync([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    const-string/jumbo v1, "SyncMsgReceiver2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleDBExceptionResp Exception["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handlePacketResponse(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/c;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    :try_start_0
    new-instance v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;

    invoke-direct {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;-><init>()V

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 454
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    iput-object v3, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->biz_sync_info:Ljava/util/List;

    .line 476
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    .line 477
    if-eqz v0, :cond_0

    .line 478
    new-instance v3, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    invoke-direct {v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;-><init>()V

    .line 480
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id:Ljava/lang/String;

    .line 481
    iget-object v6, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    .line 480
    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/rome/syncservice/sync/a;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 482
    iget-object v6, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    iput-object v6, v3, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    .line 483
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v3, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->sync_key:Ljava/lang/Long;

    .line 485
    iput-object v3, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_0
    const-string/jumbo v0, "SyncMsgReceiver2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendSync2002\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 494
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 496
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 497
    const/16 v3, 0x7d2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 498
    invoke-virtual {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 499
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 501
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 502
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 504
    array-length v1, v0

    int-to-long v1, v1

    .line 505
    if-eqz p3, :cond_3

    .line 506
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->sendPacketUplinkSync([B)V

    .line 511
    :goto_1
    const-string/jumbo v3, "SYNC_2002"

    .line 512
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 513
    const-string/jumbo v0, "count"

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 516
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 517
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 518
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/c;

    iget-wide v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    .line 517
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-static {v3, v5, v2, v0, v4}, Lcom/alipay/mobile/rome/syncservice/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 524
    :goto_3
    return-void

    .line 454
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/c;

    .line 457
    iget-object v5, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 458
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v6

    iget-object v7, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    .line 461
    iget-wide v7, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    cmp-long v7, v7, v5

    if-gez v7, :cond_2

    .line 462
    iput-wide v5, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    .line 465
    :cond_2
    new-instance v5, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    invoke-direct {v5}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;-><init>()V

    .line 466
    iget-object v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    iput-object v6, v5, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->biz_type:Ljava/lang/String;

    .line 467
    iget-wide v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->sync_key:Ljava/lang/Long;

    .line 468
    iget-object v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->pf:Ljava/lang/Integer;

    .line 469
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    const-string/jumbo v1, "SyncMsgReceiver2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSync2002:  [ TException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 508
    :cond_3
    :try_start_1
    invoke-static {p4, v0}, Lcom/alipay/mobile/rome/syncservice/event/BroadcastSender;->sendAckMsgToPush(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 518
    :cond_4
    const-wide/16 v0, 0x0

    goto/16 :goto_2
.end method

.method private preHandlePacket(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;IZ)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;",
            "IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id:Ljava/lang/String;

    .line 222
    const/4 v1, 0x0

    .line 224
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 225
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->not_check_principal:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->not_check_principal:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    const/4 v1, 0x1

    move v2, v1

    .line 233
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 236
    :try_start_0
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->biz_sync_data:Ljava/util/List;

    .line 238
    const-string/jumbo v8, "SYNC_2001"

    .line 242
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v9

    .line 243
    const-string/jumbo v1, "count"

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 245
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 246
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 247
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;

    iget-object v1, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->sync_key:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 246
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v8, v10, v11, v1, v9}, Lcom/alipay/mobile/rome/syncservice/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 348
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    .line 349
    if-eqz v1, :cond_0

    .line 350
    iget-object v2, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->sync_key:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 351
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v4

    .line 352
    iget-object v7, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    .line 351
    invoke-virtual {v4, v5, v7}, Lcom/alipay/mobile/rome/syncservice/sync/a;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    .line 354
    const-string/jumbo v4, "SyncMsgReceiver2"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "preHandlePacket:  [ bucket_type="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    iget-object v10, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ][ key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ][ currKey="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 356
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 354
    invoke-static {v4, v9}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    cmp-long v4, v2, v7

    if-lez v4, :cond_0

    .line 359
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v4

    .line 360
    iget-object v1, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    .line 359
    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_0
    return-object v6

    .line 228
    :cond_1
    const-string/jumbo v1, "SyncMsgReceiver2"

    const-string/jumbo v2, "preHandlePacket: [ packet no userId or cdid ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "packet no userId or cdid"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_2
    const-wide/16 v3, 0x0

    goto/16 :goto_1

    .line 250
    :cond_3
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;

    .line 252
    new-instance v7, Lcom/alipay/mobile/rome/syncservice/sync/c;

    invoke-direct {v7}, Lcom/alipay/mobile/rome/syncservice/sync/c;-><init>()V

    .line 254
    iput-object v5, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 255
    iget-object v8, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->biz_type:Ljava/lang/String;

    iput-object v8, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    .line 256
    iget-object v8, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->sync_key:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    .line 258
    iget-object v8, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->pf:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    .line 259
    iget-object v8, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->has_more:Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->g:Ljava/lang/String;

    .line 262
    if-eqz v2, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 263
    const-string/jumbo v8, "userBased"

    .line 264
    iget-object v9, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-static {v9}, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 263
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 265
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 270
    :goto_3
    iget-object v8, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 271
    const-string/jumbo v1, "SyncMsgReceiver2"

    const-string/jumbo v2, "preHandlePacket: [ global online push packet no userId or cdid ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "global online push packet no userId or cdid"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 363
    :catch_0
    move-exception v1

    .line 364
    const-string/jumbo v2, "SyncMsgReceiver2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "preHandlePacket: [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    throw v1

    .line 267
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/a;->d()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    goto :goto_3

    .line 277
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v8

    iget-object v9, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-virtual {v8, v9, v5}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 279
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, " biz:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " sKey:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " pf:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    new-instance v10, Ljava/lang/StringBuffer;

    const-string/jumbo v11, "("

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 281
    new-instance v11, Ljava/lang/StringBuffer;

    const-string/jumbo v12, "("

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 283
    iget-object v1, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->oplog:Ljava/util/List;

    .line 284
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 285
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 286
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 287
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    .line 313
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_d

    .line 314
    const-string/jumbo v1, ""

    iput-object v1, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    .line 318
    :goto_5
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 319
    invoke-virtual {v13}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    .line 322
    :cond_7
    const-string/jumbo v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const-string/jumbo v1, ")"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    iget-wide v12, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    cmp-long v1, v12, v8

    if-lez v1, :cond_f

    .line 327
    iget-object v1, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    const-string/jumbo v8, "1"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 328
    iget-object v1, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    const-string/jumbo v8, "2"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 329
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->h:Z

    .line 339
    :cond_9
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " childMsg"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, " repeatMsg"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, " needDispatch:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v8, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->h:Z

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    if-eqz p3, :cond_11

    const-string/jumbo v1, "mmtp"

    .line 341
    :goto_7
    const-string/jumbo v8, "SyncMsgReceiver2"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "preHandlePacket-"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 287
    :cond_a
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;

    .line 288
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 289
    const-string/jumbo v16, "mk"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string/jumbo v16, "st"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string/jumbo v16, "bId"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string/jumbo v16, "mId"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string/jumbo v16, "isSc"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string/jumbo v16, "appId"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string/jumbo v16, "ext"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string/jumbo v16, "mct"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 298
    const-string/jumbo v16, "pl"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    :goto_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v16, v16, v8

    if-lez v16, :cond_c

    .line 305
    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 306
    iget-object v15, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->push_data:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 307
    new-instance v15, Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->push_data:Ljava/lang/String;

    invoke-direct {v15, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_4

    .line 300
    :cond_b
    const-string/jumbo v16, "pl"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string/jumbo v16, "isB"

    const-string/jumbo v17, "1"

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    .line 310
    :cond_c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v15, " "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 316
    :cond_d
    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    goto/16 :goto_5

    .line 330
    :cond_e
    iget-object v1, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 331
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v1

    iget-object v8, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    iget-wide v12, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    iget-object v9, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v8, v12, v13, v9}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;JLjava/lang/String;)J

    goto/16 :goto_6

    .line 335
    :cond_f
    iget-object v1, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    const-string/jumbo v8, "1"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    const-string/jumbo v8, "2"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 336
    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/alipay/mobile/rome/syncservice/sync/c;->h:Z

    goto/16 :goto_6

    .line 340
    :cond_11
    const-string/jumbo v1, "push"
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :cond_12
    move v2, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized recvPushMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    :goto_0
    monitor-exit p0

    return-void

    .line 530
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    .line 534
    const-string/jumbo v2, "sync-data-aes128"

    .line 533
    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 539
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1, p2}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->recvSyncMsg([BZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    :try_start_3
    const-string/jumbo v1, "SyncMsgReceiver2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recvPushMsg:  [ TException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " decryptMsp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public recvSyncMsg([BZLjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 88
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 90
    shl-int/lit8 v0, v0, 0x8

    .line 91
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 92
    const-string/jumbo v1, "SyncMsgReceiver2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recvSyncMsg[length:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][isFromSync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 95
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "][id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "][sOpcode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_1

    .line 99
    :try_start_0
    new-instance v0, Lcom/squareup/wire/Wire;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 102
    const/4 v1, 0x3

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 103
    const-class v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;

    .line 106
    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->preHandlePacket(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;IZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->dispatchSyncPacket(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;Ljava/util/ArrayList;)I

    move-result v2

    .line 110
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 204
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->handlePacketResponse(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;Ljava/util/ArrayList;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string/jumbo v1, "SyncMsgReceiver2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    const-string/jumbo v2, "recvPacketErr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string/jumbo v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    const-string/jumbo v0, "SYNC_EXP"

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    .line 201
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 199
    invoke-static {v0, v2, v1, v3, v4}, Lcom/alipay/mobile/rome/syncservice/e/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 117
    :cond_1
    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_2

    .line 118
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v0, Lcom/squareup/wire/Wire;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 122
    const/4 v2, 0x3

    array-length v3, p1

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 123
    const-class v3, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;

    .line 122
    invoke-virtual {v0, v2, v3}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;

    .line 125
    new-instance v2, Lcom/alipay/mobile/rome/syncservice/sync/c;

    invoke-direct {v2}, Lcom/alipay/mobile/rome/syncservice/sync/c;-><init>()V

    .line 126
    iget-object v3, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->user_id:Ljava/lang/String;

    .line 130
    iget-object v4, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->ack_msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

    .line 132
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 133
    const-string/jumbo v6, "mk"

    iget-object v7, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->mk:Ljava/lang/Long;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string/jumbo v6, "mId"

    iget-object v7, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->m_id:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string/jumbo v6, "appId"

    iget-object v7, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->app_id:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string/jumbo v6, "st"

    iget-object v7, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->st:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string/jumbo v6, "isSc"

    iget-object v7, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->sc:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string/jumbo v6, "ext"

    iget-object v4, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->ext:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    iget-object v4, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->biz_type:Ljava/lang/String;

    iput-object v4, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    .line 143
    const-string/jumbo v4, ""

    iput-object v4, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->g:Ljava/lang/String;

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "["

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    .line 145
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->h:Z

    .line 146
    const-string/jumbo v4, ""

    iput-object v4, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    .line 147
    iget-object v0, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->sync_key:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    .line 148
    iput-object v3, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 150
    const-string/jumbo v0, "SyncMsgReceiver2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "recvSyncMsg: [ mdJson="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->dispatchSyncPacket(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;Ljava/util/ArrayList;)I

    goto/16 :goto_0

    .line 155
    :cond_2
    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_3

    .line 156
    const-string/jumbo v0, "SyncMsgReceiver2"

    const-string/jumbo v1, "recvSyncMsg 1005, we needn\'t to handle it."

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_3
    const/16 v1, 0x138a

    if-ne v0, v1, :cond_7

    .line 159
    new-instance v0, Lcom/squareup/wire/Wire;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 160
    const/4 v1, 0x3

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 162
    const-class v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode5002;

    .line 160
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode5002;

    .line 163
    iget-object v1, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode5002;->ack_msg:Ljava/util/List;

    .line 164
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    :cond_4
    const-string/jumbo v0, "SyncMsgReceiver2"

    const-string/jumbo v1, "processPacket: ackMsgList is null or size 0 "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v3, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "processPacket 5002 size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 185
    const-string/jumbo v1, "SyncMsgReceiver2"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->a()Lcom/alipay/mobile/rome/syncservice/d/a;

    iget-object v0, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode5002;->seq:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(ILjava/util/List;)V

    goto/16 :goto_0

    .line 171
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncAck;

    .line 173
    new-instance v5, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    invoke-direct {v5}, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;-><init>()V

    .line 174
    iget-object v6, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncAck;->biz_type:Ljava/lang/String;

    iput-object v6, v5, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->biz:Ljava/lang/String;

    .line 175
    iget-object v1, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncAck;->cmk:Ljava/lang/String;

    iput-object v1, v5, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    .line 177
    iget-object v1, v5, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    const-string/jumbo v6, "_"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 178
    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Lcom/alipay/mobile/rome/syncservice/e/a;->a(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->e:J

    .line 179
    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->d:I

    .line 180
    const/4 v6, 0x2

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->a:J

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " ["

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->biz:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v5, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ")]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 188
    :cond_7
    const-string/jumbo v1, "SyncMsgReceiver2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket: unkown sOpcode [ sOpcode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
