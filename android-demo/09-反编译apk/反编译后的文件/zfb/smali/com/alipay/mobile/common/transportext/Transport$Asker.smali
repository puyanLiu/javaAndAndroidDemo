.class Lcom/alipay/mobile/common/transportext/Transport$Asker;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

.field private pmt:Lcom/alipay/mobile/common/transportext/Transport$Asking;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/Transport;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$Asking;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/Transport$Asker;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/Transport$Asker;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Asking;

    .line 471
    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/Transport;->access$200(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/Transport$Result;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/Transport$Asker;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    .line 472
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Asker;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Asking;

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Asker;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    .line 487
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Asker;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/Transport;->access$300(Lcom/alipay/mobile/common/transportext/Transport;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Asker;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Asking;

    iget-wide v1, v1, Lcom/alipay/mobile/common/transportext/Transport$Asking;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 480
    if-nez v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Asker;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    goto :goto_0

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Asker;->pmt:Lcom/alipay/mobile/common/transportext/Transport$Asking;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->query()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/Transport$Asking;->answer(I)V

    .line 484
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Asker;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    goto :goto_0
.end method
