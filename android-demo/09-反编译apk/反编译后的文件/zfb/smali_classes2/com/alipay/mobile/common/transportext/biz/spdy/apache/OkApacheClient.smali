.class public Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;
.super Ljava/lang/Object;
.source "OkApacheClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# static fields
.field public static final REQUESTID:Ljava/lang/String; = "requestId"

.field private static final TAG:Ljava/lang/String; = "OkApacheClient"


# instance fields
.field protected final client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

.field private connectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private final params:Lorg/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->connectionMap:Ljava/util/Map;

    .line 80
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->params:Lorg/apache/http/params/HttpParams;

    .line 150
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    .line 151
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->mContext:Landroid/content/Context;

    .line 152
    return-void
.end method

.method private static consumeContentQuietly(Lorg/apache/http/HttpResponse;)V
    .locals 1

    .prologue
    .line 379
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setUseCaches2False(Ljava/net/HttpURLConnection;)V
    .locals 4

    .prologue
    .line 386
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setUseCaches2False exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->connectionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 320
    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 325
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 336
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->connectionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 339
    const-string/jumbo v1, "OkApacheClient"

    const-string/jumbo v2, "close()\u65b9\u6cd5\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 326
    :catch_1
    move-exception v1

    .line 327
    const-string/jumbo v2, "OkApacheClient"

    const-string/jumbo v3, "close()\u65b9\u6cd5\u5f02\u5e38"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 331
    :catch_2
    move-exception v0

    .line 333
    const-string/jumbo v1, "OkApacheClient"

    const-string/jumbo v2, "close()\u65b9\u6cd5\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0, p1, p2, p4}, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 367
    :try_start_0
    invoke-interface {p3, v0}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 369
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->consumeContentQuietly(Lorg/apache/http/HttpResponse;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->consumeContentQuietly(Lorg/apache/http/HttpResponse;)V

    throw v1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 199
    const/4 v1, 0x0

    .line 202
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    .line 204
    const-string/jumbo v0, "OkApacheClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ThreadId=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]   Receipt spdy request. url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;-><init>()V

    .line 207
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->mContext:Landroid/content/Context;

    iput-object v4, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->context:Landroid/content/Context;

    .line 208
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->mContext:Landroid/content/Context;

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->configInit(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 209
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->configInit(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 212
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string/jumbo v5, "http.route.default-proxy"

    iget-object v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getProxyOfEnhanced(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 215
    new-instance v4, Ljava/net/URL;

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, v4, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->openConnection(Ljava/net/URL;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 219
    if-eqz p3, :cond_1

    .line 221
    const-string/jumbo v0, "requestId"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 224
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->connectionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->connectionMap:Ljava/util/Map;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v0

    .line 235
    :goto_0
    :try_start_2
    invoke-direct {p0, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->setUseCaches2False(Ljava/net/HttpURLConnection;)V

    .line 236
    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 237
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    array-length v5, v3

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_3

    aget-object v6, v3, v0

    .line 238
    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    :cond_0
    :try_start_3
    const-string/jumbo v1, "OkApacheClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "requestId=["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "],requestId \u51b2\u7a81"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v0

    goto :goto_0

    .line 232
    :cond_1
    :try_start_4
    const-string/jumbo v0, "OkApacheClient"

    const-string/jumbo v5, "HttpContext \u4e3anull"

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    .line 300
    :goto_2
    :try_start_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 301
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->connectionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 306
    :cond_2
    :goto_3
    throw v0

    .line 242
    :cond_3
    :try_start_6
    instance-of v0, p2, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_7

    .line 243
    check-cast p2, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {p2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_7

    .line 245
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 246
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    .line 247
    if-eqz v3, :cond_4

    .line 248
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_4
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v3

    .line 251
    if-eqz v3, :cond_5

    .line 252
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_5
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gez v3, :cond_9

    .line 255
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 264
    :goto_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 269
    :cond_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 271
    const-string/jumbo v3, "OkApacheClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ThreadId=["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] response status code=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    .line 274
    new-instance v5, Lorg/apache/http/message/BasicHttpResponse;

    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-direct {v5, v6, v0, v3}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 276
    const/16 v3, 0x190

    if-ge v0, v3, :cond_b

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 278
    :goto_5
    new-instance v3, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v3, v0, v6, v7}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    move v0, v2

    .line 281
    :goto_6
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    .line 282
    if-eqz v2, :cond_d

    .line 283
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v5, v6}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 287
    const-string/jumbo v7, "Content-Type"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 288
    invoke-virtual {v3, v6}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 280
    :cond_8
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 256
    :cond_9
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x2000

    cmp-long v3, v5, v7

    if-gtz v3, :cond_a

    .line 259
    const-string/jumbo v3, "Content-Length"

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 262
    :cond_a
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    long-to-int v3, v5

    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto/16 :goto_4

    .line 276
    :cond_b
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_5

    .line 289
    :cond_c
    const-string/jumbo v7, "Content-Encoding"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 290
    invoke-virtual {v3, v6}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    goto :goto_7

    .line 293
    :cond_d
    invoke-virtual {v5, v3}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 295
    const-string/jumbo v0, "OkApacheClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ThreadId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] return response."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 300
    :try_start_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->connectionMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 306
    :cond_e
    :goto_8
    return-object v5

    .line 303
    :catch_0
    move-exception v0

    .line 305
    const-string/jumbo v1, "OkApacheClient"

    const-string/jumbo v2, "connectionMap.remove()\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 303
    :catch_1
    move-exception v1

    .line 305
    const-string/jumbo v2, "OkApacheClient"

    const-string/jumbo v3, "connectionMap.remove()\u5f02\u5e38"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 298
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_2

    :cond_f
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, v0, p1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->params:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->open(Ljava/net/URL;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public setRequestRetryHandler(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyRequestRetryHandler;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/apache/OkApacheClient;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setRequestRetryHandler(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyRequestRetryHandler;)V

    .line 375
    return-void
.end method
