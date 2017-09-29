.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmrEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;J)V
    .locals 0

    .prologue
    .line 2111
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 2112
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;-><init>(J)V

    .line 2113
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2118
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmrEvent;->identification()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmr;->identification()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x1

    const-string/jumbo v2, "-AMNET-TMR-HOLDING"

    const-string/jumbo v3, "I\'m the timer for measuring flash-connection."

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 2122
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmr;

    move-result-object v1

    const-string/jumbo v2, "link-holding"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 2123
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$PeriodTmr;

    move-result-object v1

    const-string/jumbo v2, "period"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 2124
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5102(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)I

    .line 2126
    :cond_0
    return-void
.end method
