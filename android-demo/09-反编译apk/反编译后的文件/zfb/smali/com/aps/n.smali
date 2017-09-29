.class public Lcom/aps/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/aps/n;

.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic c:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic d:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "NetManager.java"

    const-class v2, Lcom/aps/n;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "601"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "org.apache.http.client.HttpClient"

    const-string/jumbo v4, "org.apache.http.client.methods.HttpUriRequest"

    const-string/jumbo v5, "arg0"

    const-string/jumbo v6, "java.io.IOException:org.apache.http.client.ClientProtocolException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/aps/n;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "601"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "org.apache.http.client.HttpClient"

    const-string/jumbo v4, "org.apache.http.client.methods.HttpUriRequest"

    const-string/jumbo v5, "arg0"

    const-string/jumbo v6, "java.io.IOException:org.apache.http.client.ClientProtocolException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1e5

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/aps/n;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "601"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "org.apache.http.client.HttpClient"

    const-string/jumbo v4, "org.apache.http.client.methods.HttpUriRequest"

    const-string/jumbo v5, "arg0"

    const-string/jumbo v6, "java.io.IOException:org.apache.http.client.ClientProtocolException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x407

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/aps/n;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v0, 0x0

    sput-object v0, Lcom/aps/n;->a:Lcom/aps/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public static a()Lcom/aps/n;
    .locals 1

    sget-object v0, Lcom/aps/n;->a:Lcom/aps/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aps/n;

    invoke-direct {v0}, Lcom/aps/n;-><init>()V

    sput-object v0, Lcom/aps/n;->a:Lcom/aps/n;

    :cond_0
    sget-object v0, Lcom/aps/n;->a:Lcom/aps/n;

    return-object v0
.end method

