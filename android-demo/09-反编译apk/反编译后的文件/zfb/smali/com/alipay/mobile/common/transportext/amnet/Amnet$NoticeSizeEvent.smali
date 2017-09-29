.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private end:J

.field private lenPkg:I

.field private lenRaw:I

.field private num:B

.field private rcpt:J

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JJBII)V
    .locals 2

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1510
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    .line 1511
    iput-wide p5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->rcpt:J

    .line 1512
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->end:J

    .line 1513
    iput-byte p7, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->num:B

    .line 1514
    iput p8, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->lenRaw:I

    .line 1515
    iput p9, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->lenPkg:I

    .line 1516
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 1522
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 1523
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 1524
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1525
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    .line 1528
    :cond_1
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->rcpt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1529
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->rcpt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1530
    if-eqz v0, :cond_2

    .line 1531
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    move-result-object v1

    const-string/jumbo v2, "native data send"

    iget-wide v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->end:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2200(J)D

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->report(Ljava/lang/String;D)V

    .line 1536
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/Map;

    move-result-object v0

    iget-byte v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->num:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Channel;

    .line 1537
    if-eqz v0, :cond_3

    .line 1538
    iget-wide v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->rcpt:J

    iget v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->lenRaw:I

    iget v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;->lenPkg:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Channel;->tell(JII)V

    .line 1544
    :cond_3
    :goto_0
    return-void

    .line 1541
    :cond_4
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    goto :goto_0
.end method
