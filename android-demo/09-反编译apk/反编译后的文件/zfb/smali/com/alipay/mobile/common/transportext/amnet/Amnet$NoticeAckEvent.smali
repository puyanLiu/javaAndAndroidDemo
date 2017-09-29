.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private seq:J

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JJ)V
    .locals 0

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1556
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    .line 1557
    iput-wide p5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->seq:J

    .line 1558
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 1563
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 1564
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->identification()J

    move-result-wide v3

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 1565
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 1566
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1567
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    .line 1570
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 1573
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    .line 1574
    iget-wide v3, v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->sequence:J

    iget-wide v5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->seq:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 1575
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1576
    if-nez v0, :cond_3

    .line 1577
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v2, "data-package"

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I

    move-result v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2900(I)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    .line 1602
    :cond_3
    :goto_0
    return-void

    .line 1585
    :cond_4
    if-eqz v0, :cond_5

    .line 1586
    const/4 v0, 0x0

    .line 1587
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v4, "data-package"

    invoke-static {v3, v1, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 1590
    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v4, "-AMNET-DATA"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "No."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->sequence:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " is acknowledged."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 1596
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1599
    :cond_6
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    goto :goto_0
.end method
