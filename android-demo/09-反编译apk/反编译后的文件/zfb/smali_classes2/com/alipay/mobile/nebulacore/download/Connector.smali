.class public Lcom/alipay/mobile/nebulacore/download/Connector;
.super Ljava/lang/Object;
.source "Connector.java"


# static fields
.field public static final IO_BUFFER_SIZE:I = 0x4000

.field public static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final synthetic g:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

.field private b:Lorg/apache/http/HttpResponse;

.field private c:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private d:Lorg/apache/http/client/methods/HttpRequestBase;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "Connector.java"

    const-class v2, Lcom/alipay/mobile/nebulacore/download/Connector;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "11"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "org.apache.http.impl.client.DefaultHttpClient"

    const-string/jumbo v4, "org.apache.http.client.methods.HttpUriRequest"

    const-string/jumbo v5, "request"

    const-string/jumbo v6, "java.io.IOException:org.apache.http.client.ClientProtocolException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x76

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/download/Connector;->g:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulacore/download/ConnectInfo;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/download/Connector;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->a:Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    .line 53
    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 13

    .prologue
    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->a:Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    if-nez v1, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 194
    :goto_0
    return v1

    .line 68
    :cond_0
    const-string/jumbo v1, "Connector"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->a:Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->a:Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    const/4 v1, 0x0

    goto :goto_0

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->a:Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->getMethod()Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    move-result-object v9

    .line 77
    sget-object v2, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->GET:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    if-ne v9, v2, :cond_4

    .line 78
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 90
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->a:Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->getHeaders()Ljava/util/HashMap;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->a:Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->getUploadEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 99
    instance-of v1, v2, Lcom/alipay/mobile/nebulacore/download/UploadEntity;

    if-eqz v1, :cond_2

    move-object v1, v2

    .line 100
    check-cast v1, Lcom/alipay/mobile/nebulacore/download/UploadEntity;

    .line 101
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->setListener(Lcom/alipay/mobile/nebulacore/download/TransferListener;)V

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    instance-of v1, v1, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v1, :cond_3

    .line 105
    if-eqz v2, :cond_3

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v1, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->a:Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->getTimeout()I

    move-result v1

    .line 110
    if-gtz v1, :cond_9

    .line 111
    const/4 v1, 0x0

    goto :goto_0

    .line 79
    :cond_4
    sget-object v2, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->POST:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    if-ne v9, v2, :cond_5

    .line 80
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_1

    .line 81
    :cond_5
    sget-object v2, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->PUT:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    if-ne v9, v2, :cond_6

    .line 82
    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_1

    .line 83
    :cond_6
    sget-object v2, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->DELETE:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    if-ne v9, v2, :cond_7

    .line 84
    new-instance v2, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_1

    .line 86
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 92
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v5, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 114
    :cond_9
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/download/HttpClient;->getHttpClient(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 118
    :try_start_0
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Connector;->g:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, v7, v8}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v10

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v10}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v3, "n/a"

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    if-eqz v6, :cond_c

    const/4 v1, 0x0

    array-length v11, v6

    if-lez v11, :cond_d

    const/4 v11, 0x0

    aget-object v11, v6, v11

    if-eqz v11, :cond_d

    const/4 v11, 0x0

    aget-object v11, v6, v11

    instance-of v11, v11, Lorg/apache/http/HttpRequest;

    if-eqz v11, :cond_d

    const/4 v1, 0x0

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    :cond_a
    :goto_3
    if-eqz v1, :cond_f

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    if-eqz v6, :cond_24

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "operationType"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "#"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_b
    :goto_4
    const-string/jumbo v3, "Host"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    :goto_5
    instance-of v2, v1, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_22

    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    :goto_6
    move-wide v4, v1

    move-object v2, v3

    move-object v3, v6

    :cond_c
    :goto_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "Monitor"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, " HttpClient.execute(): "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " at: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v10}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v10

    invoke-interface {v10}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v6, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Ljava/io/InterruptedIOException;

    const-string/jumbo v2, "trafic beyond limit"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    :try_start_1
    const-string/jumbo v2, "Connector"

    const-string/jumbo v3, "exception detail"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->b:Lorg/apache/http/HttpResponse;

    if-nez v1, :cond_14

    .line 124
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 118
    :cond_d
    :try_start_2
    array-length v11, v6

    const/4 v12, 0x1

    if-le v11, v12, :cond_a

    const/4 v11, 0x1

    aget-object v11, v6, v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    aget-object v11, v6, v11

    instance-of v11, v11, Lorg/apache/http/HttpRequest;

    if-eqz v11, :cond_a

    const/4 v1, 0x1

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    goto/16 :goto_3

    :cond_e
    const-wide/16 v1, -0x1

    goto :goto_6

    :cond_f
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "Monitor"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "unkown request type:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v12

    invoke-interface {v12}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v6, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7

    .line 122
    :catchall_0
    move-exception v1

    .line 123
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->b:Lorg/apache/http/HttpResponse;

    if-nez v2, :cond_15

    .line 124
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 118
    :cond_10
    :try_start_3
    invoke-virtual {v7, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    const-wide/16 v6, -0x1

    if-eqz v8, :cond_11

    instance-of v1, v8, Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_13

    move-object v0, v8

    check-cast v0, Lorg/apache/http/HttpResponse;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    :cond_11
    :goto_8
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    check-cast v8, Lorg/apache/http/HttpResponse;

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->b:Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->b:Lorg/apache/http/HttpResponse;

    if-nez v1, :cond_16

    .line 124
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 118
    :cond_12
    const-wide/16 v6, -0x1

    goto :goto_8

    :cond_13
    :try_start_4
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
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    .line 121
    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 126
    :cond_15
    throw v1

    .line 128
    :cond_16
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->b:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->e:I

    .line 129
    const-string/jumbo v1, "Connector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mStatusCode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->b:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 134
    if-nez v2, :cond_17

    .line 135
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 139
    :cond_17
    :try_start_5
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v3

    .line 144
    if-nez v3, :cond_19

    .line 145
    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 144
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 142
    :catchall_1
    move-exception v2

    .line 144
    if-nez v1, :cond_18

    .line 145
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 147
    :cond_18
    throw v2

    .line 150
    :cond_19
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->a:Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->getDownloadEntity()Lcom/alipay/mobile/nebulacore/download/DownloadEntity;

    move-result-object v1

    .line 151
    sget-object v4, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->GET:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    if-ne v9, v4, :cond_1d

    if-eqz v1, :cond_1d

    .line 152
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->size(Ljava/lang/String;)J

    move-result-wide v4

    .line 155
    iget v6, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->e:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1b

    .line 156
    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->seek(J)V

    .line 164
    :goto_9
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    .line 165
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_1a

    .line 166
    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->setLength(J)V

    .line 169
    :cond_1a
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->input(Ljava/io/InputStream;)Z

    move-result v1

    goto/16 :goto_0

    .line 157
    :cond_1b
    iget v6, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->e:I

    const/16 v7, 0xce

    if-ne v6, v7, :cond_1c

    .line 158
    invoke-virtual {v1, v4, v5}, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->seek(J)V

    goto :goto_9

    .line 160
    :cond_1c
    const-string/jumbo v1, "Connector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unhandled status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 172
    :cond_1d
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int v1, v1

    .line 173
    if-gez v1, :cond_1e

    .line 174
    const/16 v1, 0x4000

    .line 177
    :cond_1e
    :try_start_6
    new-instance v2, Ljava/io/InputStreamReader;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 178
    new-instance v3, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v3, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 179
    const/16 v1, 0x4000

    new-array v1, v1, [C

    .line 181
    :goto_a
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1f

    .line 184
    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->f:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 188
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->f:Ljava/lang/String;

    if-nez v1, :cond_21

    .line 189
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 182
    :cond_1f
    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {v3, v1, v5, v4}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_a

    .line 185
    :catch_2
    move-exception v1

    .line 186
    :try_start_8
    const-string/jumbo v2, "Connector"

    const-string/jumbo v3, "exception detail"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 188
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->f:Ljava/lang/String;

    if-nez v1, :cond_21

    .line 189
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 187
    :catchall_2
    move-exception v1

    .line 188
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->f:Ljava/lang/String;

    if-nez v2, :cond_20

    .line 189
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 191
    :cond_20
    throw v1

    .line 193
    :cond_21
    const-string/jumbo v1, "Connector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[response] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_22
    move-object v2, v3

    move-object v3, v6

    goto/16 :goto_7

    :cond_23
    move-object v3, v2

    goto/16 :goto_5

    :cond_24
    move-object v6, v3

    goto/16 :goto_4
.end method

.method public disconnect()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    if-nez v1, :cond_0

    .line 200
    const-string/jumbo v1, "Connector"

    const-string/jumbo v2, "invalid request"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return v0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->d:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 206
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v1, :cond_1

    .line 207
    const-string/jumbo v1, "Connector"

    const-string/jumbo v2, "invalid client"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 213
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getConnectInfo()Lcom/alipay/mobile/nebulacore/download/ConnectInfo;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->a:Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->e:I

    return v0
.end method

.method public setConnectInfo(Lcom/alipay/mobile/nebulacore/download/ConnectInfo;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/Connector;->a:Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    .line 61
    return-void
.end method
