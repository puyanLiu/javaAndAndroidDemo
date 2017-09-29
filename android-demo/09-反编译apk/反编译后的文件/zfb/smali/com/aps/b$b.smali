.class Lcom/aps/b$b;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final synthetic c:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field a:Lcom/aps/b;

.field final synthetic b:Lcom/aps/b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "APS.java"

    const-class v2, Lcom/aps/b$b;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.aps.b$b"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "arg0:arg1"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5ad

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/aps/b$b;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private constructor <init>(Lcom/aps/b;Lcom/aps/b;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/aps/b$b;->a:Lcom/aps/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/aps/b;Lcom/aps/b;Lcom/aps/b$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aps/b$b;-><init>(Lcom/aps/b;Lcom/aps/b;)V

    return-void
.end method

.method private static final synthetic a(Lcom/aps/b$b;Landroid/content/Context;Landroid/content/Intent;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
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

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v10, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->d(Lcom/aps/b;)Landroid/net/wifi/WifiManager;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    :try_start_2
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
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    const/4 v1, 0x0

    return-object v1

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v10}, Lcom/aps/b;->d(Lcom/aps/b;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/aps/b;->a(Lcom/aps/b;Ljava/util/List;)Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v10

    invoke-static {v1, v10, v11}, Lcom/aps/b;->c(Lcom/aps/b;J)J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->e(Lcom/aps/b;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v10}, Lcom/aps/b;->a(Lcom/aps/b;Ljava/util/List;)Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_3
    :try_start_5
    const-string/jumbo v10, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->d(Lcom/aps/b;)Landroid/net/wifi/WifiManager;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    :try_start_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v10}, Lcom/aps/b;->d(Lcom/aps/b;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result v1

    :goto_2
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->f(Lcom/aps/b;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->f(Lcom/aps/b;)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->f(Lcom/aps/b;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->g(Lcom/aps/b;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->h(Lcom/aps/b;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->a:Lcom/aps/b;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->a:Lcom/aps/b;

    const/4 v10, 0x1

    invoke-static {v1, v10}, Lcom/aps/b;->a(Lcom/aps/b;Z)Z

    :cond_5
    const-wide/16 v10, 0x2710

    sput-wide v10, Lcom/aps/g;->j:J

    const-wide/16 v10, 0x7530

    sput-wide v10, Lcom/aps/g;->k:J

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->i(Lcom/aps/b;)I

    move-result v1

    const/4 v10, 0x5

    if-lt v1, v10, :cond_7

    const-wide/16 v10, 0x4e20

    sput-wide v10, Lcom/aps/g;->j:J

    const-wide/32 v10, 0xea60

    sput-wide v10, Lcom/aps/g;->k:J

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->a:Lcom/aps/b;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->a:Lcom/aps/b;

    const/4 v10, 0x0

    invoke-static {v1, v10}, Lcom/aps/b;->a(Lcom/aps/b;Z)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->j(Lcom/aps/b;)Lcom/aps/aa;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static {v1}, Lcom/aps/b;->j(Lcom/aps/b;)Lcom/aps/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aps/aa;->c()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    const/4 v10, 0x0

    invoke-static {v1, v10}, Lcom/aps/b;->b(Lcom/aps/b;Z)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v10, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    invoke-static/range {p1 .. p1}, Lcom/aps/v;->a(Landroid/content/Context;)Z

    move-result v10

    invoke-static {v1, v10}, Lcom/aps/b;->c(Lcom/aps/b;Z)Z

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v10, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/b$b;->b:Lcom/aps/b;

    const/4 v10, 0x1

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Lcom/aps/b;->a(ZI)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    :catch_3
    move-exception v10

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/aps/b$b;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v1

    invoke-static {p0, p1, p2, v1, v0}, Lcom/aps/b$b;->a(Lcom/aps/b$b;Landroid/content/Context;Landroid/content/Intent;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    return-void
.end method
