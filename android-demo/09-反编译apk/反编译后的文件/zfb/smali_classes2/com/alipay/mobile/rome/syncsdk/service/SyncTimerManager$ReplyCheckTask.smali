.class Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;
.super Ljava/lang/Object;
.source "SyncTimerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public delay:I

.field public sendTimeMillis:J

.field final synthetic this$0:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;Ljava/lang/String;JI)V
    .locals 1

    .prologue
    .line 361
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->delay:I

    .line 362
    iput-object p2, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->type:Ljava/lang/String;

    .line 363
    iput-wide p3, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->sendTimeMillis:J

    .line 364
    iput p5, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->delay:I

    .line 365
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 370
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ReplyCheckTask[ type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ sendTimeMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 371
    iget-wide v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->sendTimeMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->delay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v2

    .line 375
    if-nez v2, :cond_1

    .line 376
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ReplyCheckTask: [ connManager=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    const-string/jumbo v0, "typeHeartBeat"

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLastRecvHeartBeatTime()J

    move-result-wide v0

    .line 392
    :goto_1
    iget-wide v3, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->sendTimeMillis:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 393
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ReplyCheckTask: Reply check Timeout[ type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 394
    const-string/jumbo v5, " ][ sendTimeMillis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->sendTimeMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ lastTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 395
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v3, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    const-string/jumbo v1, "replyTimeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " delay:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->delay:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string/jumbo v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "spdy"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 406
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->d()V

    .line 409
    const-string/jumbo v1, "EXP_SPDY"

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v5

    .line 409
    invoke-static {v1, v3, v0, v4, v5}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitorExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 422
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->addFailCount()V

    .line 425
    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->reconnect()V

    goto/16 :goto_0

    .line 384
    :cond_2
    const-string/jumbo v0, "typeInit"

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLastRecvInitReplyTime()J

    move-result-wide v0

    goto/16 :goto_1

    .line 387
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ReplyCheckTask: [ unknown type ][ type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    :cond_4
    const-string/jumbo v1, "EXP_LL"

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 418
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v5

    .line 415
    invoke-static {v1, v3, v0, v4, v5}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitorExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method
