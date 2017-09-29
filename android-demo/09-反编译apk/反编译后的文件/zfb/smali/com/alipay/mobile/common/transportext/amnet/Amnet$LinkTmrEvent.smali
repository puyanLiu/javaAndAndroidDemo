.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private tcp:Z

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;JZ)V
    .locals 0

    .prologue
    .line 2057
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 2058
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;-><init>(J)V

    .line 2059
    iput-boolean p4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->tcp:Z

    .line 2060
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2065
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->identification()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;->identification()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x2

    const-string/jumbo v2, "-AMNET-TMR-LINK"

    const-string/jumbo v3, "I\'m the timer for measuring TCP connecting and SSL handshaking."

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 2070
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

    move-result-object v1

    const-string/jumbo v2, "connect"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 2072
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->tcp:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "TCP connecting."

    .line 2073
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2074
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->panic(ILjava/lang/String;)V

    .line 2079
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 2080
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    .line 2081
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    .line 2083
    :cond_0
    return-void

    .line 2072
    :cond_1
    const-string/jumbo v0, "SSL handshaking."

    goto :goto_0

    .line 2076
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v2

    invoke-static {v1, v2, v4, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    goto :goto_1
.end method
