.class public Lcom/spdu/httpdns/HttpDnsTools;
.super Ljava/lang/Object;
.source "HttpDnsTools.java"


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

    const-string/jumbo v1, "HttpDnsTools.java"

    const-class v2, Lcom/spdu/httpdns/HttpDnsTools;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

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

    const/16 v2, 0xd0

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/spdu/httpdns/HttpDnsTools;->a:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    const/16 v2, 0x104

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/spdu/httpdns/HttpDnsTools;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    const/16 v2, 0x10c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/spdu/httpdns/HttpDnsTools;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;Lcom/spdu/httpdns/ThreadType;Z)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/spdu/httpdns/ThreadType;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 243
    const/4 v4, 0x0

    .line 246
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v8

    .line 247
    const-string/jumbo v2, "2.0"

    .line 248
    move/from16 v0, p3

    invoke-virtual {v8, v0, p0}, Lcom/spdu/httpdns/b;->a(ZI)Ljava/lang/String;

    move-result-object v5

    .line 249
    invoke-static {}, Lcom/spdu/httpdns/d;->a()Lcom/spdu/httpdns/d;

    invoke-static {p1}, Lcom/spdu/httpdns/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x20

    if-eq v3, v6, :cond_1a

    .line 251
    :cond_0
    const/4 v1, 0x0

    .line 252
    const-string/jumbo v2, "1.0"

    move-object v3, v2

    move-object v2, v1

    .line 255
    :goto_0
    const/4 v1, 0x0

    move-object v6, v4

    move-object v7, v5

    move v5, v1

    :goto_1
    const/4 v1, 0x2

    if-ge v5, v1, :cond_18

    .line 257
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 258
    sget-object v1, Lcom/spdu/httpdns/HttpDnsTools;->a:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v4, 0x0

    invoke-static {v1, v4, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v10

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v10}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v4, "n/a"

    instance-of v11, v1, Ljava/net/URL;

    if-eqz v11, :cond_19

    check-cast v1, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v11, "Monitor"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, " URL.open(): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " at: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v10}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v10

    invoke-interface {v10}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v11, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/InterruptedIOException;

    const-string/jumbo v2, "trafic beyond limit"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v1, "libcore bug"

    invoke-static {v1}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 322
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/spdu/httpdns/b;->a(Z)V

    .line 325
    :cond_1
    :goto_3
    if-eqz p3, :cond_17

    .line 326
    const/4 v1, 0x2

    .line 331
    :goto_4
    return v1

    .line 258
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/URLConnection;

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/spdu/httpdns/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_3

    if-nez v10, :cond_5

    :cond_3
    const/4 v1, 0x0

    .line 259
    :goto_5
    if-eqz v1, :cond_16

    .line 260
    new-instance v4, Ljava/io/OutputStreamWriter;

    sget-object v6, Lcom/spdu/httpdns/HttpDnsTools;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v9, 0x0

    invoke-static {v6, v9, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$27$61641fbb(Lorg/aspectj/lang/JoinPoint;)V

    invoke-direct {v4, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 262
    invoke-virtual {v4, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 267
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 268
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    sget-object v11, Lcom/spdu/httpdns/HttpDnsTools;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v12, 0x0

    invoke-static {v11, v12, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v12

    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$22$4ac36c16(Lorg/aspectj/lang/JoinPoint;)V

    invoke-direct {v10, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 271
    :goto_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 272
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 314
    :catch_1
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    invoke-virtual {v8}, Lcom/spdu/httpdns/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 317
    const/16 p3, 0x1

    .line 319
    :cond_4
    invoke-virtual {v8, p0}, Lcom/spdu/httpdns/b;->a(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 321
    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 322
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/spdu/httpdns/b;->a(Z)V

    goto/16 :goto_3

    .line 258
    :cond_5
    :try_start_8
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "httpdns url : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string/jumbo v9, "POST"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/spdu/httpdns/b;->h()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4}, Lcom/spdu/httpdns/b;->g()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string/jumbo v4, "Connection"

    const-string/jumbo v9, "close"

    invoke-virtual {v1, v4, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "hdns"

    invoke-virtual {v1, v4, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    const-string/jumbo v4, "[getServerConnection] redirrect"

    invoke-static {v4}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    const-string/jumbo v4, ";"

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    if-lez v6, :cond_8

    const-string/jumbo v6, "Cookie"

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v1, v6, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "cookie : "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    aget-object v4, v4, v9

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_6
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_8
    .catch Ljava/lang/AssertionError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    .line 321
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 322
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/spdu/httpdns/b;->a(Z)V

    :cond_7
    throw v1

    .line 258
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 260
    :catch_2
    move-exception v1

    :try_start_9
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$27$61641fbb(Lorg/aspectj/lang/JoinPoint;)V

    throw v1

    .line 268
    :catch_3
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$22$4ac36c16(Lorg/aspectj/lang/JoinPoint;)V

    throw v1

    .line 274
    :cond_9
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 275
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 276
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 277
    const/16 v9, 0xc8

    if-ne v4, v9, :cond_12

    .line 278
    const-string/jumbo v2, "hdns"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_9
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    const/16 v4, 0x20

    if-ge v2, v4, :cond_c

    .line 280
    :cond_a
    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_b

    .line 322
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/spdu/httpdns/b;->a(Z)V

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 282
    :cond_c
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 283
    const-string/jumbo v2, "2.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 284
    invoke-static {v1, v6}, Lcom/spdu/httpdns/HttpDnsTools;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 285
    invoke-virtual {v8, p0}, Lcom/spdu/httpdns/b;->a(I)V

    .line 286
    invoke-static {v7}, Lcom/spdu/httpdns/HttpDnsTools;->c(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/AssertionError; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v1

    .line 287
    if-eqz v1, :cond_e

    .line 288
    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_d

    .line 322
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/spdu/httpdns/b;->a(Z)V

    :cond_d
    const/4 v1, 0x2

    goto/16 :goto_4

    .line 290
    :cond_e
    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_f

    .line 322
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/spdu/httpdns/b;->a(Z)V

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 294
    :cond_10
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Lcom/spdu/httpdns/HttpDnsTools;->a(Ljava/lang/String;J)V

    .line 295
    invoke-static {}, Lcom/spdu/httpdns/b;->q()V
    :try_end_b
    .catch Ljava/lang/AssertionError; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 296
    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_11

    .line 322
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/spdu/httpdns/b;->a(Z)V

    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 298
    :cond_12
    :try_start_c
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "response code :"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    .line 299
    const/16 v6, 0x12e

    if-ne v4, v6, :cond_14

    .line 300
    const-string/jumbo v4, "Set-Cookie"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "redirrectCookie"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v6, "Location"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/AssertionError; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v6

    .line 321
    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_13

    .line 322
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/spdu/httpdns/b;->a(Z)V

    .line 255
    :cond_13
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v7, v6

    move-object v6, v4

    goto/16 :goto_1

    .line 305
    :cond_14
    :try_start_d
    invoke-virtual {v8, p0}, Lcom/spdu/httpdns/b;->a(I)V
    :try_end_d
    .catch Ljava/lang/AssertionError; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 306
    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_15

    .line 322
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/spdu/httpdns/b;->a(Z)V

    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 309
    :cond_16
    :try_start_e
    invoke-static {v7}, Lcom/spdu/httpdns/HttpDnsTools;->c(Ljava/lang/String;)Z

    move-result p3

    .line 310
    invoke-virtual {v8, p0}, Lcom/spdu/httpdns/b;->a(I)V
    :try_end_e
    .catch Ljava/lang/AssertionError; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 321
    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 322
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/spdu/httpdns/b;->a(Z)V

    goto/16 :goto_3

    .line 328
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 331
    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_19
    move-object v1, v4

    goto/16 :goto_2

    :cond_1a
    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_0
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/spdu/httpdns/ThreadType;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u542f\u52a8\u65b0\u57df\u540d\u89e3\u6790\u7ebf\u7a0b   name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_NEWADD:Lcom/spdu/httpdns/ThreadType;

    if-ne p0, v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsCacheTable;->a()Lcom/spdu/httpdns/HttpDnsCacheTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spdu/httpdns/HttpDnsCacheTable;->e()I

    move-result v0

    if-ge v0, v10, :cond_0

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_0
    :goto_0
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v6

    .line 338
    invoke-static {p0}, Lcom/spdu/httpdns/HttpDnsTools;->c(Lcom/spdu/httpdns/ThreadType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 339
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    :cond_1
    return-void

    .line 336
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/spdu/httpdns/b;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    .line 343
    :cond_2
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v1, v2

    .line 344
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x1d

    if-gt v1, v0, :cond_1

    .line 345
    const-string/jumbo v0, ""

    .line 346
    mul-int/lit8 v8, v1, 0x1d

    move v3, v2

    .line 348
    :goto_2
    add-int v4, v8, v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_4

    .line 349
    if-lez v3, :cond_3

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v0, v8, v3

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v4

    goto :goto_2

    .line 354
    :cond_4
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Args is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "----ThreadType--- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    move v3, v2

    move v4, v2

    .line 361
    :goto_3
    const/4 v8, 0x5

    if-ge v4, v8, :cond_6

    .line 362
    invoke-virtual {v6}, Lcom/spdu/httpdns/b;->k()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 365
    invoke-static {v4, v0, p0, v3}, Lcom/spdu/httpdns/HttpDnsTools;->a(ILjava/lang/String;Lcom/spdu/httpdns/ThreadType;Z)I

    move-result v8

    .line 367
    if-eq v8, v5, :cond_6

    .line 368
    if-ne v8, v10, :cond_5

    move v3, v5

    .line 361
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 344
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;J)V
    .locals 24

    .prologue
    .line 388
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsCacheTable;->a()Lcom/spdu/httpdns/HttpDnsCacheTable;

    move-result-object v13

    .line 389
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v14

    .line 390
    invoke-static {}, Lcom/spdu/httpdns/ManagerListener;->a()Lcom/spdu/httpdns/ManagerListener;

    move-result-object v15

    .line 391
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 392
    if-eqz p0, :cond_0

    invoke-virtual {v13}, Lcom/spdu/httpdns/HttpDnsCacheTable;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 393
    :cond_0
    const-string/jumbo v2, "answer is : empty."

    invoke-static {v2}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    .line 535
    :cond_1
    :goto_0
    return-void

    .line 397
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 399
    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_6

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "httpdns answer is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    .line 405
    :cond_3
    :goto_1
    :try_start_0
    new-instance v2, Lorg/json/JSONTokener;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 406
    if-nez v2, :cond_7

    .line 407
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lcom/spdu/httpdns/ManagerListener;->b()I

    move-result v2

    if-lez v2, :cond_4

    .line 408
    new-instance v2, Lcom/spdu/httpdns/DnsEvent;

    invoke-static {}, Lcom/spdu/httpdns/HttpDns;->a()Lcom/spdu/httpdns/HttpDns;

    move-result-object v3

    sget-object v4, Lcom/spdu/httpdns/MessageType;->RESLOVERROR:Lcom/spdu/httpdns/MessageType;

    invoke-direct {v2, v3, v4}, Lcom/spdu/httpdns/DnsEvent;-><init>(Ljava/lang/Object;Lcom/spdu/httpdns/MessageType;)V

    .line 409
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/spdu/httpdns/DnsEvent;->a(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v15}, Lcom/spdu/httpdns/ManagerListener;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 529
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    :cond_5
    const-wide/16 v2, 0x2

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 532
    sget-object v2, Lcom/spdu/httpdns/ThreadType;->HTTPDNSFILE_WRITE:Lcom/spdu/httpdns/ThreadType;

    invoke-static {v2}, Lcom/spdu/httpdns/HttpDnsTools;->b(Lcom/spdu/httpdns/ThreadType;)V

    goto :goto_0

    .line 401
    :cond_6
    const-wide/16 v2, 0x2

    cmp-long v2, p1, v2

    if-nez v2, :cond_3

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "from file answer is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 415
    :cond_7
    :try_start_1
    const-string/jumbo v3, "errno"

    const-wide/32 v4, -0xf4240

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 416
    const-wide/32 v5, -0xf4240

    cmp-long v5, v3, v5

    if-eqz v5, :cond_9

    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u9519\u8bef\u7801"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v5

    const-wide/16 v6, 0x3e9

    cmp-long v6, v3, v6

    if-eqz v6, :cond_8

    const-wide/16 v6, 0x3ea

    cmp-long v6, v3, v6

    if-eqz v6, :cond_8

    const-wide/16 v6, 0x3eb

    cmp-long v6, v3, v6

    if-eqz v6, :cond_8

    const-wide/16 v6, 0x3ed

    cmp-long v6, v3, v6

    if-eqz v6, :cond_8

    const-wide/16 v6, 0x3ee

    cmp-long v6, v3, v6

    if-eqz v6, :cond_8

    const-wide/16 v6, 0x1f4

    cmp-long v6, v3, v6

    if-nez v6, :cond_b

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/spdu/httpdns/b;->a(I)V

    .line 420
    :cond_9
    :goto_2
    const-string/jumbo v3, "dns"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    .line 421
    if-nez v18, :cond_e

    .line 528
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 529
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    :cond_a
    const-wide/16 v2, 0x2

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 532
    sget-object v2, Lcom/spdu/httpdns/ThreadType;->HTTPDNSFILE_WRITE:Lcom/spdu/httpdns/ThreadType;

    invoke-static {v2}, Lcom/spdu/httpdns/HttpDnsTools;->b(Lcom/spdu/httpdns/ThreadType;)V

    goto/16 :goto_0

    .line 418
    :cond_b
    const-wide/16 v6, 0x4b1

    cmp-long v3, v3, v6

    if-nez v3, :cond_9

    :try_start_2
    invoke-virtual {v5}, Lcom/spdu/httpdns/b;->o()V

    const-string/jumbo v3, "close service!!!!!!!!!!!!!!"

    invoke-static {v3}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 520
    :catch_0
    move-exception v2

    .line 521
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 522
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Lcom/spdu/httpdns/ManagerListener;->b()I

    move-result v3

    if-lez v3, :cond_c

    .line 523
    new-instance v3, Lcom/spdu/httpdns/DnsEvent;

    invoke-static {}, Lcom/spdu/httpdns/HttpDns;->a()Lcom/spdu/httpdns/HttpDns;

    move-result-object v4

    sget-object v5, Lcom/spdu/httpdns/MessageType;->RESLOVERROR:Lcom/spdu/httpdns/MessageType;

    invoke-direct {v3, v4, v5}, Lcom/spdu/httpdns/DnsEvent;-><init>(Ljava/lang/Object;Lcom/spdu/httpdns/MessageType;)V

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ex:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/spdu/httpdns/DnsEvent;->a(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v15}, Lcom/spdu/httpdns/ManagerListener;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 528
    :cond_c
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 529
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    :cond_d
    const-wide/16 v2, 0x2

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 532
    sget-object v2, Lcom/spdu/httpdns/ThreadType;->HTTPDNSFILE_WRITE:Lcom/spdu/httpdns/ThreadType;

    invoke-static {v2}, Lcom/spdu/httpdns/HttpDnsTools;->b(Lcom/spdu/httpdns/ThreadType;)V

    goto/16 :goto_0

    .line 425
    :cond_e
    const/4 v2, 0x0

    move v12, v2

    :goto_4
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v12, v2, :cond_1d

    .line 427
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 428
    if-eqz v2, :cond_1c

    .line 429
    const-string/jumbo v3, "host"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 433
    if-eqz v19, :cond_1c

    .line 434
    const-wide/16 v6, 0x0

    .line 438
    const-string/jumbo v3, "ttl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 441
    if-lez v3, :cond_f

    .line 442
    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long v6, v3, v16

    .line 445
    :cond_f
    const-string/jumbo v3, "port"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 446
    if-nez v4, :cond_10

    .line 447
    const/16 v4, 0x50

    .line 450
    :cond_10
    const-string/jumbo v3, "sport"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 453
    const-string/jumbo v3, "eport"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 455
    const-string/jumbo v3, "ips"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 456
    if-eqz v20, :cond_1b

    .line 458
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v21

    .line 459
    invoke-virtual {v14}, Lcom/spdu/httpdns/b;->e()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 461
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 462
    const/4 v2, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v2, v0, :cond_12

    .line 463
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 465
    if-eqz v4, :cond_11

    .line 466
    const-string/jumbo v5, "ip"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 468
    if-eqz v4, :cond_11

    .line 469
    invoke-static {v4}, Lcom/spdu/httpdns/HttpDnsTools;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 470
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 475
    :cond_12
    invoke-virtual {v14, v3}, Lcom/spdu/httpdns/b;->a(Ljava/util/ArrayList;)V

    move-object v2, v10

    .line 425
    :goto_6
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    move-object v10, v2

    goto/16 :goto_4

    .line 477
    :cond_13
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 478
    const/4 v2, 0x0

    move v11, v2

    :goto_7
    move/from16 v0, v21

    if-ge v11, v0, :cond_17

    .line 480
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 481
    if-eqz v8, :cond_15

    .line 483
    const-string/jumbo v2, "ip"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 487
    if-eqz v3, :cond_15

    .line 489
    const/4 v2, 0x0

    .line 493
    const-string/jumbo v23, "spdy"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 494
    const-string/jumbo v2, "spdy"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 496
    :cond_14
    const/4 v8, 0x1

    if-ne v2, v8, :cond_16

    const/4 v8, 0x1

    .line 498
    :goto_8
    invoke-static {v3}, Lcom/spdu/httpdns/HttpDnsTools;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 499
    new-instance v2, Lcom/spdu/httpdns/HttpDnsOrigin;

    invoke-direct/range {v2 .. v9}, Lcom/spdu/httpdns/HttpDnsOrigin;-><init>(Ljava/lang/String;IIJZI)V

    .line 500
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_15
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_7

    .line 496
    :cond_16
    const/4 v8, 0x0

    goto :goto_8

    .line 504
    :cond_17
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_18

    .line 505
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/spdu/httpdns/HttpDnsCacheTable;->b(Ljava/lang/String;)V

    .line 508
    :cond_18
    invoke-static {}, Lcom/spdu/httpdns/b;->c()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "datacollection.com"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 509
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/spdu/httpdns/HttpDnsCacheTable;->b(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 511
    :try_start_5
    new-instance v3, Lcom/spdu/httpdns/HttpDnsOrigin;

    const-string/jumbo v4, "\u6d4b\u8bd5\u4f7f\u7528"

    invoke-direct {v3, v4}, Lcom/spdu/httpdns/HttpDnsOrigin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_6

    .line 520
    :catch_1
    move-exception v3

    move-object v10, v2

    move-object v2, v3

    goto/16 :goto_3

    .line 512
    :cond_19
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ltz v2, :cond_1a

    .line 513
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/spdu/httpdns/HttpDnsCacheTable;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1a
    move-object v2, v10

    .line 516
    goto/16 :goto_6

    .line 517
    :cond_1b
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/spdu/httpdns/HttpDnsCacheTable;->b(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1c
    move-object v2, v10

    goto/16 :goto_6

    .line 528
    :cond_1d
    if-eqz v10, :cond_1e

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1e

    .line 529
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    :cond_1e
    const-wide/16 v2, 0x2

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 532
    sget-object v2, Lcom/spdu/httpdns/ThreadType;->HTTPDNSFILE_WRITE:Lcom/spdu/httpdns/ThreadType;

    invoke-static {v2}, Lcom/spdu/httpdns/HttpDnsTools;->b(Lcom/spdu/httpdns/ThreadType;)V

    goto/16 :goto_0

    .line 528
    :catchall_0
    move-exception v2

    :goto_9
    if-eqz v10, :cond_1f

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1f

    .line 529
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    :cond_1f
    const-wide/16 v3, 0x2

    cmp-long v3, p1, v3

    if-eqz v3, :cond_20

    .line 532
    sget-object v3, Lcom/spdu/httpdns/ThreadType;->HTTPDNSFILE_WRITE:Lcom/spdu/httpdns/ThreadType;

    invoke-static {v3}, Lcom/spdu/httpdns/HttpDnsTools;->b(Lcom/spdu/httpdns/ThreadType;)V

    :cond_20
    throw v2

    .line 528
    :catchall_1
    move-exception v3

    move-object v10, v2

    move-object v2, v3

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 24
    array-length v0, v2

    if-lez v0, :cond_0

    array-length v0, v2

    const/16 v3, 0xff

    if-le v0, v3, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 27
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 28
    aget-char v3, v2, v0

    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    aget-char v3, v2, v0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_5

    :cond_2
    aget-char v3, v2, v0

    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    aget-char v3, v2, v0

    const/16 v4, 0x7a

    if-le v3, v4, :cond_5

    :cond_3
    aget-char v3, v2, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_4

    aget-char v3, v2, v0

    const/16 v4, 0x39

    if-le v3, v4, :cond_5

    :cond_4
    aget-char v3, v2, v0

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_5

    aget-char v3, v2, v0

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 27
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 180
    .line 182
    const-string/jumbo v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 183
    array-length v0, v2

    if-gtz v0, :cond_2

    .line 200
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6821\u9a8c\u7801\u9519\u8befanswer is:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    .line 204
    :cond_1
    return v1

    .line 186
    :cond_2
    invoke-static {}, Lcom/spdu/httpdns/d;->a()Lcom/spdu/httpdns/d;

    move-result-object v0

    if-nez v0, :cond_3

    .line 187
    const-string/jumbo v0, "\u8bf7\u5148\u521d\u59cb\u5316httpdns"

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    .line 190
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mc="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/spdu/httpdns/d;->a()Lcom/spdu/httpdns/d;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/spdu/httpdns/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 193
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 194
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 195
    const/4 v1, 0x1

    .line 196
    goto :goto_0

    .line 193
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 538
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v0

    .line 539
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsCacheTable;->a()Lcom/spdu/httpdns/HttpDnsCacheTable;

    move-result-object v1

    .line 541
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 543
    :try_start_0
    invoke-virtual {v1}, Lcom/spdu/httpdns/HttpDnsCacheTable;->f()Lorg/json/JSONArray;

    move-result-object v1

    .line 544
    invoke-virtual {v0}, Lcom/spdu/httpdns/b;->m()Lorg/json/JSONObject;

    move-result-object v0

    .line 546
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 549
    :cond_0
    if-eqz v1, :cond_1

    .line 550
    const-string/jumbo v0, "dns"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 557
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    :goto_0
    return-object v0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "build Json From local failed "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 557
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 556
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 557
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    throw v0

    .line 560
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static b(Lcom/spdu/httpdns/ThreadType;)V
    .locals 5

    .prologue
    .line 564
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v0

    iget-object v0, v0, Lcom/spdu/httpdns/b;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    sget-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSFILE_READ:Lcom/spdu/httpdns/ThreadType;

    if-ne p0, v0, :cond_2

    .line 568
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsStorage;->a()Lcom/spdu/httpdns/HttpDnsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spdu/httpdns/HttpDnsStorage;->d()Ljava/lang/String;

    move-result-object v0

    .line 569
    if-eqz v0, :cond_0

    .line 572
    const-wide/16 v1, 0x2

    invoke-static {v0, v1, v2}, Lcom/spdu/httpdns/HttpDnsTools;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 573
    :cond_2
    sget-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSFILE_WRITE:Lcom/spdu/httpdns/ThreadType;

    if-ne p0, v0, :cond_0

    .line 574
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsStorage;->a()Lcom/spdu/httpdns/HttpDnsStorage;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_0

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/spdu/httpdns/HttpDnsStorage;->c()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 579
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    invoke-virtual {v0}, Lcom/spdu/httpdns/HttpDnsStorage;->b()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 582
    :cond_3
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsTools;->b()Ljava/lang/String;

    move-result-object v1

    .line 583
    if-eqz v1, :cond_0

    .line 584
    invoke-virtual {v0, v1}, Lcom/spdu/httpdns/HttpDnsStorage;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 52
    :cond_0
    const-string/jumbo v0, "^(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|[1-9])\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)$"

    .line 57
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method private static c(Lcom/spdu/httpdns/ThreadType;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spdu/httpdns/ThreadType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsCacheTable;->a()Lcom/spdu/httpdns/HttpDnsCacheTable;

    move-result-object v3

    .line 131
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v0

    .line 132
    if-eqz v3, :cond_5

    .line 134
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/spdu/httpdns/b;->l()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    sget-object v4, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    if-ne p0, v4, :cond_2

    .line 135
    :cond_1
    invoke-virtual {v0}, Lcom/spdu/httpdns/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    invoke-virtual {v3}, Lcom/spdu/httpdns/HttpDnsCacheTable;->c()Ljava/util/ArrayList;

    move-result-object v4

    .line 138
    if-eqz v4, :cond_3

    move v0, v1

    .line 139
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 140
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_3
    sget-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_NETWORKCHANGE:Lcom/spdu/httpdns/ThreadType;

    if-ne p0, v0, :cond_5

    .line 145
    :cond_4
    invoke-virtual {v3}, Lcom/spdu/httpdns/HttpDnsCacheTable;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_5

    .line 147
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    :cond_5
    return-object v2
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/spdu/httpdns/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
