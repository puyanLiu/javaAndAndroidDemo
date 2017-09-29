.class public Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;
.super Ljava/lang/Object;
.source "NetworkTunnelStrategy.java"


# static fields
.field public static final TUNNEL_TYPE_AMNET:I = 0x3

.field public static final TUNNEL_TYPE_ORIGINAL:I = 0x1

.field public static final TUNNEL_TYPE_SPDY:I = 0x2

.field private static a:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;


# instance fields
.field private b:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

.field private c:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;

.field private d:I

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    .line 61
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getConfigureChangedListener()Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->addConfigureChangedListener(Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;)V

    .line 62
    return-void
.end method

.method private a()I
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->f:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Strat_NetworkChannelStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isEnabledAmnet is true, utdid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_9

    .line 148
    const/4 v0, 0x3

    .line 155
    :cond_0
    :goto_2
    return v0

    .line 147
    :cond_1
    const-string/jumbo v2, "Strat_NetworkChannelStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isEnabledAmnet is false, utdid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_BLACK_LIST_PHONE_BRAND:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_BLACK_LIST_PHONE_MODEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_BLACK_LIST_CPU_MODEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:Landroid/content/Context;

    if-nez v2, :cond_4

    const-string/jumbo v2, "Strat_NetworkChannelStrategy"

    const-string/jumbo v3, "mContext is null. so return false"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_3
    if-nez v2, :cond_6

    move v2, v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_DISABLED_NET_KEY:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4Net(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_3

    :cond_5
    move v2, v0

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_DISABLED_SDK_VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4SdkVersion(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v1

    :goto_4
    if-nez v2, :cond_8

    move v2, v1

    goto :goto_1

    :cond_7
    move v2, v0

    goto :goto_4

    :cond_8
    move v2, v0

    goto :goto_1

    .line 151
    :cond_9
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getConfigureManager()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v2, v1

    :goto_5
    if-nez v2, :cond_d

    :cond_b
    :goto_6
    if-eqz v1, :cond_0

    .line 152
    const/4 v0, 0x2

    goto/16 :goto_2

    :cond_c
    move v2, v0

    .line 151
    goto :goto_5

    :cond_d
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_BLACK_LIST_PHONE_BRAND:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_BLACK_LIST_PHONE_MODEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_BLACK_LIST_CPU_MODEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "Strat_NetworkChannelStrategy"

    const-string/jumbo v3, "isUseSpdy4Devices == false"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:Landroid/content/Context;

    if-nez v2, :cond_f

    move v2, v1

    :goto_7
    if-eqz v2, :cond_b

    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_DISABLED_SDK_VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4SdkVersion(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    move v2, v1

    :goto_8
    if-eqz v2, :cond_b

    move v1, v0

    goto :goto_6

    :cond_f
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_DISABLED_NET_KEY:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4Net(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_7

    :cond_10
    move v2, v0

    goto :goto_7

    :cond_11
    move v2, v0

    goto :goto_8
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4Brand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    const-string/jumbo v1, "Strat_NetworkChannelStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isUse4Brand is false. brandBlackList=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4Model(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    const-string/jumbo v1, "Strat_NetworkChannelStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isUse4Brand is false. isUse4Model=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4Hardware(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 274
    const-string/jumbo v1, "Strat_NetworkChannelStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isUse4Hardware is false. cpuModelBackList=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)I
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->b()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    move-result-object v0

    return-object v0
.end method

.method private b()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->b:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;-><init>(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->b:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->b:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    return-object v0
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 55
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    .line 56
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    sget-object v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    goto :goto_0
.end method


# virtual methods
.method public addNetworkTunnelChangedListener(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;)V
    .locals 3

    .prologue
    .line 384
    const-string/jumbo v0, "Strat_NetworkChannelStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addNetworkTunnelChangedListener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->b()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;->addObserver(Ljava/util/Observer;)V

    .line 386
    return-void
.end method

.method public getConfigureChangedListener()Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->c:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;-><init>(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->c:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->c:Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkConfigureChangedListener;

    return-object v0
.end method

.method public final getConfigureManager()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .locals 1

    .prologue
    .line 366
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    return-object v0
.end method

.method public getConnFailMaxTime()I
    .locals 2

    .prologue
    .line 374
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 375
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->CONN_FAIL_MAX_TIMES:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->e:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->f:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->a()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    .line 68
    return-void
.end method

.method public isCanUseAmnet()Z
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanUseSpdy()Z
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 186
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongLinkSpdySwitchOn()Z
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseSpdy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    .line 107
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 108
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isOpenPushAmnetSwitch()Z
    .locals 3

    .prologue
    .line 421
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 422
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->EANBLE_PUSH_AMNET:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUse4Utdid(Ljava/lang/String;II)Z
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 81
    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->grayscaleUtdid(Ljava/lang/String;[I)Z

    move-result v0

    return v0
.end method

.method public isUseExtTransport(Lcom/alipay/mobile/common/transport/context/TransportContext;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    iget-object v2, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->OPERATION_TYPE_LIST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v5, ","

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValueList(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isUse4OperationType(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 124
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 120
    goto :goto_0

    :cond_2
    move v0, v1

    .line 124
    goto :goto_1
.end method

.method public notifyNetworkTunnelChangedEvent(I)V
    .locals 2

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->b()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;->notifyObservers(Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public removeNetworkTunnelChangedListener(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;)V
    .locals 1

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->b()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy$NetworkTunnelChangedObservible;->deleteObserver(Ljava/util/Observer;)V

    .line 394
    return-void
.end method
