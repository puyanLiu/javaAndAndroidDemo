.class final Lcom/aps/aq;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/aps/am;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/aps/aq;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "11"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.aps.aq"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "arg0:arg1"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/aps/aq;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private constructor <init>(Lcom/aps/am;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/aq;->a:Lcom/aps/am;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aps/am;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aps/aq;-><init>(Lcom/aps/am;)V

    return-void
.end method

.method private static final synthetic a(Lcom/aps/aq;Landroid/content/Context;Landroid/content/Intent;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 20

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getKind()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/Signature;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/Signature;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/Signature;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v8

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v9

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v1

    invoke-virtual/range {v1 .. v9}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/aq;->a:Lcom/aps/am;

    invoke-static {v1}, Lcom/aps/am;->c(Lcom/aps/am;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/aq;->a:Lcom/aps/am;

    invoke-static {v1}, Lcom/aps/am;->d(Lcom/aps/am;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/aq;->a:Lcom/aps/am;

    invoke-static {v1}, Lcom/aps/am;->e(Lcom/aps/am;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/aq;->a:Lcom/aps/am;

    invoke-static {v1}, Lcom/aps/am;->c(Lcom/aps/am;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v11

    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/aq;->a:Lcom/aps/am;

    invoke-static {v1}, Lcom/aps/am;->e(Lcom/aps/am;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/aq;->a:Lcom/aps/am;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/aps/am;->a(Lcom/aps/am;J)J

    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/aps/aq;->a:Lcom/aps/am;

    invoke-static {v12}, Lcom/aps/am;->e(Lcom/aps/am;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Lcom/aps/ar;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/aps/ar;-><init>(Lcom/aps/aq;)V

    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/aps/aq;->a:Lcom/aps/am;

    invoke-static {v10}, Lcom/aps/am;->d(Lcom/aps/am;)Ljava/util/Timer;

    move-result-object v10

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/aps/aq;->a:Lcom/aps/am;

    invoke-static {v10}, Lcom/aps/am;->d(Lcom/aps/am;)Ljava/util/Timer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Timer;->cancel()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/aps/aq;->a:Lcom/aps/am;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/aps/am;->a(Lcom/aps/am;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/aps/aq;->a:Lcom/aps/am;

    new-instance v11, Ljava/util/Timer;

    invoke-direct {v11}, Ljava/util/Timer;-><init>()V

    invoke-static {v10, v11}, Lcom/aps/am;->a(Lcom/aps/am;Ljava/util/Timer;)Ljava/util/Timer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/aps/aq;->a:Lcom/aps/am;

    invoke-static {v10}, Lcom/aps/am;->d(Lcom/aps/am;)Ljava/util/Timer;

    move-result-object v10

    invoke-static {}, Lcom/aps/am;->z()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v10, v1, v11, v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :goto_1
    :try_start_5
    invoke-static/range {p3 .. p3}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v10

    const/16 v16, 0x0

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Lcom/alipay/mobile/aspect/AspectProcessor;->doAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_2
    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit p0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/aps/aq;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v1

    invoke-static {p0, p1, p2, v1, v0}, Lcom/aps/aq;->a(Lcom/aps/aq;Landroid/content/Context;Landroid/content/Intent;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    return-void
.end method
