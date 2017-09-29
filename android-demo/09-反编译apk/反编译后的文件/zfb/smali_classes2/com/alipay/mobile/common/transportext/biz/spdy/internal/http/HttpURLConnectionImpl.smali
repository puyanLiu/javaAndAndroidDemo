.class public Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;


# static fields
.field static final HTTP_TEMP_REDIRECT:I = 0x133

.field private static final MAX_REDIRECTS:I = 0x14


# instance fields
.field final client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

.field private fixedContentLength:J

.field protected httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

.field protected httpEngineFailure:Ljava/io/IOException;

.field private final rawRequestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

.field private redirectionCount:I

.field private retryCount:I

.field private selectedProxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 74
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->fixedContentLength:J

    .line 85
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    .line 86
    return-void
.end method

.method private cast2RetryableOutputStream(Ljava/io/OutputStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;
    .locals 2

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 518
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;

    if-eqz v1, :cond_0

    .line 519
    check-cast p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;

    .line 521
    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method private execute(Z)Z
    .locals 2

    .prologue
    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->sendRequest()V

    .line 420
    if-eqz p1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_0
    const/4 v0, 0x1

    .line 431
    :goto_0
    return v0

    .line 425
    :catch_0
    move-exception v0

    .line 427
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->handleFailure(Ljava/io/IOException;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    const/4 v0, 0x0

    goto :goto_0

    .line 433
    :cond_1
    throw v0
.end method

.method private getResponse()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;
    .locals 5

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    .line 365
    :goto_0
    return-object v0

    .line 387
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;

    if-ne v3, v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->release(Z)V

    .line 393
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    move-result-object v4

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    .line 396
    if-nez v1, :cond_2

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getRequestHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->removeContentLength()V

    .line 358
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->execute(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->processResponseHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;

    move-result-object v3

    .line 363
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;

    if-ne v3, v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    goto :goto_0

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 370
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v1

    .line 375
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    .line 376
    const/16 v4, 0x12c

    if-eq v2, v4, :cond_4

    const/16 v4, 0x12d

    if-eq v2, v4, :cond_4

    const/16 v4, 0x12e

    if-eq v2, v4, :cond_4

    const/16 v4, 0x12f

    if-ne v2, v4, :cond_5

    .line 378
    :cond_4
    const-string/jumbo v0, "GET"

    .line 379
    const/4 v1, 0x0

    move-object v2, v0

    .line 382
    :goto_1
    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/net/HttpRetryException;

    const-string/jumbo v1, "Cannot retry streamed HTTP body"

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getResponseCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method private handleFailure(Ljava/io/IOException;Z)Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 448
    if-eqz p2, :cond_0

    const-string/jumbo v0, "get"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->releaseConnection()V

    .line 507
    :goto_0
    return v6

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v8, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->routeSelector:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;

    .line 454
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v8, v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->connectFailed(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;Ljava/io/IOException;)V

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v9

    .line 459
    if-eqz v9, :cond_2

    instance-of v0, v9, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;

    if-eqz v0, :cond_6

    :cond_2
    move v0, v7

    .line 471
    :goto_1
    if-nez v8, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    if-eqz v1, :cond_5

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->isRecoverable(Ljava/io/IOException;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_b

    .line 474
    :cond_5
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    move v3, v6

    .line 480
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getRequestRetryHandler()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyRequestRetryHandler;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_7

    .line 482
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->retryCount:I

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyRequestRetryHandler;->retryRequest(Ljava/io/IOException;IZLcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;Ljava/net/HttpURLConnection;)Z

    move-result v0

    .line 484
    if-nez v0, :cond_8

    .line 485
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->releaseConnection()V

    goto :goto_0

    :cond_6
    move v0, v6

    .line 459
    goto :goto_1

    :cond_7
    move v0, v6

    .line 491
    :cond_8
    if-nez v0, :cond_9

    if-nez v3, :cond_9

    .line 492
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->releaseConnection()V

    goto :goto_0

    .line 497
    :cond_9
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->retryCount:I

    .line 498
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->releaseConnection()V

    .line 499
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-direct {p0, v9}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->cast2RetryableOutputStream(Ljava/io/OutputStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;

    move-result-object v4

    invoke-direct {p0, v1, v2, v10, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    .line 500
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iput-object v8, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->routeSelector:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;

    .line 503
    if-eqz v0, :cond_a

    if-nez v3, :cond_a

    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iput-object v10, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->routeSelector:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;

    :cond_a
    move v6, v7

    .line 507
    goto/16 :goto_0

    :cond_b
    move v3, v7

    goto :goto_2
.end method

.method private initHttpEngine()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    throw v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    if-eqz v0, :cond_1

    .line 322
    :goto_0
    return-void

    .line 304
    :cond_1
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->connected:Z

    .line 306
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->doOutput:Z

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v1, "GET"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    const-string/jumbo v0, "POST"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 321
    throw v0

    .line 310
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v1, "POST"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v1, "PUT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v1, "PATCH"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->NOT_SUPPORT_HTTP_METHOD:[Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->getMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/net/ProtocolException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private isRecoverable(Ljava/io/IOException;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 527
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_0

    move v0, v1

    .line 529
    :goto_0
    instance-of v3, p1, Ljava/net/ProtocolException;

    .line 530
    instance-of v4, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/NoRetrySpdyConnException;

    .line 532
    if-nez v0, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 527
    goto :goto_0

    :cond_1
    move v1, v2

    .line 532
    goto :goto_1
.end method

.method private static isValidNonDirectProxy(Ljava/net/Proxy;)Z
    .locals 2

    .prologue
    .line 637
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newHttpEngine(Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;
    .locals 7

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;)V

    .line 336
    :goto_0
    return-object v0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "https"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;)V

    goto :goto_0

    .line 338
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private processResponseHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 549
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    .line 551
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    .line 552
    sparse-switch v2, :sswitch_data_0

    .line 607
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;

    :goto_1
    return-object v0

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    goto :goto_0

    .line 554
    :sswitch_0
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_1

    .line 555
    new-instance v0, Ljava/net/ProtocolException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->HTTP_PROXY_AUTH_407:[Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->getMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_1
    :sswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getAuthenticator()Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpAuthenticator;->processAuthHeader(Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;ILcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Ljava/net/Proxy;Ljava/net/URL;)Z

    move-result v0

    .line 563
    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_1

    .line 570
    :sswitch_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getInstanceFollowRedirects()Z

    move-result v3

    if-nez v3, :cond_3

    .line 571
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_1

    .line 573
    :cond_3
    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->redirectionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->redirectionCount:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_4

    .line 574
    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->TOO_MANY_REDIRECTS:[Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->getMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 575
    new-instance v3, Ljava/net/ProtocolException;

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->redirectionCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 577
    :cond_4
    const/16 v3, 0x133

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v3, "GET"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v3, "HEAD"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 581
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 583
    :cond_5
    const-string/jumbo v2, "Location"

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 584
    if-nez v2, :cond_6

    .line 585
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 587
    :cond_6
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 588
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 589
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "https"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "http"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 591
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 593
    :cond_7
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 595
    if-nez v2, :cond_8

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getFollowProtocolRedirects()Z

    move-result v4

    if-nez v4, :cond_8

    .line 596
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 598
    :cond_8
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 599
    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v3

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-static {v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v5

    if-ne v3, v5, :cond_9

    .line 600
    :goto_2
    if-eqz v4, :cond_a

    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 601
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    :cond_9
    move v0, v1

    .line 599
    goto :goto_2

    .line 603
    :cond_a
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 552
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x133 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method private releaseConnection()V
    .locals 2

    .prologue
    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->release(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setTransports(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 705
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 706
    if-eqz p2, :cond_0

    .line 707
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getTransports()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 709
    :cond_0
    const-string/jumbo v0, ","

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 710
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setTransports(Ljava/util/List;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    .line 713
    return-void
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 678
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_0
    if-nez p1, :cond_1

    .line 681
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_1
    if-nez p2, :cond_2

    .line 689
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Ignoring header "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->logW(Ljava/lang/String;)V

    .line 698
    :goto_0
    return-void

    .line 693
    :cond_2
    const-string/jumbo v0, "X-Android-Transports"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 694
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->setTransports(Ljava/lang/String;Z)V

    goto :goto_0

    .line 696
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final connect()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 104
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->execute(Z)Z

    move-result v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    return-void
.end method

.method public final disconnect()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->releaseConnection()V

    .line 122
    :cond_1
    return-void
.end method

.method public final getChunkLength()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->chunkLength:I

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getFixedContentLength()J
    .locals 2

    .prologue
    .line 614
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->fixedContentLength:J

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    .line 163
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 163
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .locals 0

    .prologue
    .line 327
    return-object p0
.end method

.method public getHttpEngine()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->doInput:Z

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/net/ProtocolException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->PROTOCOL_NOT_SUPPORT_INPUT:[Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->getMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    .line 209
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_1

    .line 210
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;

    move-result-object v0

    .line 216
    if-nez v0, :cond_2

    .line 217
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->NO_RESPONSE_BODY_EXISTS:[Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->getMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/net/ProtocolException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_2
    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 5

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->connect()V

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 235
    if-nez v0, :cond_0

    .line 236
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->METHOD_NO_SUPPORT_REQUEST_BODY:[Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->getMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/net/ProtocolException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    new-instance v0, Ljava/net/ProtocolException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->WRITE_REQ_BODY_AFTER_RESP:[Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->getMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 4

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v0

    .line 251
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 253
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 256
    :cond_0
    new-instance v2, Ljava/net/SocketPermission;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "connect, resolve"

    invoke-direct {v2, v0, v1}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 270
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2

    .prologue
    .line 717
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    .line 718
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 722
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 723
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->chunkLength:I

    if-lez v0, :cond_1

    .line 725
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already in chunked mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 727
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "contentLength < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_2
    iput-wide p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->fixedContentLength:J

    .line 729
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 730
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 281
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 653
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_0
    if-nez p1, :cond_1

    .line 656
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_1
    if-nez p2, :cond_2

    .line 664
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Ignoring header "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->logW(Ljava/lang/String;)V

    .line 673
    :goto_0
    return-void

    .line 668
    :cond_2
    const-string/jumbo v0, "X-Android-Transports"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 669
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->setTransports(Ljava/lang/String;Z)V

    goto :goto_0

    .line 671
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setSelectedProxy(Ljava/net/Proxy;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->selectedProxy:Ljava/net/Proxy;

    .line 735
    return-void
.end method

.method public final usingProxy()Z
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->selectedProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->selectedProxy:Ljava/net/Proxy;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->isValidNonDirectProxy(Ljava/net/Proxy;)Z

    move-result v0

    .line 633
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->isValidNonDirectProxy(Ljava/net/Proxy;)Z

    move-result v0

    goto :goto_0
.end method
