.class Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;
.super Ljava/lang/Object;
.source "AmnetLinkStrategy.java"

# interfaces
.implements Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;->this$0:Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseAmnet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    const-string/jumbo v0, "AmnetLinkStrategy"

    const-string/jumbo v1, "Can\'t use amnet, return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;->this$0:Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    invoke-static {v0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->access$0(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;)Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SMART_HEARTBEAT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;->this$0:Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    invoke-static {v1}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->access$0(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;)Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_ORTT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;->this$0:Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    invoke-static {v2}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->access$0(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;)Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_DELAY_HANDSHAKE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    .line 114
    iget-object v3, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;->this$0:Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    invoke-static {v3}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->access$1(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;->this$0:Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    invoke-static {v3, v0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->access$2(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;->this$0:Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->notifySwitchSmartHeartBeat()V

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;->this$0:Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    invoke-static {v0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->access$3(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;->this$0:Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->access$4(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;->this$0:Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->notifySwitchOrtt()V

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;->this$0:Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    invoke-static {v0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->access$5(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;->this$0:Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    invoke-static {v0, v2}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->access$6(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;->this$0:Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->notifySwitchDelayHandshake()V

    goto :goto_0
.end method
