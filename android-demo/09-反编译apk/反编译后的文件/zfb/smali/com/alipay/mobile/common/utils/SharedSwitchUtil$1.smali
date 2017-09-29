.class final Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;
.super Ljava/util/ArrayList;
.source "SharedSwitchUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    const-string/jumbo v0, "netsdk_normal_switch"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;->add(Ljava/lang/Object;)Z

    .line 59
    const-string/jumbo v0, "android_network_core"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;->add(Ljava/lang/Object;)Z

    .line 61
    const-string/jumbo v0, "spdy_uniformorigin_config"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method
