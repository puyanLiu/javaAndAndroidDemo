.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmrEvent;
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
    .line 2090
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 2091
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;-><init>(J)V

    .line 2092
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2097
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmrEvent;->identification()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;->identification()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x1

    const-string/jumbo v2, "-AMNET-TMR-RETRY"

    const-string/jumbo v3, "I\'m the timer for waiting for reconnecting."

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 2101
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;

    move-result-object v1

    const-string/jumbo v2, "reconnect"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 2102
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2103
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    .line 2106
    :cond_0
    return-void
.end method
