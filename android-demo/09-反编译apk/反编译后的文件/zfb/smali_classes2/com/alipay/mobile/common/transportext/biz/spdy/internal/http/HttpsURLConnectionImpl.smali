.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "HttpsURLConnectionImpl.java"


# instance fields
.field private final delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 47
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;Ljava/net/URL;Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    .line 48
    return-void
.end method

.method private getSslSocket()Ljavax/net/ssl/SSLSocket;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connected:Z

    if-nez v0, :cond_1

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    instance-of v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public final connect()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->connected:Z

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->connect()V

    .line 164
    return-void
.end method

.method public final disconnect()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->disconnect()V

    .line 127
    return-void
.end method

.method public final getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public final getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getConnectTimeout()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentLength()I

    move-result v0

    return v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDate()J
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public final getDoInput()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getExpiration()J
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 1
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
    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public final getHttpEngine()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHttpEngine()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    return-object v0
.end method

.method public final getIfModifiedSince()J
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final getLastModified()J
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v1}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public final getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 1
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
    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v1}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 85
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public final getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final getUseCaches()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public final setAllowUserInteraction(Z)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setAllowUserInteraction(Z)V

    .line 277
    return-void
.end method

.method public final setChunkedStreamingMode(I)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setChunkedStreamingMode(I)V

    .line 329
    return-void
.end method

.method public final setConnectTimeout(I)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setConnectTimeout(I)V

    .line 305
    return-void
.end method

.method public final setDefaultUseCaches(Z)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDefaultUseCaches(Z)V

    .line 281
    return-void
.end method

.method public final setDoInput(Z)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDoInput(Z)V

    .line 285
    return-void
.end method

.method public final setDoOutput(Z)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDoOutput(Z)V

    .line 289
    return-void
.end method

.method public final setFixedLengthStreamingMode(I)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setFixedLengthStreamingMode(I)V

    .line 325
    return-void
.end method

.method public final setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    .line 333
    return-void
.end method

.method public final setIfModifiedSince(J)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setIfModifiedSince(J)V

    .line 293
    return-void
.end method

.method public final setInstanceFollowRedirects(Z)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setInstanceFollowRedirects(Z)V

    .line 159
    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setReadTimeout(I)V

    .line 313
    return-void
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setRequestMethod(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public final setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    .line 341
    return-void
.end method

.method public final setUseCaches(Z)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setUseCaches(Z)V

    .line 301
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usingProxy()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->usingProxy()Z

    move-result v0

    return v0
.end method
