.class Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;
.super Ljava/util/Observable;
.source "NetworkTunnelStrategy.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;->this$0:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;->setChanged()V

    .line 451
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 452
    return-void
.end method
