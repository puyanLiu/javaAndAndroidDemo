.class Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;
.super Ljava/lang/Object;
.source "NetworkTunnelStrategy.java"

# interfaces
.implements Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 463
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->access$000(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 464
    const-string/jumbo v0, "Strat_NetworkChannelStrategy"

    const-string/jumbo v1, "Context is null. so dangerous!!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->access$100(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)I

    move-result v0

    .line 470
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->access$200(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->access$200(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)I

    move-result v1

    .line 472
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->access$202(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;I)I

    .line 474
    new-instance v2, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;-><init>()V

    .line 475
    iput v1, v2, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->currentTunnelType:I

    .line 476
    iput v0, v2, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->newTunnelType:I

    .line 477
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->access$300(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0
.end method
