.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private rtt:J

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JJ)V
    .locals 0

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1471
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    .line 1472
    iput-wide p5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;->rtt:J

    .line 1473
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1478
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 1479
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1480
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 1481
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1482
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    .line 1485
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    move-result-object v1

    const-string/jumbo v2, "heartbeat RTT"

    iget-wide v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;->rtt:J

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2200(J)D

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->report(Ljava/lang/String;D)V

    .line 1487
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1488
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->upIntelligentHb()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1489
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 1490
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 1497
    :cond_2
    :goto_0
    return-void

    .line 1494
    :cond_3
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    goto :goto_0
.end method
