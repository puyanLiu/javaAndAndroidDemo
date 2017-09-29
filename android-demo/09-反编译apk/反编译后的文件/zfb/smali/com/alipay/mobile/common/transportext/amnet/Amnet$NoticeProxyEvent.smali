.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private stamp:J

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V
    .locals 2

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1441
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    .line 1442
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;->stamp:J

    .line 1443
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1448
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    .line 1449
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;->identification()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getGroup()[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 1451
    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getAddr()[Ljava/lang/String;

    move-result-object v7

    .line 1452
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;->stamp:J

    aget-object v4, v7, v9

    aget-object v5, v7, v10

    aget-object v6, v7, v11

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

    move-result-object v1

    const-string/jumbo v2, "connect"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0, v11}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)V

    .line 1455
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 1457
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0, v10, v9}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 1463
    :cond_0
    :goto_0
    return-void

    .line 1460
    :cond_1
    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    goto :goto_0
.end method
