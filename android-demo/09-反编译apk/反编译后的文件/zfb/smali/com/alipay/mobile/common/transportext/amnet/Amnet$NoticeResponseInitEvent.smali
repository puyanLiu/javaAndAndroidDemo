.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private delay:I

.field private json:Ljava/lang/String;

.field private rsnd:I

.field private state:I

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JIIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1642
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    .line 1643
    iput p5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->state:I

    .line 1644
    iput p6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->rsnd:I

    .line 1645
    iput p7, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->delay:I

    .line 1646
    iput-object p8, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->json:Ljava/lang/String;

    .line 1647
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1652
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v5

    .line 1653
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->identification()J

    move-result-wide v0

    invoke-interface {v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 1654
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    if-eq v5, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    if-ne v5, v0, :cond_11

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    if-ne v5, v0, :cond_7

    .line 1656
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    .line 1674
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->rsnd:I

    if-ne v0, v7, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1675
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 1676
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1677
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3802(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)I

    .line 1683
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0, v7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3602(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Z)Z

    move v0, v6

    .line 1705
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1706
    invoke-interface {v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getSeparatingRpt()Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    move-result-object v1

    .line 1707
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)J

    move-result-wide v8

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2200(J)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->msFirst:D

    .line 1708
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    move-result-object v2

    const-string/jumbo v3, "first frame"

    iget-wide v8, v1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->msFirst:D

    invoke-interface {v2, v3, v8, v9}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->report(Ljava/lang/String;D)V

    .line 1712
    :cond_4
    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 1713
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x2

    const-string/jumbo v2, "-AMNET-LINK-LIMIT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "I will reconnect after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->delay:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-second."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 1718
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->delay:I

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->json:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string/jumbo v0, "{}"

    :goto_2
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->restrict(ILjava/lang/String;)V

    .line 1720
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "4"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 1721
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0, v6, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 1722
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;

    move-result-object v1

    const-string/jumbo v2, "reconnect"

    iget v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->delay:I

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2900(I)J

    move-result-wide v3

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1723
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    move v0, v6

    .line 1738
    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    .line 1739
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 1740
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0, v7, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 1746
    :cond_6
    :goto_4
    return-void

    .line 1658
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    move-result-object v0

    .line 1659
    :goto_5
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1, v7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3402(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)I

    .line 1660
    if-eqz v0, :cond_9

    move v1, v6

    .line 1661
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_9

    .line 1662
    aget-object v2, v0, v1

    iput v6, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->count:I

    .line 1661
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1658
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    move-result-object v0

    goto :goto_5

    .line 1666
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v6

    .line 1667
    :goto_7
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1668
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    move-result-object v1

    aget-object v1, v1, v0

    iput v6, v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->count:I

    .line 1667
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1679
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4002(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)I

    goto/16 :goto_0

    .line 1684
    :cond_b
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->rsnd:I

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1686
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3602(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Z)Z

    .line 1687
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    .line 1689
    invoke-interface {v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getSsl()I

    move-result v0

    .line 1690
    if-eq v0, v4, :cond_12

    if-eqz v0, :cond_12

    move v0, v7

    .line 1694
    :goto_8
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 1695
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1696
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3902(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)I

    .line 1697
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3802(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)I

    goto/16 :goto_1

    .line 1699
    :cond_c
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4102(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)I

    .line 1700
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4002(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)I

    goto/16 :goto_1

    .line 1718
    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->json:Ljava/lang/String;

    goto/16 :goto_2

    .line 1726
    :cond_e
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1727
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1, v7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4302(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Z)Z

    .line 1728
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->establish()V

    .line 1731
    :cond_f
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->state:I

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1733
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 1734
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0, v7, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    :cond_10
    move v0, v6

    goto/16 :goto_3

    .line 1743
    :cond_11
    invoke-interface {v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    goto/16 :goto_4

    :cond_12
    move v0, v6

    goto :goto_8

    :cond_13
    move v0, v6

    goto/16 :goto_1
.end method
