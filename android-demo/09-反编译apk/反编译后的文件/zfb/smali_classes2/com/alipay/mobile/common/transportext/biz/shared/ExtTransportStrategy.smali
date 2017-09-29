.class public final Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;
.super Ljava/lang/Object;
.source "ExtTransportStrategy.java"


# static fields
.field public static final EXT_PROTO_MRPC:Ljava/lang/String; = "mrpc"

.field public static final EXT_PROTO_SPDY:Ljava/lang/String; = "spdy"

.field private static SPDY_URL:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "ExtTransportStrategy"

.field public static final UNI_DOMAIN_API:Ljava/lang/String; = "alipay.unidomain"

.field private static useSpdyShortReadTimeout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->useSpdyShortReadTimeout:Z

    .line 237
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->SPDY_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configInit(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseAmnet()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseSpdy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseAmnet()Z

    move-result v0

    .line 220
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "mrpc"

    :goto_1
    invoke-static {v1, v0, p1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->fillCurrentReqInfo(ZLjava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 223
    iget-object v0, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    invoke-static {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getSpdyUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->callUrl:Ljava/lang/String;

    .line 226
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isUseExtTransport(Lcom/alipay/mobile/common/transport/context/TransportContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->use:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ExtTransportStrategy"

    const-string/jumbo v1, "\u7f51\u7edc\u914d\u7f6e\u521d\u59cb\u5316\u65f6\u53d1\u751f\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_3
    :try_start_1
    const-string/jumbo v0, "spdy"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static final getConfigureManager()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .locals 1

    .prologue
    .line 276
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    return-object v0
.end method

.method public static getConnFailMaxTime()I
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getConnFailMaxTime()I

    move-result v0

    return v0
.end method

.method public static getPing2GInterval()J
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SECOND_GEN_PING_INTERVAL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPing3GInterval()J
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->THIRD_GEN_PING_INTERVAL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPingDefaulInterval()J
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->PING_DEFAULT_INTERVAL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getPingInterval(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 132
    if-nez p0, :cond_0

    .line 133
    const-string/jumbo v0, "ExtTransportStrategy"

    const-string/jumbo v1, "context is null. reivew code please !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getPingDefaulInterval()J

    move-result-wide v0

    .line 156
    :goto_0
    return-wide v0

    .line 138
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 140
    const-string/jumbo v1, "ExtTransportStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getPingInterval networkType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getPingDefaulInterval()J

    move-result-wide v0

    goto :goto_0

    .line 145
    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getPing2GInterval()J

    move-result-wide v0

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getPing3GInterval()J

    move-result-wide v0

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getPingWifiInterval()J

    move-result-wide v0

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getPingTimeOut()J
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->PING_TIME_OUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPingWifiInterval()J
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->WIFI_PING_INTERVAL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getReconnectionMaxCount()J
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RECONN_MAX_COUNT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSpdyShortTimeout()I
    .locals 2

    .prologue
    .line 295
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SHORT_TIME_OUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    return v0
.end method

.method public static getSpdyUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getConfigureManager()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    .line 250
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->SPDY_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->SPDY_URL:Ljava/lang/String;

    goto :goto_0

    .line 254
    :cond_1
    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    .line 256
    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->SPDY_URL:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isDowngradeTLS()Z
    .locals 3

    .prologue
    .line 189
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 190
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DOWNGRADE_TLS_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLongLinkSpdySwitchOn()Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isLongLinkSpdySwitchOn()Z

    move-result v0

    return v0
.end method

.method public static isSimpleVerifyAltsMode()Z
    .locals 3

    .prologue
    .line 194
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->VERIFY_ALTS_MODE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isSupportAmnetResend(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    .line 281
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_RESEND_APIS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 286
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 287
    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    const/4 v0, 0x1

    goto :goto_0

    .line 286
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isUniDomainLoad(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/NetCallGrapher;)Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public static isUseSpdyShortReadTimeout()Z
    .locals 1

    .prologue
    .line 299
    sget-boolean v0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->useSpdyShortReadTimeout:Z

    return v0
.end method

.method public static declared-synchronized setNetTypeAmtpBizError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 273
    const-class v0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static setUseSpdyShortReadTimeout(Z)V
    .locals 0

    .prologue
    .line 303
    sput-boolean p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->useSpdyShortReadTimeout:Z

    .line 304
    return-void
.end method

.method public static stopPingSent()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    return-void
.end method
