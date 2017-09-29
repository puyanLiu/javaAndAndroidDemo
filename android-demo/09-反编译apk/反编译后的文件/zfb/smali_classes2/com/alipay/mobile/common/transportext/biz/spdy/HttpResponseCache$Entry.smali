.class final Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;
.super Ljava/lang/Object;
.source "HttpResponseCache.java"


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final localCertificates:[Ljava/security/cert/Certificate;

.field private final peerCertificates:[Ljava/security/cert/Certificate;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

.field private final uri:Ljava/lang/String;

.field private final varyHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    :try_start_0
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 467
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    .line 468
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    .line 469
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->varyHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    .line 470
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readInt()I

    move-result v3

    move v1, v0

    .line 471
    :goto_0
    if-ge v1, v3, :cond_0

    .line 472
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->varyHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    .line 476
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readInt()I

    move-result v1

    .line 478
    :goto_1
    if-ge v0, v1, :cond_1

    .line 479
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 482
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 485
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "expected \"\" but was \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 487
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 488
    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->readCertArray(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;)[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 489
    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->readCertArray(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;)[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 497
    return-void

    .line 491
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Ljava/net/HttpURLConnection;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    .line 503
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->varyHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    .line 504
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    .line 505
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->fromMultimap(Ljava/util/Map;Z)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    .line 507
    invoke-direct {p0, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->getSslSocket(Ljava/net/HttpURLConnection;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    .line 508
    if-eqz v1, :cond_0

    .line 509
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 512
    :try_start_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 515
    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 516
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    .line 522
    :goto_1
    return-void

    .line 518
    :cond_0
    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 519
    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 520
    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)Z
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->isHttps()Z

    move-result v0

    return v0
.end method

.method private getSslSocket(Ljava/net/HttpURLConnection;)Ljavax/net/ssl/SSLSocket;
    .locals 2

    .prologue
    .line 532
    instance-of v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->getHttpEngine()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    .line 535
    :goto_0
    instance-of v1, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    :goto_1
    return-object v0

    .line 532
    :cond_0
    check-cast p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getHttpEngine()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isHttps()Z
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertArray(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;)[Ljava/security/cert/Certificate;
    .locals 6

    .prologue
    .line 571
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readInt()I

    move-result v2

    .line 572
    const/4 v0, -0x1

    if-ne v2, v0, :cond_1

    .line 573
    const/4 v0, 0x0

    .line 583
    :cond_0
    return-object v0

    .line 576
    :cond_1
    :try_start_0
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 577
    new-array v0, v2, [Ljava/security/cert/Certificate;

    .line 578
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 579
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 580
    const-string/jumbo v5, "US-ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Base64;->decode([B)[B

    move-result-object v4

    .line 581
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    aput-object v4, v0, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .locals 4

    .prologue
    .line 590
    if-nez p2, :cond_1

    .line 591
    const-string/jumbo v0, "-1\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 603
    :cond_0
    return-void

    .line 595
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 596
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 597
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 598
    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 608
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-direct {v1, p1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->varyHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->varyMatches(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final writeTo(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0xa

    .line 541
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    .line 542
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->varyHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v0, v1

    .line 547
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->varyHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->varyHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->varyHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 553
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 557
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 561
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 563
    :cond_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 564
    return-void
.end method
