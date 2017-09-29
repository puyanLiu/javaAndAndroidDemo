.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;
.super Ljava/lang/Object;
.source "HttpTransport.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;


# static fields
.field public static final DEFAULT_CHUNK_LENGTH:I = 0x400

.field private static final DISCARD_STREAM_TIMEOUT_MILLIS:I = 0x64


# instance fields
.field private final httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

.field private requestOut:Ljava/io/OutputStream;

.field private final socketIn:Ljava/io/InputStream;

.field private final socketOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    .line 58
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->socketOut:Ljava/io/OutputStream;

    .line 59
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->requestOut:Ljava/io/OutputStream;

    .line 60
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->socketIn:Ljava/io/InputStream;

    .line 61
    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;Ljava/io/InputStream;)Z
    .locals 1

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->discardStream(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->socketIn:Ljava/io/InputStream;

    return-object v0
.end method

.method private static discardStream(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;Ljava/io/InputStream;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 188
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 189
    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_0

    .line 193
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v2

    .line 194
    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :try_start_1
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->skipAll(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final createRequestBody()Ljava/io/OutputStream;
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->isChunked()Z

    move-result v0

    .line 65
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->getChunkLength()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getHttpMinorVersion()I

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->setChunked()V

    .line 69
    const/4 v0, 0x1

    .line 73
    :cond_0
    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->getChunkLength()I

    move-result v0

    .line 75
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 76
    const/16 v0, 0x400

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->writeRequestHeaders()V

    .line 79
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->requestOut:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;-><init>(Ljava/io/OutputStream;ILcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$1;)V

    move-object v0, v1

    .line 105
    :goto_0
    return-object v0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->getFixedContentLength()J

    move-result-wide v1

    .line 84
    cmp-long v0, v1, v5

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->setContentLength(J)V

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->writeRequestHeaders()V

    .line 87
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->requestOut:Ljava/io/OutputStream;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;-><init>(Ljava/io/OutputStream;JLcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$1;)V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getContentLength()J

    move-result-wide v1

    .line 91
    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-lez v0, :cond_4

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_4
    cmp-long v0, v1, v5

    if-eqz v0, :cond_5

    .line 98
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->writeRequestHeaders()V

    .line 99
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;

    long-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;-><init>(I)V

    goto :goto_0

    .line 105
    :cond_5
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;-><init>()V

    goto :goto_0
.end method

.method public final flushRequest()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->socketOut:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->requestOut:Ljava/io/OutputStream;

    .line 111
    return-void
.end method

.method public final getTransferStream(Ljava/net/CacheRequest;)Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;I)V

    .line 223
    :goto_0
    return-object v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->socketIn:Ljava/io/InputStream;

    invoke-direct {v0, v1, p1, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->getContentLength()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 216
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v3, v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->getContentLength()I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;I)V

    goto :goto_0

    .line 223
    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/UnknownLengthHttpInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/UnknownLengthHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;)V

    goto :goto_0
.end method

.method public final makeReusable(ZLjava/io/OutputStream;Ljava/io/InputStream;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 148
    if-eqz p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    if-eqz p2, :cond_2

    check-cast p2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/AbstractOutputStream;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/AbstractOutputStream;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->hasConnectionClose()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->hasConnectionClose()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    :cond_3
    instance-of v1, p3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/UnknownLengthHttpInputStream;

    if-nez v1, :cond_0

    .line 171
    if-eqz p3, :cond_4

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-static {v0, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->discardStream(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;Ljava/io/InputStream;)Z

    move-result v0

    goto :goto_0

    .line 175
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final readResponseHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->socketIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->fromBytes(Ljava/io/InputStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getHttpMinorVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->setHttpMinorVersion(I)V

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->receiveHeaders(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V

    .line 141
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V

    .line 142
    const-string/jumbo v0, "http/1.1"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->setTransport(Ljava/lang/String;)V

    .line 143
    return-object v1
.end method

.method public final writeRequestBody(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->writeToSocket(Ljava/io/OutputStream;)V

    .line 115
    return-void
.end method

.method public final writeRequestHeaders()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->toBytes()[B

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 134
    return-void
.end method
