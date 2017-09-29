.class public final Lcom/alipay/pushsdk/a/d;
.super Ljava/lang/Object;
.source "CtrlNormalConfigChangedEventImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/config/CtrlNormalConfigChangedEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyChanged()V
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->updateConfig(Landroid/content/Context;)Z

    .line 17
    const-string/jumbo v0, "PushCtrlNormalConfigChangedEvent"

    const-string/jumbo v1, "updateConfig.."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
