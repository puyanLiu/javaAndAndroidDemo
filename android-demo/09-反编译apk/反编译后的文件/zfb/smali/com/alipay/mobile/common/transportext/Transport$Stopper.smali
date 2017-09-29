.class Lcom/alipay/mobile/common/transportext/Transport$Stopper;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

.field private num:J

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/Transport;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/Transport;JLcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/Transport$Stopper;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-wide p2, p0, Lcom/alipay/mobile/common/transportext/Transport$Stopper;->num:J

    .line 340
    if-nez p4, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/Transport;->access$200(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/Transport$Result;

    move-result-object p4

    :cond_0
    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/Transport$Stopper;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    .line 341
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Stopper;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/Transport;->access$300(Lcom/alipay/mobile/common/transportext/Transport;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Stopper;->num:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->inactivate()V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Stopper;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    .line 351
    return-void
.end method
