.class public Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final synthetic h:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private final c:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

.field private e:Z

.field private f:I

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "AsyncHttpRequest.java"

    const-class v2, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "11"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "org.apache.http.impl.client.AbstractHttpClient"

    const-string/jumbo v4, "org.apache.http.client.methods.HttpUriRequest:org.apache.http.protocol.HttpContext"

    const-string/jumbo v5, "request:context"

    const-string/jumbo v6, "java.io.IOException:org.apache.http.client.ClientProtocolException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x43

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->h:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p3, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->b:Lorg/apache/http/protocol/HttpContext;

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->g:Landroid/content/Context;

    iput-object p4, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p5, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    instance-of v0, p5, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->e:Z

    :cond_0
    return-void
.end method

.method private a()V
    .locals 15

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v9

    :goto_0
    if-eqz v2, :cond_b

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v7, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v8, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v10, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->b:Lorg/apache/http/protocol/HttpContext;

    sget-object v1, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->h:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, v7, v8, v10}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v11

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v11}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v3, "n/a"

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    array-length v12, v6

    if-lez v12, :cond_3

    const/4 v12, 0x0

    aget-object v12, v6, v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    aget-object v12, v6, v12

    instance-of v12, v12, Lorg/apache/http/HttpRequest;

    if-eqz v12, :cond_3

    const/4 v1, 0x0

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    :cond_0
    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "operationType"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "#"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    :goto_2
    const-string/jumbo v3, "Host"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    :goto_3
    instance-of v2, v1, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_c

    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    :goto_4
    move-wide v4, v1

    move-object v2, v3

    move-object v3, v6

    :cond_2
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "Monitor"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, " HttpClient.execute(): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " at: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v11}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v11

    invoke-interface {v11}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v6, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/io/InterruptedIOException;

    const-string/jumbo v2, "trafic beyond limit"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v1

    iget v2, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->f:I

    iget-object v3, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v9, v1, v2, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    goto/16 :goto_0

    :cond_3
    :try_start_1
    array-length v12, v6

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    const/4 v12, 0x1

    aget-object v12, v6, v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    aget-object v12, v6, v12

    instance-of v12, v12, Lorg/apache/http/HttpRequest;

    if-eqz v12, :cond_0

    const/4 v1, 0x1

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    goto/16 :goto_1

    :cond_4
    const-wide/16 v1, -0x1

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "Monitor"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "unkown request type:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v13

    invoke-interface {v13}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v6, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NPE in HttpClient"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->f:I

    iget-object v3, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v9, v2, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    move-object v14, v2

    move v2, v1

    move-object v1, v14

    goto/16 :goto_0

    :cond_6
    :try_start_2
    invoke-virtual {v7, v8, v10}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    const-wide/16 v6, -0x1

    if-eqz v8, :cond_7

    instance-of v1, v8, Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_a

    move-object v0, v8

    check-cast v0, Lorg/apache/http/HttpResponse;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    :cond_7
    :goto_6
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    check-cast v8, Lorg/apache/http/HttpResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "makeRequest request:["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]===response[:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v1, v8}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    :cond_8
    return-void

    :cond_9
    const-wide/16 v6, -0x1

    goto :goto_6

    :cond_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v10, "Monitor"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "unkown response type:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :cond_b
    new-instance v2, Ljava/net/ConnectException;

    invoke-direct {v2}, Ljava/net/ConnectException;-><init>()V

    invoke-virtual {v2, v1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :cond_c
    move-object v2, v3

    move-object v3, v6

    goto/16 :goto_5

    :cond_d
    move-object v3, v2

    goto/16 :goto_3

    :cond_e
    move-object v6, v3

    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendStartMessage()V

    :cond_0
    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/taobao/service/appdevice/net/async/NetworkHelper;->checkNetWork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "network connection error["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    :goto_0
    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendFinishMessage()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v1}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendFinishMessage()V

    iget-boolean v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->e:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v1, v0, v4}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method