.method private static final synthetic a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 19

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    const/4 v15, 0x0

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {p0 .. p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v9

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-virtual/range {v9 .. v18}, Lcom/alipay/mobile/aspect/AspectProcessor;->doAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v15

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    :cond_0
    sget-object v1, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    .locals 12

    const/4 v6, -0x1

    const/16 v8, 0x50

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    new-instance v11, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v11}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/aps/v;->c()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/aps/n;->b()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_0
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    :goto_1
    move-object v7, v1

    move v1, v0

    :goto_2
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    if-eq v1, v6, :cond_d

    move v0, v9

    :goto_3
    if-eqz v0, :cond_0

    const-string/jumbo v0, "http"

    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v7, v1, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "http.route.default-proxy"

    invoke-interface {v11, v0, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    sget v0, Lcom/aps/g;->g:I

    invoke-static {v11, v0}, Lcom/aps/v;->a(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v11, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "http"

    invoke-direct {v2, v3, v1, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v11, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_12

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "nm|found apn:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/aps/v;->a([Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_5

    const-string/jumbo v2, "ctwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/aps/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_13

    move v2, v9

    :goto_4
    if-nez v2, :cond_3

    :try_start_3
    const-string/jumbo v0, "10.0.0.200"
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    move-object v7, v0

    move v0, v8

    :goto_5
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v1, v0

    goto/16 :goto_2

    :cond_5
    if-eqz v0, :cond_12

    :try_start_4
    const-string/jumbo v2, "wap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/aps/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    if-nez v2, :cond_11

    move v2, v9

    :goto_6
    if-nez v2, :cond_6

    :try_start_5
    const-string/jumbo v0, "10.0.0.172"
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    move-object v7, v0

    move v0, v8

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v0, v7

    :goto_7
    :try_start_6
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aps/n;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ctwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object v0, v1

    move v1, v9

    :goto_8
    if-nez v1, :cond_7

    const-string/jumbo v0, "10.0.0.200"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_7
    move-object v1, v0

    move v0, v8

    :goto_9
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v7, v1

    move v1, v0

    goto/16 :goto_2

    :cond_9
    :try_start_7
    const-string/jumbo v3, "wap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object v0, v1

    move v1, v9

    :goto_a
    if-nez v1, :cond_a

    const-string/jumbo v0, "10.0.0.200"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_a
    move-object v1, v0

    move v0, v8

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v1, v7

    :goto_b
    :try_start_8
    invoke-static {v0}, Lcom/aps/v;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    move v1, v6

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_c
    if-eqz v1, :cond_c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    :cond_d
    move v0, v10

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v1, v7

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v0, v7

    move-object v7, v1

    goto/16 :goto_7

    :catch_6
    move-exception v2

    move-object v7, v1

    goto/16 :goto_7

    :cond_e
    move v1, v10

    goto :goto_a

    :cond_f
    move-object v1, v0

    move v0, v6

    goto :goto_9

    :cond_10
    move v1, v10

    goto :goto_8

    :cond_11
    move v2, v10

    move-object v0, v7

    goto/16 :goto_6

    :cond_12
    move v0, v6

    goto/16 :goto_5

    :cond_13
    move v2, v10

    move-object v0, v7

    goto/16 :goto_4

    :cond_14
    move v0, v6

    move-object v1, v7

    goto/16 :goto_1

    :cond_15
    move v1, v6

    goto/16 :goto_2
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Z
    .locals 2

    const-string/jumbo v0, "Content-Encoding"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 8

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v7

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    const/4 v1, 0x4

    aput-object v2, v0, v1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/amap/api/location/core/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v1, "false"

    aput-object v1, v0, v7

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    const-string/jumbo v1, "key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "X-INFO"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "X-BIZ"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "User-Agent"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    const-string/jumbo v6, "true"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    aget-object v1, v0, v7

    if-eqz v1, :cond_4

    aget-object v1, v0, v7

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_4
    const-string/jumbo v1, "true"

    aput-object v1, v0, v7

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static final synthetic b(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 19

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    const/4 v15, 0x0

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {p0 .. p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v9

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-virtual/range {v9 .. v18}, Lcom/alipay/mobile/aspect/AspectProcessor;->doAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v15

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b()Ljava/net/Proxy;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-static {}, Lcom/amap/api/location/core/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static final synthetic c(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 19

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    const/4 v15, 0x0

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {p0 .. p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v9

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-virtual/range {v9 .. v18}, Lcom/alipay/mobile/aspect/AspectProcessor;->doAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v15

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 14

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-static {p1}, Lcom/aps/v;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/aps/n;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, ""

    :try_start_0
    invoke-static {p1, v7}, Lcom/aps/n;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v7

    :try_start_1
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string/jumbo v10, "Content-Type"

    const-string/jumbo v11, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "User-Agent"

    const-string/jumbo v11, "AMAP_Location_SDK_Android 1.4.0"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "Accept-Encoding"

    const-string/jumbo v11, "gzip"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "Connection"

    const-string/jumbo v11, "Keep-Alive"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "X-INFO"

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "ia"

    const-string/jumbo v11, "1"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "key"

    invoke-static {}, Lcom/amap/api/location/core/c;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    sget-object v1, Lcom/aps/n;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, v7, v6}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v10

    invoke-static {v7, v6, v10, v1}, Lcom/aps/n;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_15

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    :try_start_3
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v8, ""

    const-string/jumbo v11, "charset="

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    add-int/lit8 v8, v11, 0x8

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string/jumbo v8, "UTF-8"

    :cond_5
    invoke-static {v1}, Lcom/aps/n;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v1

    :cond_6
    if-eqz v4, :cond_d

    :try_start_4
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1d
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v1

    :goto_1
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v8, 0x800

    invoke-direct {v1, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1e
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_15
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_19
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_10
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    :goto_3
    :try_start_7
    new-instance v7, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v7, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v7

    move-object v13, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    :goto_4
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_7
    if-eqz v7, :cond_8

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_8
    if-eqz v4, :cond_9

    :try_start_8
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    :cond_a
    :goto_6
    if-eqz v3, :cond_b

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    :cond_b
    :goto_7
    if-eqz v2, :cond_c

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9

    :cond_c
    :goto_8
    throw v1

    :cond_d
    :try_start_c
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_1d
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_15
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_c} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object v3, v1

    goto :goto_1

    :cond_e
    :try_start_d
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_19
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_16
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_10
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    :goto_9
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_f
    if-eqz v7, :cond_10

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_10
    if-eqz v4, :cond_11

    :try_start_e
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_a

    :cond_11
    :goto_a
    if-eqz v5, :cond_12

    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_b

    :cond_12
    :goto_b
    if-eqz v3, :cond_13

    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_c

    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_d

    :cond_14
    :goto_d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x194

    if-ne v10, v1, :cond_16

    :try_start_12
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_12} :catch_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_12 .. :try_end_12} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :catch_1
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_3

    :catch_2
    move-exception v7

    move-object v7, v6

    move-object v6, v1

    :goto_e
    :try_start_13
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v1

    goto/16 :goto_4

    :catch_3
    move-exception v7

    move-object v7, v6

    move-object v6, v1

    :goto_f
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_4
    move-exception v7

    move-object v7, v6

    move-object v6, v1

    :goto_10
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_5
    move-exception v7

    move-object v13, v7

    move-object v7, v6

    move-object v6, v1

    move-object v1, v13

    :goto_11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "\u670d\u52a1\u5668\u5f02\u5e38"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :catch_6
    move-exception v4

    goto/16 :goto_5

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    :catch_8
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    :catch_9
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    :catch_a
    move-exception v4

    goto :goto_a

    :catch_b
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    :catch_c
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :catch_d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    :catchall_2
    move-exception v7

    move-object v13, v7

    move-object v7, v6

    move-object v6, v1

    move-object v1, v13

    goto/16 :goto_4

    :catchall_3
    move-exception v6

    move-object v13, v6

    move-object v6, v1

    move-object v1, v13

    goto/16 :goto_4

    :catchall_4
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_4

    :catch_e
    move-exception v6

    move-object v13, v6

    move-object v6, v1

    move-object v1, v13

    goto :goto_11

    :catch_f
    move-exception v1

    goto :goto_11

    :catch_10
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_11

    :catch_11
    move-exception v6

    move-object v6, v1

    goto :goto_10

    :catch_12
    move-exception v1

    goto :goto_10

    :catch_13
    move-exception v2

    move-object v2, v1

    goto :goto_10

    :catch_14
    move-exception v6

    move-object v6, v1

    goto :goto_f

    :catch_15
    move-exception v1

    goto :goto_f

    :catch_16
    move-exception v2

    move-object v2, v1

    goto :goto_f

    :catch_17
    move-exception v6

    move-object v6, v1

    goto/16 :goto_e

    :catch_18
    move-exception v1

    goto/16 :goto_e

    :catch_19
    move-exception v2

    move-object v2, v1

    goto/16 :goto_e

    :catch_1a
    move-exception v7

    move-object v13, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v1

    move-object v1, v13

    goto/16 :goto_3

    :catch_1b
    move-exception v6

    move-object v6, v7

    move-object v13, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v1

    move-object v1, v2

    move-object v2, v13

    goto/16 :goto_3

    :catch_1c
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_3

    :catch_1d
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_3

    :catch_1e
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_3

    :cond_16
    move-object v1, v8

    goto/16 :goto_9
.end method

.method public a([BLandroid/content/Context;)Ljava/lang/String;
    .locals 17

    const-string/jumbo v9, ""

    invoke-static/range {p2 .. p2}, Lcom/aps/v;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-static {v12}, Lcom/aps/n;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "zei="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/aps/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "&zsi="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/aps/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v11, v1

    move-object v1, v4

    move-object v4, v9

    :goto_1
    if-gtz v11, :cond_18

    if-nez v2, :cond_18

    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/aps/n;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    :try_start_1
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v3, v1, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "application/soap+xml;charset="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v3, v1, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "gzipped"

    const-string/jumbo v8, "1"

    invoke-virtual {v9, v1, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/aps/v;->a([B)[B

    move-result-object v1

    new-instance v8, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v8, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string/jumbo v1, "application/octet-stream"

    invoke-virtual {v8, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    sget-object v1, Lcom/aps/n;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-object/from16 v0, p0

    invoke-static {v1, v0, v10, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v8

    invoke-static {v10, v9, v8, v1}, Lcom/aps/n;->c(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v14, 0xc8

    if-ne v8, v14, :cond_22

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v8

    :try_start_3
    new-instance v6, Ljava/io/InputStreamReader;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v6, v8, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x800

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v5

    move-object v5, v8

    move-object v7, v10

    move-object v8, v4

    move-object v4, v6

    move-object v6, v9

    :goto_3
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v6, 0x0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v7, 0x0

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    const/4 v4, 0x0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    :cond_5
    move v15, v2

    move-object v2, v3

    move-object v3, v1

    move v1, v15

    :cond_6
    :goto_4
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    move v15, v1

    move-object v1, v6

    move-object v6, v5

    move-object v5, v3

    move-object v3, v2

    move v2, v15

    move-object/from16 v16, v4

    move-object v4, v8

    move-object v8, v7

    move-object/from16 v7, v16

    goto/16 :goto_1

    :cond_7
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v3, v5, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v3, 0x0

    const/4 v2, 0x1

    move-object v5, v8

    move-object v8, v4

    move-object v4, v6

    move-object v15, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v15

    :goto_5
    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v6, 0x0

    :goto_6
    if-eqz v10, :cond_1a

    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v7, 0x0

    :goto_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    const/4 v4, 0x0

    :cond_9
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    goto :goto_4

    :catch_1
    move-exception v5

    move-object v5, v8

    move-object v8, v4

    move-object v4, v6

    :goto_8
    if-eqz v9, :cond_21

    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v6, 0x0

    :goto_9
    if-eqz v10, :cond_20

    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v7, 0x0

    :goto_a
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    const/4 v4, 0x0

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    :cond_c
    move v15, v2

    move-object v2, v3

    move-object v3, v1

    move v1, v15

    goto :goto_4

    :catch_2
    move-exception v5

    move-object v5, v8

    move-object v8, v4

    move-object v4, v6

    :goto_b
    if-eqz v9, :cond_1f

    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v6, 0x0

    :goto_c
    if-eqz v10, :cond_1e

    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v7, 0x0

    :goto_d
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    const/4 v4, 0x0

    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    :cond_f
    move v15, v2

    move-object v2, v3

    move-object v3, v1

    move v1, v15

    goto/16 :goto_4

    :catch_3
    move-exception v5

    move-object v5, v8

    move-object v8, v4

    move-object v4, v6

    :goto_e
    if-eqz v9, :cond_1d

    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v6, 0x0

    :goto_f
    if-eqz v10, :cond_1c

    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v7, 0x0

    :goto_10
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    const/4 v4, 0x0

    :cond_11
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    :cond_12
    move v15, v2

    move-object v2, v3

    move-object v3, v1

    move v1, v15

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    move-object v5, v1

    move-object v7, v6

    move-object v1, v2

    move-object v6, v8

    :goto_11
    if-eqz v9, :cond_13

    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_13
    if-eqz v10, :cond_14

    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_14
    if-eqz v6, :cond_15

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_15
    if-eqz v7, :cond_16

    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    :cond_16
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_17
    throw v1

    :cond_18
    const/4 v1, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_19
    move-object v1, v4

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    move-object v9, v1

    move-object v10, v8

    move-object v1, v2

    goto :goto_11

    :catchall_2
    move-exception v2

    move-object v9, v1

    move-object v1, v2

    goto :goto_11

    :catchall_3
    move-exception v1

    goto :goto_11

    :catchall_4
    move-exception v1

    move-object v6, v8

    goto :goto_11

    :catchall_5
    move-exception v1

    move-object v7, v6

    move-object v6, v8

    goto :goto_11

    :catch_4
    move-exception v9

    move-object v9, v1

    move-object v10, v8

    move-object v1, v5

    move-object v8, v4

    move-object v4, v7

    move-object v5, v6

    goto :goto_e

    :catch_5
    move-exception v8

    move-object v9, v1

    move-object v8, v4

    move-object v1, v5

    move-object v4, v7

    move-object v5, v6

    goto/16 :goto_e

    :catch_6
    move-exception v1

    move-object v1, v5

    move-object v8, v4

    move-object v5, v6

    move-object v4, v7

    goto/16 :goto_e

    :catch_7
    move-exception v1

    move-object v1, v5

    move-object v5, v8

    move-object v8, v4

    move-object v4, v7

    goto/16 :goto_e

    :catch_8
    move-exception v1

    move-object v1, v5

    move-object v5, v8

    move-object v8, v4

    move-object v4, v6

    goto/16 :goto_e

    :catch_9
    move-exception v9

    move-object v9, v1

    move-object v10, v8

    move-object v1, v5

    move-object v8, v4

    move-object v4, v7

    move-object v5, v6

    goto/16 :goto_b

    :catch_a
    move-exception v8

    move-object v9, v1

    move-object v8, v4

    move-object v1, v5

    move-object v4, v7

    move-object v5, v6

    goto/16 :goto_b

    :catch_b
    move-exception v1

    move-object v1, v5

    move-object v8, v4

    move-object v5, v6

    move-object v4, v7

    goto/16 :goto_b

    :catch_c
    move-exception v1

    move-object v1, v5

    move-object v5, v8

    move-object v8, v4

    move-object v4, v7

    goto/16 :goto_b

    :catch_d
    move-exception v1

    move-object v1, v5

    move-object v5, v8

    move-object v8, v4

    move-object v4, v6

    goto/16 :goto_b

    :catch_e
    move-exception v9

    move-object v9, v1

    move-object v10, v8

    move-object v1, v5

    move-object v8, v4

    move-object v4, v7

    move-object v5, v6

    goto/16 :goto_8

    :catch_f
    move-exception v8

    move-object v9, v1

    move-object v8, v4

    move-object v1, v5

    move-object v4, v7

    move-object v5, v6

    goto/16 :goto_8

    :catch_10
    move-exception v1

    move-object v1, v5

    move-object v8, v4

    move-object v5, v6

    move-object v4, v7

    goto/16 :goto_8

    :catch_11
    move-exception v1

    move-object v1, v5

    move-object v5, v8

    move-object v8, v4

    move-object v4, v7

    goto/16 :goto_8

    :catch_12
    move-exception v1

    move-object v1, v5

    move-object v5, v8

    move-object v8, v4

    move-object v4, v6

    goto/16 :goto_8

    :catch_13
    move-exception v9

    move-object v15, v5

    move-object v5, v6

    move-object v6, v1

    move-object v1, v15

    move-object/from16 v16, v7

    move-object v7, v8

    move-object v8, v4

    move-object/from16 v4, v16

    goto/16 :goto_3

    :catch_14
    move-exception v8

    move-object v8, v4

    move-object v4, v7

    move-object v7, v10

    move-object v15, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v15

    goto/16 :goto_3

    :catch_15
    move-exception v1

    move-object v1, v5

    move-object v8, v4

    move-object v5, v6

    move-object v4, v7

    move-object v7, v10

    move-object v6, v9

    goto/16 :goto_3

    :catch_16
    move-exception v1

    move-object v1, v5

    move-object v6, v9

    move-object v5, v8

    move-object v8, v4

    move-object v4, v7

    move-object v7, v10

    goto/16 :goto_3

    :catch_17
    move-exception v1

    move-object v1, v5

    move-object v7, v10

    move-object v5, v8

    move-object v8, v4

    move-object v4, v6

    move-object v6, v9

    goto/16 :goto_3

    :cond_1a
    move-object v7, v10

    goto/16 :goto_7

    :cond_1b
    move-object v6, v9

    goto/16 :goto_6

    :cond_1c
    move-object v7, v10

    goto/16 :goto_10

    :cond_1d
    move-object v6, v9

    goto/16 :goto_f

    :cond_1e
    move-object v7, v10

    goto/16 :goto_d

    :cond_1f
    move-object v6, v9

    goto/16 :goto_c

    :cond_20
    move-object v7, v10

    goto/16 :goto_a

    :cond_21
    move-object v6, v9

    goto/16 :goto_9

    :cond_22
    move v1, v2

    move-object v8, v4

    move-object v4, v7

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    goto/16 :goto_5
.end method

.method public a([BLandroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 16

    invoke-static/range {p2 .. p2}, Lcom/aps/v;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/aps/n;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, ""

    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/aps/n;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v7

    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/aps/n;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v11

    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/amap/api/location/core/c;->l()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    const-string/jumbo v9, "UTF-8"

    invoke-static/range {p1 .. p1}, Lcom/aps/v;->a([B)[B

    move-result-object v1

    new-instance v12, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v12, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string/jumbo v1, "application/octet-stream"

    invoke-virtual {v12, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    const-string/jumbo v1, "Accept-Encoding"

    const-string/jumbo v13, "gzip"

    invoke-virtual {v6, v1, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "gzipped"

    const-string/jumbo v13, "1"

    invoke-virtual {v6, v1, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "X-INFO"

    const/4 v13, 0x2

    aget-object v13, v11, v13

    invoke-virtual {v6, v1, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "X-BIZ"

    const/4 v13, 0x3

    aget-object v13, v11, v13

    invoke-virtual {v6, v1, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY"

    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v6, v1, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "enginever"

    const-string/jumbo v13, "4.2"

    invoke-virtual {v6, v1, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    aget-object v1, v11, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    aget-object v1, v11, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, "User-Agent"

    const/4 v13, 0x4

    aget-object v13, v11, v13

    invoke-virtual {v6, v1, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/amap/api/location/core/d;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "key="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    aget-object v11, v11, v14

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "ts"

    invoke-virtual {v6, v13, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "scode"

    invoke-virtual {v6, v1, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ec"

    const-string/jumbo v11, "1"

    invoke-virtual {v6, v1, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    invoke-virtual {v10, v1, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    sget-object v1, Lcom/aps/n;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-object/from16 v0, p0

    invoke-static {v1, v0, v7, v6}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v11

    invoke-static {v7, v6, v11, v1}, Lcom/aps/n;->b(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_14

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    :try_start_3
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v8, ""

    const-string/jumbo v12, "charset="

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    add-int/lit8 v8, v12, 0x8

    invoke-virtual {v11, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v8, v9

    :cond_3
    invoke-static {v1}, Lcom/aps/n;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v1

    :cond_4
    if-eqz v4, :cond_b

    :try_start_4
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v1

    :goto_0
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v8, 0x800

    invoke-direct {v1, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1a
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    :goto_2
    :try_start_7
    new-instance v7, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v7, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v7

    move-object v15, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v15

    :goto_3
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_5
    if-eqz v7, :cond_6

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_6
    if-eqz v4, :cond_7

    :try_start_8
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    :cond_7
    :goto_4
    if-eqz v5, :cond_8

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_a
    throw v1

    :cond_b
    :try_start_a
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_19
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_11
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v3, v1

    goto :goto_0

    :cond_c
    :try_start_b
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    :goto_6
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_d
    if-eqz v7, :cond_e

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_e
    if-eqz v4, :cond_f

    :try_start_c
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    :cond_f
    :goto_7
    if-eqz v5, :cond_10

    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9

    :cond_10
    :goto_8
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_11
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x0

    :cond_13
    return-object v1

    :cond_14
    const/16 v1, 0x194

    if-ne v11, v1, :cond_15

    :try_start_e
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_11
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catch_1
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_2

    :catch_2
    move-exception v7

    move-object v7, v6

    move-object v6, v1

    :goto_9
    :try_start_f
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v1

    goto/16 :goto_3

    :catch_3
    move-exception v7

    move-object v7, v6

    move-object v6, v1

    :goto_a
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_4
    move-exception v7

    move-object v7, v6

    move-object v6, v1

    :goto_b
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_5
    move-exception v7

    move-object v7, v6

    move-object v6, v1

    :goto_c
    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v8, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v8}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catch_6
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    :catch_8
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :catch_9
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :catchall_2
    move-exception v7

    move-object v15, v7

    move-object v7, v6

    move-object v6, v1

    move-object v1, v15

    goto/16 :goto_3

    :catchall_3
    move-exception v6

    move-object v15, v6

    move-object v6, v1

    move-object v1, v15

    goto/16 :goto_3

    :catchall_4
    move-exception v2

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    goto/16 :goto_3

    :catch_a
    move-exception v6

    move-object v6, v1

    goto :goto_c

    :catch_b
    move-exception v1

    goto :goto_c

    :catch_c
    move-exception v2

    move-object v2, v1

    goto :goto_c

    :catch_d
    move-exception v6

    move-object v6, v1

    goto :goto_b

    :catch_e
    move-exception v1

    goto :goto_b

    :catch_f
    move-exception v2

    move-object v2, v1

    goto :goto_b

    :catch_10
    move-exception v6

    move-object v6, v1

    goto :goto_a

    :catch_11
    move-exception v1

    goto :goto_a

    :catch_12
    move-exception v2

    move-object v2, v1

    goto :goto_a

    :catch_13
    move-exception v6

    move-object v6, v1

    goto :goto_9

    :catch_14
    move-exception v1

    goto :goto_9

    :catch_15
    move-exception v2

    move-object v2, v1

    goto :goto_9

    :catch_16
    move-exception v7

    move-object v15, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v1

    move-object v1, v15

    goto/16 :goto_2

    :catch_17
    move-exception v6

    move-object v6, v7

    move-object v15, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v1

    move-object v1, v2

    move-object v2, v15

    goto/16 :goto_2

    :catch_18
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_2

    :catch_19
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_2

    :catch_1a
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_2

    :cond_15
    move-object v1, v8

    goto/16 :goto_6
.end method
