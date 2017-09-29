.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cache:[B

.field private rtt0:Z

.field private session:[B

.field private stamp:J

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JZ[B[B)V
    .locals 2

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1285
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    .line 1286
    iput-object p6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->session:[B

    .line 1287
    iput-object p7, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->cache:[B

    .line 1288
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->stamp:J

    .line 1289
    iput-boolean p5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->rtt0:Z

    .line 1290
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1295
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 1296
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1297
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 1298
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 1299
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->session:[B

    if-eqz v3, :cond_0

    .line 1300
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v4, "-AMNET-SSL"

    const-string/jumbo v5, "The session ticket will be saved."

    invoke-static {v3, v8, v4, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 1303
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Storage;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->session:[B

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->putSecure(Ljava/lang/String;[B)V

    .line 1306
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->cache:[B

    if-eqz v3, :cond_1

    .line 1307
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v4, "-AMNET-SSL"

    const-string/jumbo v5, "The MTLS cache will be saved."

    invoke-static {v3, v8, v4, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 1310
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Storage;

    move-result-object v3

    const-string/jumbo v4, "/mtls-cache"

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->cache:[B

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->putCommon(Ljava/lang/String;[B)V

    .line 1313
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

    move-result-object v4

    const-string/jumbo v5, "connect"

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 1314
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)V

    .line 1316
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getSeparatingRpt()Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    move-result-object v3

    .line 1317
    iget-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->stamp:J

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2200(J)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->msSsl:D

    .line 1318
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->rtt0:Z

    iput-boolean v0, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->fast:Z

    .line 1320
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)J

    move-result-wide v4

    sub-long v0, v1, v4

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2200(J)D

    move-result-wide v4

    .line 1321
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    move-result-object v0

    const-string/jumbo v1, "native SSL handshake"

    iget-wide v6, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->msSsl:D

    invoke-interface {v0, v1, v6, v7}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->report(Ljava/lang/String;D)V

    .line 1322
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    move-result-object v0

    const-string/jumbo v1, "JVM SSL handshake"

    invoke-interface {v0, v1, v4, v5}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->report(Ljava/lang/String;D)V

    .line 1323
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    move-result-object v2

    const-string/jumbo v6, "0-RTT"

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->rtt0:Z

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {v2, v6, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->report(Ljava/lang/String;D)V

    .line 1326
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "-AMNET-LINK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "The native SSL handshaking takes "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->msSsl:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms. The JAVA SSL handshaking takes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v8, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 1336
    :cond_2
    :goto_1
    return-void

    .line 1323
    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 1333
    :cond_4
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    goto :goto_1
.end method
