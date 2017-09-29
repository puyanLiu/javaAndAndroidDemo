.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private data:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Data;)V
    .locals 0

    .prologue
    .line 1999
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 2000
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;-><init>(J)V

    .line 2001
    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->data:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    .line 2002
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 2007
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->identification()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->data:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->identification()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->data:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->cfrm:Z

    if-eqz v0, :cond_1

    .line 2009
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "-AMNET-TMR-DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "A data-package(No."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->data:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    iget-wide v3, v3, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->sequence:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") can not be confirmed in time."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 2014
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->data:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    const-string/jumbo v2, "data-package"

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I

    move-result v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2900(I)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    .line 2015
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0, v6, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 2031
    :cond_0
    :goto_0
    return-void

    .line 2019
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "-AMNET-TMR-DATA"

    const-string/jumbo v2, "A data-package can not be sent in time."

    invoke-static {v0, v5, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 2022
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$4900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2023
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->data:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    const-string/jumbo v2, "data-package"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 2025
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->data:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    iget-byte v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->channel:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Channel;

    .line 2026
    if-eqz v0, :cond_0

    .line 2027
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->data:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->header:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;->data:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->body:[B

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Channel;->recycle(Ljava/util/Map;[B)V

    goto :goto_0
.end method
