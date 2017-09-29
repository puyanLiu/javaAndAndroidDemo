.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeShutdownEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V
    .locals 0

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeShutdownEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1347
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    .line 1348
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeShutdownEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 1354
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeShutdownEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1355
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeShutdownEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeShutdownEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 1357
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeShutdownEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeShutdownEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 1365
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    .line 1360
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeShutdownEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeShutdownEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$802(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    goto :goto_0
.end method
