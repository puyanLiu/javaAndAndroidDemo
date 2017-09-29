.class Lcom/alipay/mobile/common/transportext/Transport$Detecter;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

.field private pmt:Lcom/alipay/mobile/common/transportext/Transport$Detecting;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/Transport;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$Detecting;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/Transport$Detecter;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/Transport$Detecter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Detecting;

    .line 445
    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/Transport;->access$200(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/Transport$Result;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/Transport$Detecter;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    .line 446
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Detecter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Detecting;

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Detecter;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    .line 461
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Detecter;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/Transport;->access$300(Lcom/alipay/mobile/common/transportext/Transport;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Detecter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Detecting;

    iget-wide v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Detecting;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 454
    if-nez v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Detecter;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    goto :goto_0

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Detecter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Detecting;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Detecting;->report:Lcom/alipay/mobile/common/transportext/amnet/NetTest;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->launch(Lcom/alipay/mobile/common/transportext/amnet/NetTest;)V

    .line 458
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Detecter;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    goto :goto_0
.end method
