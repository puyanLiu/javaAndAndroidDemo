.class public Lanetwork/channel/http/ConnectionHelper;
.super Ljava/lang/Object;
.source "ConnectionHelper.java"


# static fields
.field private static final synthetic a:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic c:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "ConnectionHelper.java"

    const-class v2, Lanetwork/channel/http/ConnectionHelper;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getOutputStream"

    const-string/jumbo v3, "java.net.HttpURLConnection"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "java.io.OutputStream"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xbd

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lanetwork/channel/http/ConnectionHelper;->a:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getInputStream"

    const-string/jumbo v3, "java.net.HttpURLConnection"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "java.io.InputStream"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xd5

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lanetwork/channel/http/ConnectionHelper;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "openConnection"

    const-string/jumbo v3, "java.net.URL"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "java.net.URLConnection"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x141

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lanetwork/channel/http/ConnectionHelper;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/statist/Repeater;Lanetwork/channel/statist/Statistics;)Lanetwork/channel/entity/Result;
    .locals 18

    .prologue
    .line 67
    const/4 v11, 0x0

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v7, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v5, 0x0

    .line 72
    new-instance v12, Lanetwork/channel/entity/Result;

    invoke-direct {v12}, Lanetwork/channel/entity/Result;-><init>()V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->A()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "api.m.taobao.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lanetwork/channel/dns/DnsMgr;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->i()Ljava/net/URL;

    move-result-object v2

    move-object v4, v2

    .line 80
    :goto_1
    const-string/jumbo v2, "ANet.ConnectionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "REQUEST_URL:"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    if-nez v4, :cond_3

    .line 82
    const/4 v2, -0x6

    move v3, v6

    move-object v4, v7

    move v6, v2

    move v2, v5

    move-object v5, v8

    .line 160
    :goto_2
    invoke-virtual {v12, v6}, Lanetwork/channel/entity/Result;->a(I)V

    .line 161
    invoke-virtual {v12, v4}, Lanetwork/channel/entity/Result;->a([B)V

    .line 162
    invoke-virtual {v12, v3}, Lanetwork/channel/entity/Result;->a(Z)V

    .line 163
    invoke-virtual {v12, v5}, Lanetwork/channel/entity/Result;->a(Ljava/util/Map;)V

    .line 164
    invoke-virtual {v12, v2}, Lanetwork/channel/entity/Result;->b(Z)V

    .line 165
    return-object v12

    .line 73
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->j()Ljava/net/URL;

    move-result-object v2

    .line 78
    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->B()V

    move-object v4, v2

    goto :goto_1

    .line 83
    :cond_3
    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->a()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    move-result-object v2

    sget-object v3, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    if-ne v2, v3, :cond_4

    .line 84
    const/4 v2, -0x1

    move v3, v6

    move-object v4, v7

    move v6, v2

    move v2, v5

    move-object v5, v8

    goto :goto_2

    .line 86
    :cond_4
    const/4 v9, 0x0

    .line 88
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lanetwork/channel/statist/Statistics;->a()V

    .line 89
    sget-object v2, Lanetwork/channel/http/ConnectionHelper;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v10

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v10}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "n/a"

    instance-of v13, v2, Ljava/net/URL;

    if-eqz v13, :cond_1a

    check-cast v2, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v13, "Monitor"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, " URL.open(): "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " at: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v10

    invoke-interface {v10}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v13, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/io/InterruptedIOException;

    const-string/jumbo v3, "trafic beyond limit"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 125
    :catch_0
    move-exception v2

    move-object v3, v8

    move v6, v11

    move-object v8, v2

    .line 126
    :goto_4
    const/4 v2, 0x1

    .line 127
    if-nez v6, :cond_5

    .line 128
    const/4 v6, -0x1

    .line 130
    :cond_5
    :try_start_1
    invoke-static/range {p0 .. p0}, Lanetwork/channel/http/ConnectionHelper;->a(Lanetwork/channel/entity/RequestConfig;)V

    .line 131
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lanetwork/channel/statist/Statistics;->a(Ljava/net/URL;)V

    .line 132
    const-string/jumbo v10, "ANet.ConnectionHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "SocketTimeout url="

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v8}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 150
    if-eqz v9, :cond_6

    .line 151
    :try_start_2
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_c

    :cond_6
    move-object v4, v7

    move/from16 v16, v2

    move v2, v5

    move-object v5, v3

    move/from16 v3, v16

    .line 155
    goto/16 :goto_2

    .line 89
    :cond_7
    :try_start_3
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/URLConnection;

    check-cast v2, Ljava/net/HttpURLConnection;

    const-string/jumbo v3, "https"

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v10, 0x8

    if-ge v3, v10, :cond_b

    const-string/jumbo v3, "ANet.ConnectionHelper"

    const-string/jumbo v10, "Froyo \u4ee5\u4e0b\u7248\u672c\u4e0d\u652f\u6301https"

    invoke-static {v3, v10}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lanetwork/channel/http/ConnectionHelper;->a(Ljava/net/HttpURLConnection;Lanetwork/channel/entity/RequestConfig;)V

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 90
    if-eqz v2, :cond_19

    .line 91
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lanetwork/channel/statist/Statistics;->b()V

    .line 92
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 93
    invoke-virtual/range {p2 .. p2}, Lanetwork/channel/statist/Statistics;->c()V

    .line 94
    const-string/jumbo v3, "ANet.ConnectionHelper"

    const-string/jumbo v9, "[postData]"

    invoke-static {v3, v9}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "POST"

    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v3

    if-eqz v3, :cond_9

    const/4 v10, 0x0

    :try_start_5
    sget-object v3, Lanetwork/channel/http/ConnectionHelper;->a:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v9, 0x0

    invoke-static {v3, v9, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v9

    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$27$61641fbb(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lanetwork/channel/entity/RequestConfig;->a(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_16
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v9, :cond_9

    :try_start_9
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 95
    :cond_9
    :goto_6
    :try_start_a
    invoke-virtual/range {p2 .. p2}, Lanetwork/channel/statist/Statistics;->d()V

    .line 96
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v10

    .line 97
    const/16 v3, 0x1f4

    if-ne v10, v3, :cond_12

    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->A()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 98
    invoke-static/range {p0 .. p0}, Lanetwork/channel/http/ConnectionHelper;->a(Lanetwork/channel/entity/RequestConfig;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->B()V
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_15
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 100
    const/4 v5, 0x1

    move v3, v5

    move-object v4, v7

    move-object v5, v8

    move v7, v10

    .line 150
    :goto_7
    if-eqz v2, :cond_a

    .line 151
    :try_start_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_b

    :cond_a
    move v2, v3

    move v3, v6

    move v6, v7

    .line 155
    goto/16 :goto_2

    .line 89
    :cond_b
    :try_start_d
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    const/4 v10, 0x0

    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->d()Lorg/apache/http/HttpHost;

    move-result-object v13

    if-eqz v13, :cond_c

    new-instance v10, Lanetwork/channel/https/SSLTunnelSocketFactory;

    invoke-virtual {v13}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v13

    invoke-static {}, Lanetwork/channel/entity/RequestConfig;->e()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v14, v13, v15}, Lanetwork/channel/https/SSLTunnelSocketFactory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :cond_c
    if-eqz v10, :cond_d

    invoke-virtual {v3, v10}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_d
    new-instance v10, Lanetwork/channel/http/a;

    invoke-direct {v10, v3}, Lanetwork/channel/http/a;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {v3, v10}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_5

    .line 134
    :catch_1
    move-exception v2

    move-object v3, v8

    move-object v8, v2

    .line 135
    :goto_8
    const/4 v2, 0x1

    .line 136
    if-nez v11, :cond_18

    .line 137
    const/4 v6, -0x1

    .line 139
    :goto_9
    :try_start_e
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lanetwork/channel/statist/Statistics;->b(Ljava/net/URL;)V

    .line 140
    const-string/jumbo v10, "ANet.ConnectionHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "ConnectTimeout url="

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v8}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 150
    if-eqz v9, :cond_e

    .line 151
    :try_start_f
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_d

    :cond_e
    move-object v4, v7

    move/from16 v16, v2

    move v2, v5

    move-object v5, v3

    move/from16 v3, v16

    .line 155
    goto/16 :goto_2

    .line 94
    :catch_2
    move-exception v9

    :try_start_10
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$27$61641fbb(Lorg/aspectj/lang/JoinPoint;)V

    throw v9
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :catch_3
    move-exception v3

    move-object v9, v10

    :goto_a
    :try_start_11
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v9, :cond_9

    :try_start_12
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_6

    :catch_4
    move-exception v3

    :try_start_13
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 125
    :catch_5
    move-exception v3

    move-object v9, v2

    move v6, v11

    move-object/from16 v16, v8

    move-object v8, v3

    move-object/from16 v3, v16

    goto/16 :goto_4

    .line 94
    :catch_6
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_6

    .line 134
    :catch_7
    move-exception v3

    move-object v9, v2

    move-object/from16 v16, v3

    move-object v3, v8

    move-object/from16 v8, v16

    goto :goto_8

    .line 94
    :catchall_0
    move-exception v3

    :goto_b
    if-eqz v10, :cond_f

    :try_start_14
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_f
    :goto_c
    :try_start_15
    throw v3
    :try_end_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 142
    :catch_8
    move-exception v3

    move-object v9, v2

    move-object v2, v8

    move-object v8, v3

    .line 143
    :goto_d
    if-nez v11, :cond_17

    .line 144
    const/4 v3, -0x1

    .line 146
    :goto_e
    :try_start_16
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lanetwork/channel/statist/Statistics;->a(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v10, "ANet.ConnectionHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Exception occur url="

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v8}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 150
    if-eqz v9, :cond_10

    .line 151
    :try_start_17
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_e

    :cond_10
    move-object v4, v7

    move/from16 v16, v6

    move v6, v3

    move/from16 v3, v16

    move-object/from16 v17, v2

    move v2, v5

    move-object/from16 v5, v17

    .line 155
    goto/16 :goto_2

    .line 94
    :catch_9
    move-exception v9

    :try_start_18
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_18 .. :try_end_18} :catch_7
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto :goto_c

    .line 149
    :catchall_1
    move-exception v3

    move-object v9, v2

    move-object v2, v3

    .line 150
    :goto_f
    if-eqz v9, :cond_11

    .line 151
    :try_start_19
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_f

    .line 155
    :cond_11
    :goto_10
    throw v2

    .line 102
    :cond_12
    :try_start_1a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    const-string/jumbo v3, "ANet.ConnectionHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "[readResponseHeads]"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " header"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lanetwork/channel/http/ConnectionHelper;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1a
    .catch Ljava/net/SocketTimeoutException; {:try_start_1a .. :try_end_1a} :catch_15
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1a .. :try_end_1a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_11
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 103
    :try_start_1b
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lanetwork/channel/statist/Statistics;->a(Ljava/util/Map;)V

    .line 104
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v9}, Lanetwork/channel/statist/Repeater;->a(ILjava/util/Map;)V

    .line 105
    const-string/jumbo v3, "ANet.ConnectionHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "url:"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " response code:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " response header:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v3, 0x0

    const/16 v8, 0x12c

    if-lt v10, v8, :cond_13

    const/16 v8, 0x190

    if-ge v10, v8, :cond_13

    const/16 v8, 0x130

    if-eq v10, v8, :cond_13

    const/4 v3, 0x1

    :cond_13
    if-eqz v3, :cond_16

    invoke-virtual/range {p0 .. p0}, Lanetwork/channel/entity/RequestConfig;->k()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 107
    const-string/jumbo v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 108
    const-string/jumbo v3, "ANet.ConnectionHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "location: "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-eqz v8, :cond_14

    .line 110
    const-string/jumbo v3, "http"

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 112
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 116
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lanetwork/channel/entity/RequestConfig;->a(Ljava/net/URL;)V

    .line 117
    invoke-virtual {v12}, Lanetwork/channel/entity/Result;->a()V

    :cond_14
    move v3, v5

    move-object v4, v7

    move-object v5, v9

    move v7, v10

    .line 119
    goto/16 :goto_7

    .line 114
    :cond_15
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4, v8}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_11

    .line 125
    :catch_a
    move-exception v3

    move-object v8, v3

    move v6, v10

    move-object v3, v9

    move-object v9, v2

    goto/16 :goto_4

    .line 120
    :cond_16
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v2, v0, v1}, Lanetwork/channel/http/ConnectionHelper;->a(Ljava/net/HttpURLConnection;Lanetwork/channel/statist/Repeater;Lanetwork/channel/statist/Statistics;)[B
    :try_end_1b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b .. :try_end_1b} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1b .. :try_end_1b} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_12
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    move-result-object v7

    move v3, v5

    move-object v4, v7

    move-object v5, v9

    move v7, v10

    goto/16 :goto_7

    .line 153
    :catch_b
    move-exception v2

    .line 154
    const-string/jumbo v8, "ANet.ConnectionHelper"

    const-string/jumbo v9, "http disconnect Exception."

    invoke-static {v8, v9, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    move v3, v6

    move v6, v7

    .line 157
    goto/16 :goto_2

    .line 153
    :catch_c
    move-exception v4

    .line 154
    const-string/jumbo v8, "ANet.ConnectionHelper"

    const-string/jumbo v9, "http disconnect Exception."

    invoke-static {v8, v9, v4}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v7

    move/from16 v16, v2

    move v2, v5

    move-object v5, v3

    move/from16 v3, v16

    .line 157
    goto/16 :goto_2

    .line 153
    :catch_d
    move-exception v4

    .line 154
    const-string/jumbo v8, "ANet.ConnectionHelper"

    const-string/jumbo v9, "http disconnect Exception."

    invoke-static {v8, v9, v4}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v7

    move/from16 v16, v2

    move v2, v5

    move-object v5, v3

    move/from16 v3, v16

    .line 157
    goto/16 :goto_2

    .line 153
    :catch_e
    move-exception v4

    .line 154
    const-string/jumbo v8, "ANet.ConnectionHelper"

    const-string/jumbo v9, "http disconnect Exception."

    invoke-static {v8, v9, v4}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v7

    move/from16 v16, v6

    move v6, v3

    move/from16 v3, v16

    move-object/from16 v17, v2

    move v2, v5

    move-object/from16 v5, v17

    .line 157
    goto/16 :goto_2

    .line 153
    :catch_f
    move-exception v3

    .line 154
    const-string/jumbo v4, "ANet.ConnectionHelper"

    const-string/jumbo v5, "http disconnect Exception."

    invoke-static {v4, v5, v3}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 149
    :catchall_2
    move-exception v2

    goto/16 :goto_f

    .line 142
    :catch_10
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v8

    move-object/from16 v8, v16

    goto/16 :goto_d

    :catch_11
    move-exception v3

    move-object v9, v2

    move v11, v10

    move-object v2, v8

    move-object v8, v3

    goto/16 :goto_d

    :catch_12
    move-exception v3

    move-object v8, v3

    move v11, v10

    move-object/from16 v16, v9

    move-object v9, v2

    move-object/from16 v2, v16

    goto/16 :goto_d

    .line 134
    :catch_13
    move-exception v3

    move-object v9, v2

    move v11, v10

    move-object/from16 v16, v8

    move-object v8, v3

    move-object/from16 v3, v16

    goto/16 :goto_8

    :catch_14
    move-exception v3

    move-object v8, v3

    move v11, v10

    move-object v3, v9

    move-object v9, v2

    goto/16 :goto_8

    .line 125
    :catch_15
    move-exception v3

    move-object v9, v2

    move v6, v10

    move-object/from16 v16, v8

    move-object v8, v3

    move-object/from16 v3, v16

    goto/16 :goto_4

    .line 94
    :catchall_3
    move-exception v3

    move-object v10, v9

    goto/16 :goto_b

    :catch_16
    move-exception v3

    goto/16 :goto_a

    :cond_17
    move v3, v11

    goto/16 :goto_e

    :cond_18
    move v6, v11

    goto/16 :goto_9

    :cond_19
    move v3, v5

    move-object v4, v7

    move-object v5, v8

    move v7, v11

    goto/16 :goto_7

    :cond_1a
    move-object v2, v3

    goto/16 :goto_3
.end method

.method private static a(Lanetwork/channel/entity/RequestConfig;)V
    .locals 2

    .prologue
    .line 168
    if-nez p0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanetwork/channel/dns/DnsMgr;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 293
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 299
    if-eqz v1, :cond_2

    const-string/jumbo v3, "Set-cookie"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "Set-cookie2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    :try_start_1
    invoke-static {v0}, Lanetwork/channel/cookie/HttpCookie;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/cookie/HttpCookie;

    .line 304
    const-string/jumbo v4, "ANet.ConnectionHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "store cookie:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lanetwork/channel/cookie/HttpCookie;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    invoke-virtual {v0}, Lanetwork/channel/cookie/HttpCookie;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 307
    :catch_0
    move-exception v0

    .line 308
    :try_start_2
    const-string/jumbo v3, "ANet.ConnectionHelper"

    const-string/jumbo v4, "store cookies error"

    invoke-static {v3, v4, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 314
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 311
    :cond_5
    :try_start_3
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method private static a(Ljava/net/HttpURLConnection;Lanetwork/channel/entity/RequestConfig;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 371
    if-eqz p0, :cond_6

    .line 372
    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->b()I

    move-result v0

    .line 373
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 374
    const-string/jumbo v1, "ANet.ConnectionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "REQUEST_CONNECTTIMEOUT:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->c()I

    move-result v0

    .line 376
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 377
    const-string/jumbo v1, "ANet.ConnectionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "REQUEST_READTIMEOUT:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 379
    if-eqz v3, :cond_1

    .line 381
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 383
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_0
    const-string/jumbo v1, "Host"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_1
    const-string/jumbo v0, "User-Agent"

    invoke-static {}, Lanetwork/channel/entity/RequestConfig;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string/jumbo v0, "TB-UA"

    invoke-static {}, Lanetwork/channel/entity/RequestConfig;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string/jumbo v0, "Accept-Encoding"

    invoke-static {}, Lanetwork/channel/entity/RequestConfig;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "keep-alive"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->l()Ljava/util/List;

    move-result-object v4

    .line 396
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 397
    monitor-enter v4

    move v1, v2

    .line 398
    :goto_0
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 400
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 401
    if-eqz v0, :cond_2

    .line 402
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 405
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :cond_4
    const-string/jumbo v0, "ANet.ConnectionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "REQUEST_HEADER:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "  url:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 411
    :try_start_1
    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 412
    const-string/jumbo v0, "ANet.ConnectionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "REQUEST_METHOD:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    :goto_1
    const-string/jumbo v0, "POST"

    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 417
    invoke-virtual {p0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 418
    invoke-virtual {p0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 421
    :cond_5
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_6

    .line 422
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 425
    :cond_6
    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    const-string/jumbo v1, "ANet.ConnectionHelper"

    const-string/jumbo v2, "conn.setRequestMethod error."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Ljava/net/HttpURLConnection;Lanetwork/channel/statist/Repeater;Lanetwork/channel/statist/Statistics;)[B
    .locals 16

    .prologue
    .line 209
    const/4 v6, 0x0

    .line 211
    const/4 v1, 0x0

    .line 213
    :try_start_0
    sget-object v2, Lanetwork/channel/http/ConnectionHelper;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$22$4ac36c16(Lorg/aspectj/lang/JoinPoint;)V

    move-object v8, v2

    .line 222
    :goto_0
    if-nez v8, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 281
    :goto_1
    return-object v1

    .line 213
    :catch_0
    move-exception v2

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$22$4ac36c16(Lorg/aspectj/lang/JoinPoint;)V

    throw v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 214
    :catch_1
    move-exception v2

    .line 216
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 220
    :goto_2
    const-string/jumbo v3, "ANet.ConnectionHelper"

    const-string/jumbo v4, "getInputStream error"

    invoke-static {v3, v4, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v1

    goto :goto_0

    .line 218
    :catch_2
    move-exception v3

    const-string/jumbo v3, "ANet.ConnectionHelper"

    const-string/jumbo v4, "getErrorStream error"

    invoke-static {v3, v4, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 225
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 226
    const/4 v1, 0x0

    .line 228
    if-eqz v2, :cond_1

    const-string/jumbo v3, "gzip"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 229
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 230
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 234
    :goto_3
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 235
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v10, v3

    .line 237
    const/4 v4, 0x1

    .line 238
    const/4 v3, 0x0

    .line 239
    const/16 v5, 0x800

    new-array v12, v5, [B

    .line 240
    const/4 v5, 0x0

    move v7, v4

    .line 242
    :goto_4
    const/4 v4, 0x0

    const/16 v13, 0x800

    :try_start_4
    invoke-virtual {v2, v12, v4, v13}, Ljava/io/DataInputStream;->read([BII)I

    move-result v13

    const/4 v4, -0x1

    if-eq v13, v4, :cond_2

    .line 243
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 244
    const/4 v5, 0x0

    :try_start_5
    invoke-virtual {v9, v12, v5, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 245
    const/4 v5, 0x0

    invoke-virtual {v4, v12, v5, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 246
    if-eqz v7, :cond_d

    .line 247
    invoke-virtual/range {p2 .. p2}, Lanetwork/channel/statist/Statistics;->e()V

    .line 248
    const/4 v5, 0x0

    .line 250
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 251
    const-string/jumbo v7, "ANet.ConnectionHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "index:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ch:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    long-to-int v7, v10

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v13, v7, v14}, Lanetwork/channel/statist/Repeater;->a(III[B)V

    .line 253
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v7, v5

    move-object v5, v4

    goto :goto_4

    .line 232
    :cond_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_3

    .line 255
    :cond_2
    :try_start_6
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    .line 260
    if-eqz v5, :cond_3

    .line 261
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 262
    :cond_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 266
    if-eqz v1, :cond_4

    .line 269
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 270
    :cond_4
    if-eqz v8, :cond_5

    .line 273
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 280
    :cond_5
    :goto_6
    if-nez v3, :cond_b

    const-wide/16 v1, 0x0

    :goto_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Lanetwork/channel/statist/Statistics;->a(J)V

    move-object v1, v3

    .line 281
    goto/16 :goto_1

    .line 256
    :catch_3
    move-exception v3

    .line 258
    :goto_8
    :try_start_7
    const-string/jumbo v5, "TAG"

    const-string/jumbo v7, "readResponseContent error"

    invoke-static {v5, v7, v3}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 260
    if-eqz v4, :cond_6

    .line 261
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 262
    :cond_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 266
    if-eqz v1, :cond_7

    .line 269
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 270
    :cond_7
    if-eqz v8, :cond_c

    .line 273
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    move-object v3, v6

    .line 274
    goto :goto_6

    .line 260
    :catchall_0
    move-exception v3

    :goto_9
    if-eqz v4, :cond_8

    .line 261
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 262
    :cond_8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 266
    if-eqz v1, :cond_9

    .line 269
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 270
    :cond_9
    if-eqz v8, :cond_a

    .line 273
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 274
    :cond_a
    throw v3

    .line 280
    :cond_b
    array-length v1, v3

    int-to-long v1, v1

    goto :goto_7

    .line 260
    :catchall_1
    move-exception v3

    move-object v4, v5

    goto :goto_9

    .line 256
    :catch_4
    move-exception v3

    move-object v4, v5

    goto :goto_8

    :cond_c
    move-object v3, v6

    goto :goto_6

    :cond_d
    move v5, v7

    goto/16 :goto_5
.end method
