.class final Lcom/alipay/mobile/common/transportext/biz/spdy/Job;
.super Ljava/lang/Object;
.source "Job.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final connection:Ljava/net/HttpURLConnection;

.field final dispatcher:Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;

.field final request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

.field final responseReceiver:Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Receiver;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;Ljava/net/HttpURLConnection;Lcom/alipay/mobile/common/transportext/biz/spdy/Request;Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Receiver;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->dispatcher:Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;

    .line 30
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    .line 31
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    .line 32
    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->responseReceiver:Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Receiver;

    .line 33
    return-void
.end method

.method private readResponse()Lcom/alipay/mobile/common/transportext/biz/spdy/Response;
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 72
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Request;I)V

    .line 74
    const/4 v0, 0x0

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_0

    .line 77
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher$RealResponseBody;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher$RealResponseBody;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->body(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;)Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;

    .line 83
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->build()Lcom/alipay/mobile/common/transportext/biz/spdy/Response;

    move-result-object v0

    return-object v0
.end method

.method private sendRequest()Ljava/net/HttpURLConnection;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 52
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->headerCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->headerName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->headerValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->body()Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 58
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;->contentLength()J

    move-result-wide v2

    .line 59
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 65
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;->writeTo(Ljava/io/OutputStream;)V

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    return-object v0

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 37
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->sendRequest()Ljava/net/HttpURLConnection;

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->readResponse()Lcom/alipay/mobile/common/transportext/biz/spdy/Response;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->responseReceiver:Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Receiver;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Receiver;->onResponse(Lcom/alipay/mobile/common/transportext/biz/spdy/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->dispatcher:Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;->finished(Lcom/alipay/mobile/common/transportext/biz/spdy/Job;)V

    .line 48
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->responseReceiver:Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Receiver;

    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;->request(Lcom/alipay/mobile/common/transportext/biz/spdy/Request;)Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;->exception(Ljava/lang/Throwable;)Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;->build()Lcom/alipay/mobile/common/transportext/biz/spdy/Failure;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Receiver;->onFailure(Lcom/alipay/mobile/common/transportext/biz/spdy/Failure;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->dispatcher:Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;->finished(Lcom/alipay/mobile/common/transportext/biz/spdy/Job;)V

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 47
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Job;->dispatcher:Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;->finished(Lcom/alipay/mobile/common/transportext/biz/spdy/Job;)V

    throw v0
.end method
