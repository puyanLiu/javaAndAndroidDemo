.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# static fields
.field private static final TLS_MODE_COMPATIBLE:I = 0x0

.field private static final TLS_MODE_MODERN:I = 0x1

.field private static final TLS_MODE_NULL:I = -0x1


# instance fields
.field private final address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

.field private final dns:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns;

.field private hasNextProxy:Z

.field private lastInetSocketAddress:Ljava/net/InetSocketAddress;

.field private lastProxy:Ljava/net/Proxy;

.field private netContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

.field private nextSocketAddressIndex:I

.field private nextTlsMode:I

.field private final pool:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

.field private final postponedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/Route;",
            ">;"
        }
    .end annotation
.end field

.field private final proxySelector:Ljava/net/ProxySelector;

.field private proxySelectorProxies:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private final routeDatabase:Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;

.field private selectorID:Ljava/lang/String;

.field private socketAddresses:[Ljava/net/InetAddress;

.field private socketPort:I

.field private final uri:Ljava/net/URI;

.field private userSpecifiedProxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Address;Ljava/net/URI;Ljava/net/ProxySelector;Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns;Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextTlsMode:I

    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    .line 97
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->uri:Ljava/net/URI;

    .line 98
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->proxySelector:Ljava/net/ProxySelector;

    .line 99
    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->pool:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    .line 100
    iput-object p5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->dns:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns;

    .line 101
    iput-object p6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->routeDatabase:Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    .line 103
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->selectorID:Ljava/lang/String;

    .line 104
    iput-object p7, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->netContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 106
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->resetNextProxy(Ljava/net/URI;Ljava/net/Proxy;)V

    .line 107
    return-void
.end method

.method private hasNextInetSocketAddress()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->socketAddresses:[Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNextPostponed()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNextProxy()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->hasNextProxy:Z

    return v0
.end method

.method private hasNextTlsMode()Z
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextTlsMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 4

    .prologue
    .line 303
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->socketAddresses:[Ljava/net/InetAddress;

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextSocketAddressIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextSocketAddressIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->socketPort:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 314
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextSocketAddressIndex:I

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->socketAddresses:[Ljava/net/InetAddress;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 315
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->socketAddresses:[Ljava/net/InetAddress;

    .line 316
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextSocketAddressIndex:I

    .line 319
    :cond_0
    return-object v0
.end method

.method private nextPostponed()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    return-object v0
.end method

.method private nextProxy()Ljava/net/Proxy;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->userSpecifiedProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    .line 228
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->hasNextProxy:Z

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->userSpecifiedProxy:Ljava/net/Proxy;

    .line 242
    :goto_0
    return-object v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->proxySelectorProxies:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->proxySelectorProxies:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->proxySelectorProxies:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    goto :goto_0

    .line 241
    :cond_1
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->hasNextProxy:Z

    .line 242
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0
.end method

.method private nextTlsMode()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 335
    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextTlsMode:I

    if-ne v2, v0, :cond_0

    .line 336
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextTlsMode:I

    .line 340
    :goto_0
    return v0

    .line 338
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextTlsMode:I

    if-nez v0, :cond_1

    .line 339
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextTlsMode:I

    move v0, v1

    .line 340
    goto :goto_0

    .line 342
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private resetNextInetSocketAddress(Ljava/net/Proxy;)V
    .locals 4

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->socketAddresses:[Ljava/net/InetAddress;

    .line 250
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->uri:Ljava/net/URI;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->getEffectivePort(Ljava/net/URI;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->socketPort:I

    .line 265
    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->setSocketAddresses(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextSocketAddressIndex:I

    .line 268
    return-void

    .line 254
    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 255
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1

    .line 256
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_1
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 261
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->socketPort:I

    move-object v0, v1

    goto :goto_0
.end method

.method private resetNextProxy(Ljava/net/URI;Ljava/net/Proxy;)V
    .locals 3

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->hasNextProxy:Z

    .line 190
    if-eqz p2, :cond_2

    .line 191
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 192
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->userSpecifiedProxy:Ljava/net/Proxy;

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    const-string/jumbo v2, "RouteSelector First no proxy direct strategy"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->proxySelectorProxies:Ljava/util/Iterator;

    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->proxySelectorProxies:Ljava/util/Iterator;

    goto :goto_0
.end method

.method private resetNextTlsMode()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextTlsMode:I

    .line 326
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSocketAddresses(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->netContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->netContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "DNS_TIME"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V

    .line 283
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->ipToBytesByReg(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->socketAddresses:[Ljava/net/InetAddress;

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->netContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->netContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "DNS_TIME"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    .line 293
    :cond_1
    return-void

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->dns:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->socketAddresses:[Ljava/net/InetAddress;

    goto :goto_0
.end method


# virtual methods
.method public final connectFailed(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;Ljava/io/IOException;)V
    .locals 4

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->proxySelector:Ljava/net/ProxySelector;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->proxySelector:Ljava/net/ProxySelector;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->routeDatabase:Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;->failed(Lcom/alipay/mobile/common/transportext/biz/spdy/Route;Ljava/io/IOException;)V

    .line 185
    return-void
.end method

.method public final getLastInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public final getSelectorID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->selectorID:Ljava/lang/String;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->hasNextTlsMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->hasNextPostponed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next(Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 125
    :goto_0
    const-string/jumbo v0, "MWALLET_SPDY_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5f53\u524dpool\u4e2d\u7684\u8fde\u63a5\u6570\u91cf\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->pool:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->getConnectionCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->pool:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->get(Lcom/alipay/mobile/common/transportext/biz/spdy/Address;)Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 129
    const-string/jumbo v2, "GET"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    :cond_0
    :goto_2
    return-object v0

    .line 131
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->close()V

    goto :goto_1

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->pool:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->getConnectionCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 135
    const-string/jumbo v0, "MWALLET_SPDY_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u62a5\u8b66: \u5373\u5c06\u521b\u5efa\u7b2c\u5927\u4e8e1\u4e2a\u7684Connection\u5bf9\u8c61\u3002\u5f53\u524dpool\u4e2d\u7684\u8fde\u63a5\u6570\u91cf\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->pool:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->getConnectionCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->hasNextTlsMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 142
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_6

    .line 143
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_5

    .line 144
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->hasNextPostponed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 145
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 147
    :cond_4
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextPostponed()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Route;)V

    goto :goto_2

    .line 149
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextProxy()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->resetNextInetSocketAddress(Ljava/net/Proxy;)V

    .line 152
    :cond_6
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 153
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->resetNextTlsMode()V

    .line 156
    :cond_7
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->nextTlsMode()I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    .line 157
    :goto_3
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Z)V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->routeDatabase:Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;->shouldPostpone(Lcom/alipay/mobile/common/transportext/biz/spdy/Route;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 156
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 170
    :cond_9
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Route;)V

    goto/16 :goto_2
.end method
