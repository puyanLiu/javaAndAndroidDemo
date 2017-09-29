.class public Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;
.super Ljava/lang/Object;
.source "AmnetLinkStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AmnetLinkStrategy"


# instance fields
.field private delayHandshake:Ljava/lang/String;

.field private ortt:Ljava/lang/String;

.field private smartHeartBeatSwitch:Ljava/lang/String;

.field private transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->smartHeartBeatSwitch:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->ortt:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->delayHandshake:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    .line 41
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->init()V

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;)Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->smartHeartBeatSwitch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->smartHeartBeatSwitch:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->ortt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->ortt:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->delayHandshake:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->delayHandshake:Ljava/lang/String;

    return-void
.end method

.method public static final getInstance()Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SMART_HEARTBEAT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->smartHeartBeatSwitch:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_ORTT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->ortt:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_DELAY_HANDSHAKE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->delayHandshake:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    new-instance v1, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;

    invoke-direct {v1, p0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy$AmnetLinkConfigureChangedListener;-><init>(Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->addConfigureChangedListener(Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public isUseDelayHandshake()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->delayHandshake:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUseOrtt()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->ortt:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUseSmartHeartBeat()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->smartHeartBeatSwitch:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notifySwitchDelayHandshake()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    move-result-object v0

    .line 85
    check-cast v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    .line 87
    invoke-virtual {p0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->isUseDelayHandshake()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->notifySwitchDelayHandshake(I)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->notifySwitchDelayHandshake(I)V

    goto :goto_0
.end method

.method public notifySwitchOrtt()V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    move-result-object v0

    .line 75
    check-cast v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    .line 77
    invoke-virtual {p0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->isUseOrtt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->notifySwitchOrtt(I)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->notifySwitchOrtt(I)V

    goto :goto_0
.end method

.method public notifySwitchSmartHeartBeat()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    move-result-object v0

    .line 65
    check-cast v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    .line 67
    invoke-virtual {p0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->isUseSmartHeartBeat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->notifySwitchSmartHeartBeat(I)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->notifySwitchSmartHeartBeat(I)V

    goto :goto_0
.end method

.method public notifyUpdateAllDnsInfo()V
    .locals 3

    .prologue
    .line 96
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    move-result-object v0

    .line 95
    check-cast v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    .line 97
    const/4 v1, 0x3

    invoke-static {}, Lcom/alipay/pushsdk/util/a;->a()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getAmnetDnsInfos()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->notifyUpdateDnsInfo(BLjava/lang/String;)V

    .line 98
    return-void
.end method
