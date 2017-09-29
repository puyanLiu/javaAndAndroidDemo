.class public Lcom/alipay/mobile/common/transport/http/HttpWorker;
.super Ljava/lang/Object;
.source "HttpWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/alipay/mobile/common/transport/Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lorg/apache/http/client/HttpRequestRetryHandler;

.field private static r:B


# instance fields
.field private b:Lorg/apache/http/client/methods/HttpUriRequest;

.field private c:Lorg/apache/http/protocol/HttpContext;

.field private d:Lorg/apache/http/client/CookieStore;

.field private e:Landroid/webkit/CookieManager;

.field private f:Lorg/apache/http/entity/AbstractHttpEntity;

.field private g:Lorg/apache/http/HttpHost;

.field private h:Ljava/net/URL;

.field private i:I

.field private j:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

.field protected mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

.field protected mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

.field mUrl:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:B

.field private q:B

.field private s:J

.field private t:I

.field private u:Lorg/apache/http/client/RedirectHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 222
    const/4 v0, -0x1

    sput-byte v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:B

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    .line 145
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d:Lorg/apache/http/client/CookieStore;

    .line 175
    iput v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i:I

    .line 182
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getInstance()Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    .line 188
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Z

    .line 193
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->l:Z

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:Ljava/lang/String;

    .line 206
    new-instance v0, Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 211
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o:J

    .line 214
    iput-byte v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->p:B

    .line 217
    iput-byte v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:B

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->s:J

    .line 233
    iput v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->t:I

    .line 249
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    .line 251
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->context:Landroid/content/Context;

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string/jumbo v2, "UUID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->rpcUUID:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getRedirectHandler()Lorg/apache/http/client/RedirectHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->u:Lorg/apache/http/client/RedirectHandler;

    .line 255
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1540
    .line 1542
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->getSerializable(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Serializable;
    :try_end_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1543
    :try_start_1
    instance-of v1, v2, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    if-eqz v1, :cond_0

    .line 1544
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    move-object v1, v0

    .line 1545
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getValue()[B

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;->get()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/security/Des;->decrypt([BLjava/lang/String;)[B

    move-result-object v4

    .line 1546
    if-nez v4, :cond_1

    .line 1548
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Ljava/lang/String;)V

    move-object v2, v3

    .line 1557
    :cond_0
    :goto_0
    return-object v2

    .line 1551
    :cond_1
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setValue([B)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1554
    :catch_0
    move-exception v1

    .line 1555
    :goto_1
    const-string/jumbo v3, "HttpWorker"

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1554
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method private a(Lorg/apache/http/HttpRequest;Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 5

    .prologue
    .line 845
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->u:Lorg/apache/http/client/RedirectHandler;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p3, v1}, Lorg/apache/http/client/RedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    .line 846
    if-nez v0, :cond_0

    .line 847
    return-object p3

    .line 850
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->t:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 851
    new-instance v0, Lorg/apache/http/client/RedirectException;

    const-string/jumbo v1, "Maximum redirects (5) exceeded"

    invoke-direct {v0, v1}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->t:I

    .line 858
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->u:Lorg/apache/http/client/RedirectHandler;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p3, v1}, Lorg/apache/http/client/RedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v1

    .line 861
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 867
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 868
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeaders([Lorg/apache/http/Header;)V

    .line 869
    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 872
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/mobile/common/transport/http/inner/HttpClientPlannerHelper;->determineRoute(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 873
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string/jumbo v4, "http.route.forced-route"

    invoke-interface {v3, v4, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 876
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p3

    .line 879
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    move-object p1, v0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 628
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    .line 1181
    if-nez v0, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1186
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 620
    const-string/jumbo v0, "HttpWorker"

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2, p0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 621
    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 937
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    .line 938
    const-string/jumbo v2, "rpcVersion"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "2"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    const-string/jumbo v0, "Result-Status"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 942
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "8001"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const/16 v2, 0x130

    const-string/jumbo v3, "Not Modified"

    invoke-interface {p1, v0, v2, v3}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 945
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 948
    :catch_0
    move-exception v0

    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    const-string/jumbo v3, "print headers:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .line 952
    array-length v4, v3

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 953
    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 955
    :cond_1
    const-string/jumbo v1, "HttpWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Illegal response. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lorg/apache/http/params/HttpParams;)V
    .locals 2

    .prologue
    .line 921
    const-string/jumbo v0, "http.route.default-proxy"

    sget-object v1, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 922
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 923
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->p:B

    .line 925
    :cond_0
    return-void
.end method

.method private a(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    .locals 3

    .prologue
    .line 928
    if-eqz p2, :cond_1

    const-string/jumbo v0, "PROXY"

    const-string/jumbo v1, "T"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TARGET_HOST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :goto_0
    const-string/jumbo v0, "http.route.default-proxy"

    invoke-interface {p1, v0, p2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 930
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 931
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->p:B

    .line 933
    :cond_0
    return-void

    .line 928
    :cond_1
    const-string/jumbo v0, "PROXY"

    const-string/jumbo v1, "F"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()Lorg/apache/http/HttpResponse;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 691
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->getInstance()Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    move-result-object v0

    const-string/jumbo v1, "rpc"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getInvokeStartTimeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 694
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c()Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 695
    if-eqz v0, :cond_4

    .line 718
    :goto_1
    return-object v0

    .line 691
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long v0, v1, v3

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recordStalledTime exception. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :catch_1
    move-exception v0

    .line 699
    const-string/jumbo v1, "HttpWorker"

    new-instance v2, Lcom/alipay/mobile/common/transport/ext/ExtTransportException;

    const-string/jumbo v3, ""

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/ext/ExtTransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 701
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NO_DOWN_HTTPS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 704
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 705
    const-string/jumbo v1, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8fde\u63a5\u5931\u8d25,\u6ca1\u6709\u5f00\u542f\u4f7f\u7528Https\u8fdb\u884c\u91cd\u8bd5: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    throw v0

    .line 709
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string/jumbo v2, "allowRetry"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 710
    const-string/jumbo v1, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8fde\u63a5\u5931\u8d25,\u4e0d\u5141\u8bb8\u4f7f\u7528Https\u8fdb\u884c\u91cd\u8bd5: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    throw v0

    .line 714
    :cond_3
    const-string/jumbo v1, "HttpWorker"

    const-string/jumbo v2, "\u6269\u5c55\u4f20\u8f93\u6a21\u5757\u8fde\u63a5\u5931\u8d25,\u4f7f\u7528Https\u8fdb\u884c\u91cd\u8bd5"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 715
    const-string/jumbo v0, "DOWN"

    const-string/jumbo v1, "T"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_4
    const-string/jumbo v0, "HttpWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "By Http/Https to request. operationType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    const-string/jumbo v0, "https"

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v6, v0, v1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->fillCurrentReqInfo(ZLjava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getReadTimeout(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getConnTimeout(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "ALL_TIME"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPostData()Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "REQ_SIZE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPostData()Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/entity/AbstractHttpEntity;->getContentLength()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d()V

    new-instance v1, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getProxyOfEnhanced(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    iget-object v2, v1, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    if-nez v2, :cond_7

    const-string/jumbo v2, "http.route.default-proxy"

    sget-object v3, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iput-object v8, v1, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/mobile/common/transport/http/inner/HttpClientPlannerHelper;->determineRoute(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    const-string/jumbo v4, "http.route.forced-route"

    invoke-interface {v0, v4, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v3, v2, v4}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iget-byte v2, v1, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->lastGoodProxy:B

    if-eq v2, v7, :cond_6

    iget-byte v1, v1, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->lastGoodProxy:B

    sput-byte v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:B

    :cond_6
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/HttpResponse;)V

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    sget-byte v3, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:B

    if-eq v3, v7, :cond_9

    sget-byte v2, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:B

    if-ne v2, v6, :cond_8

    iget-object v2, v1, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/params/HttpParams;)V

    iput-object v8, v1, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_a

    if-ne v2, v6, :cond_c

    :cond_a
    iget-byte v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:B

    if-eq v2, v7, :cond_b

    iget-byte v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:B

    if-ne v2, v6, :cond_c

    :cond_b
    iget-object v2, v1, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    iput-byte v6, v1, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->lastGoodProxy:B

    goto/16 :goto_2

    :cond_c
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/params/HttpParams;)V

    const/4 v2, 0x0

    iput-byte v2, v1, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->lastGoodProxy:B

    iput-object v8, v1, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    goto/16 :goto_2
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1568
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->l:Z

    if-nez v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->remove(Ljava/lang/String;)V

    .line 1570
    const-string/jumbo v0, "HttpWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeEtagFromCache\uff0c\u5b8c\u6210,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    :cond_0
    return-void
.end method

.method private c()Lorg/apache/http/HttpResponse;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 725
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string/jumbo v3, "force_http"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 765
    :cond_1
    :goto_1
    return-object v0

    .line 725
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f()Ljava/net/URL;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string/jumbo v4, "Version"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isContainerHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isAlipayHost(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "HttpWorker"

    const-string/jumbo v3, "===> Rpc push process does not use spdy <==="

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 730
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v1

    .line 731
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->isEnableExtTransport(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getExtTransportClient(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;

    move-result-object v1

    .line 734
    :goto_2
    if-eqz v1, :cond_1

    .line 736
    const-string/jumbo v0, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "By "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v3, v3, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-object v3, v3, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to request. operationType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d()V

    .line 740
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v2, "ALL_TIME"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V

    .line 743
    :try_start_0
    invoke-interface {v1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;->getModuleCategory()I

    move-result v0

    if-nez v0, :cond_7

    .line 746
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 749
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V

    .line 756
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Lorg/apache/http/HttpHost;

    :goto_4
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, v0, v2, v3}, Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 757
    invoke-interface {v1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;->getModuleCategory()I

    move-result v1

    if-nez v1, :cond_5

    .line 758
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "ALL_TIME"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    .line 731
    goto/16 :goto_2

    .line 753
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    const-string/jumbo v2, "originRequest"

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-interface {v0, v2, v3}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 762
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "ALL_TIME"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_8
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f()Ljava/net/URL;

    move-result-object v2

    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_9

    invoke-virtual {v0}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    :goto_5
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Lorg/apache/http/HttpHost;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Lorg/apache/http/HttpHost;

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_5
.end method

.method private d()V
    .locals 4

    .prologue
    .line 984
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 985
    const-string/jumbo v0, "STALLED_TIME"

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :cond_0
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->addEtag2RequestHeader()V

    .line 1022
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 1025
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->COOKIE_CACHE_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isAlipayHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->getCookie()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    const-string/jumbo v2, "Cookie"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v0

    .line 1029
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1030
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    const-string/jumbo v2, "Accept-Language"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1036
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .line 1037
    array-length v3, v2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    .line 1038
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1025
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->REPLACE_SPANNER_COOKIE_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g()Landroid/webkit/CookieManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isAlipayHost(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->replaceSpannerCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_6

    :goto_3
    move-object v1, v0

    :cond_3
    :goto_4
    const-string/jumbo v0, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "add cookie="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string/jumbo v2, "Cookie"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "HttpWorker"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1040
    :cond_4
    const-string/jumbo v0, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Added request headers : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :cond_5
    return-void

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method private f()Ljava/net/URL;
    .locals 2

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/net/URL;

    .line 1170
    :goto_0
    return-object v0

    .line 1169
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/net/URL;

    .line 1170
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/net/URL;

    goto :goto_0
.end method

.method private g()Landroid/webkit/CookieManager;
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e:Landroid/webkit/CookieManager;

    .line 1580
    :goto_0
    return-object v0

    .line 1579
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e:Landroid/webkit/CookieManager;

    .line 1580
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e:Landroid/webkit/CookieManager;

    goto :goto_0
.end method


# virtual methods
.method protected addEtag2RequestHeader()V
    .locals 4

    .prologue
    .line 1512
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isUseEtag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1513
    const-string/jumbo v0, "HttpWorker"

    const-string/jumbo v1, "addEtag2RequestHeader. don\'t use etag. go return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    :goto_0
    return-void

    .line 1517
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 1520
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:Ljava/lang/String;

    .line 1523
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1525
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/alipay/mobile/common/cache/disk/CacheException;

    if-nez v2, :cond_1

    .line 1528
    check-cast v0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    .line 1529
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "If-None-Match"

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getEtag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    invoke-interface {v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 1531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Z

    goto :goto_0

    .line 1535
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Z

    goto :goto_0
.end method

.method public call()Lcom/alipay/mobile/common/transport/Response;
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 348
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isBgRpc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 354
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "The network is not available"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 457
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HttpException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 460
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 461
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 462
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 464
    :cond_2
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SWITCH_TAG_LOG:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 597
    const-string/jumbo v2, "TAG"

    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->monitorLog(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 616
    throw v0

    .line 359
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 366
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " trafic beyond limit"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 466
    :catch_1
    move-exception v0

    .line 467
    :try_start_3
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "URISyntaxException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Url parser error!"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    :cond_6
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->s:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o:J

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V

    .line 378
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/TransportStrategy;->configInit(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 379
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->url:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    const-string/jumbo v1, "NET_CONTEXT"

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    const-string/jumbo v1, "http.cookie-store"

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d:Lorg/apache/http/client/CookieStore;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 385
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e()V

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 396
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b()Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 399
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    sub-long v0, v3, v0

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addConnectTime(J)V

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d:Lorg/apache/http/client/CookieStore;

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isResetCookie()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 405
    const-string/jumbo v1, "HttpWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reset cookie.  API="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v1, "R_COOKIE"

    const-string/jumbo v3, "T"

    invoke-direct {p0, v1, v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->removeAllCookie()V

    .line 408
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 410
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x3e8

    cmp-long v1, v5, v7

    if-gez v1, :cond_9

    .line 412
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_4
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 469
    :catch_2
    move-exception v0

    .line 470
    :try_start_5
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SSLHandshakeException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 472
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 473
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 474
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 476
    :cond_8
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 414
    :cond_9
    :try_start_6
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v1

    if-nez v1, :cond_e

    .line 415
    const-string/jumbo v1, "HttpWorker"

    const-string/jumbo v3, "reset cookie success!"

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_a
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 426
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isAlipayHost(Ljava/lang/String;)Z

    move-result v1

    .line 430
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 432
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 433
    if-eqz v1, :cond_c

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 438
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; domain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "; Secure"

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    const-string/jumbo v4, "HttpWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "set cookie. cookie="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  .url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g()Landroid/webkit/CookieManager;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_6
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 478
    :catch_3
    move-exception v0

    .line 479
    :try_start_7
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SSLPeerUnverifiedException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 481
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 482
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 483
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 485
    :cond_d
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 417
    :cond_e
    :try_start_8
    const-string/jumbo v1, "HttpWorker"

    const-string/jumbo v3, "reset cookie fail!"

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 487
    :catch_4
    move-exception v0

    .line 488
    :try_start_9
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SSLException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 490
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 491
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 492
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 494
    :cond_f
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 441
    :cond_10
    :try_start_a
    const-string/jumbo v0, ""

    goto/16 :goto_3

    .line 452
    :cond_11
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/Response;
    :try_end_a
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_a .. :try_end_a} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    .line 595
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SWITCH_TAG_LOG:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 597
    const-string/jumbo v2, "TAG"

    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_12
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->monitorLog(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 616
    :goto_4
    return-object v0

    .line 496
    :catch_5
    move-exception v0

    .line 497
    :try_start_b
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ConnectionPoolTimeoutException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectionPoolTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 499
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 500
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 501
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 503
    :cond_13
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 505
    :catch_6
    move-exception v0

    .line 507
    iget-byte v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->p:B

    if-eq v1, v9, :cond_15

    .line 508
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->p:B

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:B

    .line 509
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->p:B

    .line 510
    const/4 v0, -0x1

    sput-byte v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:B

    .line 511
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->call()Lcom/alipay/mobile/common/transport/Response;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v0

    .line 595
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SWITCH_TAG_LOG:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 597
    const-string/jumbo v2, "TAG"

    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_14
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->monitorLog(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    goto/16 :goto_4

    .line 514
    :cond_15
    :try_start_c
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ConnectTimeoutException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 516
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 517
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 518
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 520
    :cond_16
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 522
    :catch_7
    move-exception v0

    .line 523
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SocketTimeoutException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 525
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 526
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 527
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 529
    :cond_17
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 531
    :catch_8
    move-exception v0

    .line 532
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NoHttpResponseException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/NoHttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 534
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 535
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 536
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 538
    :cond_18
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 540
    :catch_9
    move-exception v0

    .line 541
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HttpHostConnectException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/HttpHostConnectException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 543
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 544
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 545
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/16 v3, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 547
    :cond_19
    const-string/jumbo v1, "HttpManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 548
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 549
    :catch_a
    move-exception v0

    .line 550
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "UnknownHostException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 552
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 553
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 554
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/16 v3, 0x9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 556
    :cond_1a
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 558
    :catch_b
    move-exception v0

    .line 559
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IOException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 561
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 562
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 563
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 565
    :cond_1b
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 567
    :catch_c
    move-exception v0

    .line 568
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 569
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NullPointerException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 572
    iget v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i:I

    if-gtz v1, :cond_1d

    .line 573
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i:I

    .line 574
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->call()Lcom/alipay/mobile/common/transport/Response;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    .line 595
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SWITCH_TAG_LOG:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 597
    const-string/jumbo v2, "TAG"

    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_1c
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->monitorLog(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    goto/16 :goto_4

    .line 576
    :cond_1d
    :try_start_d
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 577
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 579
    :cond_1e
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 582
    :catch_d
    move-exception v0

    .line 583
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 585
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 586
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 587
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 589
    :cond_1f
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->call()Lcom/alipay/mobile/common/transport/Response;

    move-result-object v0

    return-object v0
.end method

.method protected fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1364
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPeriod(Lorg/apache/http/HttpResponse;)J

    move-result-wide v2

    .line 1365
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    .line 1368
    if-eqz v0, :cond_0

    .line 1369
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getContentType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 1370
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/HeaderConstant;->HEADER_KEY_CHARSET:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1371
    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1373
    :goto_0
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setContentType(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCharset(Ljava/lang/String;)V

    .line 1375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCreateTime(J)V

    .line 1376
    invoke-virtual {p1, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setPeriod(J)V

    .line 1377
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected getContentType(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1191
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1192
    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1193
    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 1195
    const/16 v0, 0x3d

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    .line 1196
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1197
    const-string/jumbo v7, "Content-Type"

    aput-object v7, v0, v2

    .line 1198
    aput-object v6, v0, v8

    .line 1201
    :goto_1
    aget-object v6, v0, v2

    aget-object v0, v0, v8

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1200
    :cond_0
    const-string/jumbo v0, "="

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1203
    :cond_1
    return-object v3
.end method

.method protected getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 333
    :goto_0
    return-object v0

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPostData()Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_1

    .line 326
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 327
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 328
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 333
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    .line 330
    :cond_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_1
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:Ljava/lang/String;

    .line 999
    :goto_0
    return-object v0

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string/jumbo v1, "operationType"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:Ljava/lang/String;

    .line 996
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:Ljava/lang/String;

    goto :goto_0

    .line 999
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected getPeriod(Lorg/apache/http/HttpResponse;)J
    .locals 5

    .prologue
    .line 1386
    const-wide/16 v0, 0x0

    .line 1387
    const-string/jumbo v2, "Cache-Control"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 1388
    if-eqz v2, :cond_1

    .line 1389
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1390
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 1392
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->parserMaxage([Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1404
    :cond_0
    :goto_0
    return-wide v0

    .line 1393
    :catch_0
    move-exception v2

    .line 1394
    const-string/jumbo v3, "HttpWorker"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1399
    :cond_1
    const-string/jumbo v2, "Expires"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 1400
    if-eqz v2, :cond_0

    .line 1401
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    .line 1402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method protected getPostData()Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 299
    :goto_0
    return-object v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getReqData()[B

    move-result-object v0

    .line 289
    if-eqz v0, :cond_1

    .line 291
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-boolean v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->reqGzip:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCompress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 297
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    goto :goto_0

    .line 295
    :cond_2
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    goto :goto_1
.end method

.method public getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mUrl:Ljava/lang/String;

    .line 269
    :cond_0
    if-nez v0, :cond_1

    .line 270
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "url should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected handleResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/mobile/common/transport/Response;
    .locals 20

    .prologue
    .line 1217
    const-string/jumbo v4, "HttpWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u5f00\u59cbhandle\uff0chandleResponse-1,"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 1220
    const/4 v5, 0x0

    .line 1221
    if-eqz v4, :cond_3

    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_3

    .line 1223
    const-string/jumbo v5, "HttpWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "200\uff0c\u5f00\u59cb\u5904\u7406\uff0chandleResponse-2,threadid = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const/4 v5, 0x0

    .line 1227
    :try_start_0
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1229
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 1232
    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v14}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)J

    move-result-wide v17

    .line 1233
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    .line 1235
    const-string/jumbo v4, "ETag"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 1237
    array-length v5, v4

    if-lez v5, :cond_1

    .line 1238
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;->get()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/security/Des;->encrypt([BLjava/lang/String;)[B

    move-result-object v5

    .line 1239
    if-eqz v5, :cond_1

    .line 1241
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isUseEtag()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1243
    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1247
    new-instance v8, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    invoke-direct {v8}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;-><init>()V

    .line 1248
    invoke-virtual {v8, v4}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setEtag(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v8, v5}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setValue([B)V

    .line 1250
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setTypeHeader(Lorg/apache/http/Header;)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "ETag"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:Ljava/lang/String;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/32 v11, 0x240c8400

    const-string/jumbo v13, "Serializable"

    invoke-virtual/range {v4 .. v13}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->putSerializable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;JJLjava/lang/String;)V

    .line 1254
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->l:Z

    .line 1264
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v15

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addSocketTime(J)V

    .line 1266
    new-instance v4, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v5

    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, v19

    invoke-direct {v4, v5, v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    .line 1268
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V

    .line 1269
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v17

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->noteTraficConsume(Lcom/alipay/mobile/common/transport/Response;Lorg/apache/http/HttpResponse;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1272
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Ljava/lang/String;)V

    .line 1274
    :try_start_2
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1280
    const-string/jumbo v5, "HttpWorker"

    const-string/jumbo v6, "finally,handleResponse"

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :goto_1
    return-object v4

    .line 1260
    :cond_1
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->l:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1272
    :catchall_0
    move-exception v4

    move-object v5, v14

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Ljava/lang/String;)V

    .line 1274
    if-eqz v5, :cond_2

    .line 1276
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1280
    :cond_2
    const-string/jumbo v5, "HttpWorker"

    const-string/jumbo v6, "finally,handleResponse"

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 1277
    :catch_0
    move-exception v4

    .line 1278
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "ArrayOutputStream close error!"

    invoke-virtual {v4}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1277
    :catch_1
    move-exception v4

    .line 1278
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "ArrayOutputStream close error!"

    invoke-virtual {v4}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1284
    :cond_3
    if-nez v4, :cond_5

    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v6, 0x130

    if-ne v4, v6, :cond_5

    .line 1287
    const/16 v4, 0x130

    move/from16 v0, p3

    if-ne v0, v4, :cond_5

    .line 1292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    .line 1295
    if-eqz v4, :cond_5

    .line 1296
    new-instance v6, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v5

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getValue()[B

    move-result-object v7

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v6, v5, v0, v1, v7}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    .line 1299
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPeriod(Lorg/apache/http/HttpResponse;)J

    move-result-wide v7

    .line 1301
    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getTypeHeader()Lorg/apache/http/Header;

    move-result-object v9

    .line 1302
    const/4 v4, 0x0

    .line 1303
    const/4 v5, 0x0

    .line 1304
    if-eqz v9, :cond_4

    .line 1305
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getContentType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 1306
    const-string/jumbo v4, "charset"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1307
    const-string/jumbo v9, "Content-Type"

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1309
    :cond_4
    invoke-virtual {v6, v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setContentType(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCharset(Ljava/lang/String;)V

    .line 1311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCreateTime(J)V

    .line 1312
    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setPeriod(J)V

    move-object v4, v6

    goto/16 :goto_1

    .line 1272
    :catchall_1
    move-exception v4

    goto/16 :goto_2

    :cond_5
    move-object v4, v5

    goto/16 :goto_1
.end method

.method protected handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;
    .locals 6

    .prologue
    .line 1346
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;-><init>()V

    .line 1348
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1349
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1354
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    .line 1623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1624
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    const-string/jumbo v2, "reqDataDigest"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1627
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1633
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1637
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->hashcode(I)I

    move-result v0

    return v0
.end method

.method hashcode(I)I
    .locals 2

    .prologue
    .line 1644
    ushr-int/lit8 v0, p1, 0x14

    ushr-int/lit8 v1, p1, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr v0, p1

    .line 1645
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method protected noteTraficConsume(Lcom/alipay/mobile/common/transport/Response;Lorg/apache/http/HttpResponse;J)V
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    .line 636
    .line 637
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_7

    .line 638
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    :goto_0
    move-wide v2, v0

    .line 643
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 644
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    .line 647
    :goto_2
    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    instance-of v6, p1, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    if-eqz v6, :cond_0

    .line 648
    check-cast p1, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    .line 650
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v6

    const-string/jumbo v7, "Content-Length"

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 651
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 657
    :cond_0
    :goto_3
    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    if-eqz p2, :cond_2

    .line 658
    const-string/jumbo v6, "Content-Length"

    invoke-interface {p2, v6}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    .line 659
    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    .line 661
    const/4 v7, 0x0

    :try_start_1
    aget-object v6, v6, v7

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 666
    :cond_1
    :goto_4
    cmp-long v6, v4, v0

    if-nez v6, :cond_2

    .line 667
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 668
    if-eqz v6, :cond_2

    .line 669
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    .line 674
    :cond_2
    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_5

    move-wide v4, p3

    .line 678
    :goto_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 679
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 683
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;JJ)V

    .line 684
    return-void

    :cond_4
    move-wide v0, v4

    .line 639
    goto/16 :goto_0

    .line 653
    :catch_0
    move-exception v6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "HttpWorker"

    const-string/jumbo v8, "parse Content-Length error"

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 663
    :catch_1
    move-exception v6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "HttpWorker"

    const-string/jumbo v8, "parse Content-Length error"

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-wide v4, v0

    goto :goto_5

    :cond_6
    move-wide v0, v4

    goto/16 :goto_2

    :cond_7
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method protected parserMaxage([Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 1414
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1415
    aget-object v1, p1, v0

    .line 1416
    const-string/jumbo v2, "max-age"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p1, v1

    if-eqz v1, :cond_0

    .line 1418
    add-int/lit8 v1, v0, 0x1

    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1422
    :goto_1
    return-wide v0

    :catch_0
    move-exception v1

    .line 1414
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1422
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/Response;
    .locals 5

    .prologue
    .line 1597
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 1598
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 1600
    const-string/jumbo v2, "HttpWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " resCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    const/16 v2, 0xce

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->willHandleOtherCode(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1606
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 1616
    :cond_0
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->handleResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v0

    return-object v0
.end method

.method protected willHandleOtherCode(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 1436
    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    .line 1437
    const/4 v0, 0x1

    .line 1439
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)J
    .locals 11

    .prologue
    .line 1463
    if-nez p4, :cond_0

    .line 1464
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1468
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1469
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getUngzippedContent(Ljava/io/InputStream;Lorg/apache/http/Header;)Ljava/io/InputStream;

    move-result-object v1

    .line 1470
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 1473
    const/16 v4, 0x800

    :try_start_0
    new-array v4, v4, [B

    .line 1474
    :cond_1
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1475
    const/4 v6, 0x0

    invoke-virtual {p4, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 1476
    int-to-long v5, v5

    add-long/2addr p2, v5

    .line 1477
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v5

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_1

    .line 1478
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    long-to-double v7, p2

    long-to-double v9, v2

    div-double/2addr v7, v9

    invoke-interface {v5, v6, v7, v8}, Lcom/alipay/mobile/common/transport/TransportCallback;->onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1492
    :catch_0
    move-exception v0

    .line 1493
    :try_start_1
    const-string/jumbo v2, "HttpWorker"

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1494
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "HttpWorker Request Error!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1496
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1498
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    const-string/jumbo v3, "https"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1500
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    const-string/jumbo v3, "ALL_TIME"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    .line 1502
    :cond_2
    invoke-static {v1}, Lcom/alipay/mobile/common/utils/IOUtil;->closeStream(Ljava/io/Closeable;)V

    throw v0

    .line 1481
    :cond_3
    :try_start_2
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    .line 1483
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->getReaded()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    :try_start_3
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addDataSize(J)V

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    if-eqz v5, :cond_4

    const-string/jumbo v5, "RES_SIZE"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1484
    :cond_4
    :goto_1
    :try_start_4
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1485
    const-string/jumbo v4, "HttpWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "operationType="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Origin data length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->getReaded()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " , readed data length: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ",  head len : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1498
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    const-string/jumbo v2, "https"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1500
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v2, "ALL_TIME"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    .line 1502
    :cond_6
    invoke-static {v1}, Lcom/alipay/mobile/common/utils/IOUtil;->closeStream(Ljava/io/Closeable;)V

    return-wide p2

    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method
