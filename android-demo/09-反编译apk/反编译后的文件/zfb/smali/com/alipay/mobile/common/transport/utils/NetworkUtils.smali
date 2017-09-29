.class public Lcom/alipay/mobile/common/transport/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static final NETWORK_TYPE_2G:I = 0x1

.field public static final NETWORK_TYPE_3G:I = 0x2

.field public static final NETWORK_TYPE_4G:I = 0x4

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_INVALID:I = 0x0

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_WIFI:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 217
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 219
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileNetworkClass(I)I
    .locals 1

    .prologue
    .line 317
    packed-switch p0, :pswitch_data_0

    .line 337
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 323
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 333
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 335
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getMobileNetworkClass(Landroid/net/NetworkInfo;)I
    .locals 1

    .prologue
    .line 305
    if-nez p0, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getMobileNetworkClass(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getNetType(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 226
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 228
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 229
    if-nez v0, :cond_0

    .line 230
    const/4 v0, -0x1

    .line 231
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 165
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 167
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 170
    if-nez v2, :cond_0

    move v0, v1

    .line 180
    :goto_0
    return v0

    .line 173
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 174
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 175
    const/4 v0, 0x3

    goto :goto_0

    .line 176
    :cond_1
    if-nez v2, :cond_2

    .line 177
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getMobileNetworkClass(Landroid/net/NetworkInfo;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 180
    goto :goto_0
.end method

.method public static getProxy(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 195
    if-eqz v1, :cond_0

    .line 196
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 199
    :cond_0
    return-object v0
.end method

.method public static getProxyOfEnhanced(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getProxy(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 204
    if-nez v1, :cond_0

    .line 213
    :goto_0
    return-object v0

    .line 207
    :cond_0
    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isMobileWapProxyIp(Ljava/lang/String;)Z

    move-result v2

    .line 208
    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 210
    const-string/jumbo v2, "NetworkUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " The proxy ip is wap = ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "], but is now wifi network !"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 213
    goto :goto_0
.end method

.method public static final getTrustAllSslSocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 270
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/common/transport/utils/NetworkUtils$1;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils$1;-><init>()V

    .line 289
    const-string/jumbo v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 290
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v3, v4, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 291
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    const-string/jumbo v2, "NetworkUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static is2GMobileNetwork(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 152
    if-nez p0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static is3GMobileNetwork(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 125
    if-nez p0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static is3GMobileNetwork(Landroid/net/NetworkInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 139
    if-nez p0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getMobileNetworkClass(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static is4GMobileNetwork(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 111
    if-nez p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static is4GMobileNetwork(Landroid/net/NetworkInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 95
    if-nez p0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getMobileNetworkClass(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 240
    .line 242
    :try_start_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 244
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 245
    if-nez v2, :cond_0

    .line 258
    :goto_0
    return v1

    .line 248
    :cond_0
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 249
    if-eqz v4, :cond_1

    .line 250
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    const/4 v0, 0x1

    :goto_2
    move v1, v0

    .line 256
    goto :goto_0

    .line 248
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static isWiFiMobileNetwork(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    if-nez p0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
