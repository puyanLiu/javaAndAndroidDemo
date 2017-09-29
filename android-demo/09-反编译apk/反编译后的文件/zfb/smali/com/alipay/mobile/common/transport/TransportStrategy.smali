.class public Lcom/alipay/mobile/common/transport/TransportStrategy;
.super Ljava/lang/Object;
.source "TransportStrategy.java"


# static fields
.field public static final NET_CONTEXT:Ljava/lang/String; = "NET_CONTEXT"

.field public static final SWITCH_OPEN_STR:Ljava/lang/String; = "T"

.field public static final TAG:Ljava/lang/String; = "TransportStrategy"

.field private static a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "alipay.msp.cashier.dispatch.pb"

    aput-object v1, v0, v3

    const-string/jumbo v1, "alipay.mobile.bill.queryBillListPB"

    aput-object v1, v0, v4

    const-string/jumbo v1, "alipay.mobile.transfer.checkCertify"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "alipay.mobile.transfer.queryHistoryRecord"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "alipay.client.getRSAKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->a:[Ljava/lang/String;

    .line 42
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "10.0.0.172"

    aput-object v1, v0, v3

    const-string/jumbo v1, "10.0.0.200"

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/common/transport/TransportStrategy;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configInit(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    const-string/jumbo v0, "TransportStrategy"

    const-string/jumbo v1, "RPC TRANSPORT CONFIG INIT"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {p0, p2}, Lcom/alipay/mobile/common/transport/TransportStrategy;->fillNetTypes(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getConfigureManager()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MDAP_SEED1:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    iput v0, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->logRandom:I

    .line 138
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GZIP_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->reqGzip:Z

    .line 139
    iput-object p1, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->setInitd(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string/jumbo v1, "TransportStrategy"

    const-string/jumbo v2, "RPC\u7f51\u7edc\u914d\u7f6e\u521d\u59cb\u65f6\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static fillCurrentReqInfo(ZLjava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;-><init>()V

    .line 51
    iput-boolean p0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->use:Z

    .line 52
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    .line 53
    iput-object v0, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    .line 54
    return-void
.end method

.method public static fillNetTypes(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 1

    .prologue
    .line 186
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->net0:I

    .line 187
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->net1:I

    .line 188
    return-void
.end method

.method public static final getConfigureManager()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    return-object v0
.end method

.method public static final getConnTimeout(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->CONN_TIME_OUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    return v0
.end method

.method public static final getHandshakTimeout()I
    .locals 2

    .prologue
    .line 234
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->HANDSHAK_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    return v0
.end method

.method public static final getReadTimeout(Landroid/content/Context;)I
    .locals 5

    .prologue
    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 68
    if-nez p0, :cond_0

    .line 69
    const-string/jumbo v1, "TransportStrategy"

    const-string/jumbo v2, "context is null. reivew code please !"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->WIFI_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    .line 92
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 76
    const-string/jumbo v2, "TransportStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getReadTimeout networkType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    packed-switch v1, :pswitch_data_0

    .line 92
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->WIFI_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    goto :goto_0

    .line 81
    :pswitch_0
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SECOND_GEN_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    goto :goto_0

    .line 84
    :pswitch_1
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->THIRD_GEN_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    goto :goto_0

    .line 86
    :pswitch_2
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->WIFI_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final getStrategyVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isAlipayHost(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    const-string/jumbo v1, "mobilegw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "mobileapp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :cond_2
    const-string/jumbo v1, "alipay"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAlipayUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 198
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    .line 201
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isAlipayHost(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final isEnabledAmnet(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseAmnet()Z

    move-result v0

    return v0
.end method

.method public static isEnabledCacheAddress()Z
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->ENABLED_CACHE_ADDRESS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isEnabledRpcV2()Z
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPCV2_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string/jumbo v1, "T"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isMobileWapProxyIp(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 263
    sget-object v2, Lcom/alipay/mobile/common/transport/TransportStrategy;->b:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 264
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    const/4 v0, 0x1

    .line 268
    :cond_0
    return v0

    .line 263
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final isRpcCdnHost(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->CDN_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    :goto_0
    return v0

    .line 225
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final isSupportRetryRpc(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 254
    sget-object v1, Lcom/alipay/mobile/common/transport/TransportStrategy;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 255
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 259
    :goto_1
    return v0

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isLoginRpc(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method

.method public static loadConfig(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 154
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getConfigureManager()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->isLoadedConfig()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->updateConfig(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 162
    :goto_0
    return v0

    .line 158
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 160
    const-string/jumbo v2, "TransportStrategy"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
