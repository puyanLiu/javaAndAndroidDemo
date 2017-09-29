.class Lcom/alipay/mobile/common/transportext/Transport$Alerter;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

.field private pmt:Lcom/alipay/mobile/common/transportext/Transport$Alerting;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/Transport;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$Alerting;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/Transport$Alerter;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/Transport$Alerter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Alerting;

    .line 419
    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/Transport;->access$200(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/Transport$Result;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/Transport$Alerter;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    .line 420
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Alerter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Alerting;

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Alerter;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    .line 435
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Alerter;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/Transport;->access$300(Lcom/alipay/mobile/common/transportext/Transport;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Alerter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Alerting;

    iget-wide v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Alerting;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 428
    if-nez v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Alerter;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Alerter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Alerting;

    iget-wide v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Alerting;->receipt:J

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/Transport$Alerter;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Alerting;

    iget-wide v3, v3, Lcom/alipay/mobile/common/transportext/Transport$Alerting;->duration:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->alert(JJ)V

    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Alerter;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    goto :goto_0
.end method
