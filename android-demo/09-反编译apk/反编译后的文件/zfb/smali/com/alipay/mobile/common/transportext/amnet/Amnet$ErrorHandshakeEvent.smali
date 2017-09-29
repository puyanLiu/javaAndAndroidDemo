.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1371
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V

    .line 1372
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1377
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 1378
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1379
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1380
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Storage;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->putSecure(Ljava/lang/String;[B)V

    .line 1381
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v2, 0x3

    const-string/jumbo v3, "-AMNET-ERR-SSL-INIT"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->information()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 1384
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->information()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    .line 1386
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "3"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 1387
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1389
    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    .line 1390
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$802(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    goto :goto_0
.end method
