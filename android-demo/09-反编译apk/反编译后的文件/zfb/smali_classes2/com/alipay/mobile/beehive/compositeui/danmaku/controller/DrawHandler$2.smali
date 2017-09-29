.class Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;
.source "DrawHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Danmaku_UpdateThread"


# instance fields
.field private isWaited:Z

.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    .line 411
    invoke-direct {p0, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;-><init>(Ljava/lang/String;)V

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->isWaited:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xa

    const-wide/16 v10, 0x1

    const/4 v9, 0x1

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 420
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->isQuited()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$2(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 470
    :cond_0
    return-void

    .line 421
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 423
    iget-object v6, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-static {v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$3(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 424
    cmp-long v4, v4, v10

    if-lez v4, :cond_2

    .line 425
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$4(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;J)J

    move-result-wide v0

    .line 430
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    .line 431
    const-wide/16 v4, 0x3c

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    move-wide v0, v2

    .line 432
    goto :goto_0

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$5(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/IDanmakuViewController;->drawDanmakus()J

    .line 447
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->isWaited:Z

    if-eqz v0, :cond_4

    .line 448
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->isWaited:Z

    .line 452
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$6(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 453
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Danmaku_UpdateThread"

    const-string/jumbo v4, "wait rendering for INDEFINITE_TIME because danmakus is not visible"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    const-wide/32 v4, 0x989680

    invoke-static {v0, v4, v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$7(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;J)V

    .line 456
    iput-boolean v9, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->isWaited:Z

    move-wide v0, v2

    goto :goto_0

    .line 457
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$8(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$9(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 458
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$8(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v0

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$10(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v4

    iget-wide v4, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v0, v4

    .line 459
    const-wide/16 v4, 0x1f4

    cmp-long v4, v0, v4

    if-lez v4, :cond_6

    .line 460
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "Danmaku_UpdateThread"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "wait rendering for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    sub-long v7, v0, v12

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 462
    const-string/jumbo v7, "ms because nothing rendered in last frame. now="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 460
    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;

    sub-long/2addr v0, v12

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;->access$7(Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler;J)V

    .line 466
    iput-boolean v9, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHandler$2;->isWaited:Z

    :cond_6
    move-wide v0, v2

    goto/16 :goto_0
.end method
