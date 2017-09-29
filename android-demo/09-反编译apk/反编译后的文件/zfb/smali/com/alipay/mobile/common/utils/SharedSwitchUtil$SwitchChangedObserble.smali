.class Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;
.super Ljava/util/Observable;
.source "SharedSwitchUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;->setChanged()V

    .line 190
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 191
    return-void
.end method
