.class final Lcom/aps/au;
.super Ljava/lang/Thread;


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/aps/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/aps/au;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "requestLocationUpdates"

    const-string/jumbo v3, "android.location.LocationManager"

    const-string/jumbo v4, "java.lang.String:long:float:android.location.LocationListener"

    const-string/jumbo v5, "provider:minTime:minDistance:listener"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/aps/au;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/aps/aa;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/au;->a:Lcom/aps/aa;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static final synthetic a(Landroid/location/LocationManager;Ljava/lang/String;FLandroid/location/LocationListener;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 19

    invoke-interface/range {p5 .. p5}, Lorg/aspectj/lang/JoinPoint;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p5 .. p5}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p5 .. p5}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p5 .. p5}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p5 .. p5}, Lorg/aspectj/lang/JoinPoint;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p5 .. p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface/range {p5 .. p5}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p5 .. p5}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v11, 0x3e8

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v9 .. v14}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-static/range {p4 .. p4}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v9

    const/4 v15, 0x0

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
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 9

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/aps/au;->a:Lcom/aps/aa;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aps/aa;->a(Lcom/aps/aa;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v0, p0, Lcom/aps/au;->a:Lcom/aps/aa;

    new-instance v1, Lcom/aps/aw;

    iget-object v2, p0, Lcom/aps/au;->a:Lcom/aps/aa;

    invoke-direct {v1, v2}, Lcom/aps/aw;-><init>(Lcom/aps/aa;)V

    invoke-static {v0, v1}, Lcom/aps/aa;->a(Lcom/aps/aa;Lcom/aps/aw;)Lcom/aps/aw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aps/au;->a:Lcom/aps/aa;

    invoke-static {v0}, Lcom/aps/aa;->e(Lcom/aps/aa;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/aps/au;->a:Lcom/aps/aa;

    invoke-static {v1}, Lcom/aps/aa;->d(Lcom/aps/aa;)Lcom/aps/aw;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    iget-object v0, p0, Lcom/aps/au;->a:Lcom/aps/aa;

    invoke-static {v0}, Lcom/aps/aa;->e(Lcom/aps/aa;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/aps/au;->a:Lcom/aps/aa;

    invoke-static {v1}, Lcom/aps/aa;->d(Lcom/aps/aa;)Lcom/aps/aw;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/aps/au;->a:Lcom/aps/aa;

    new-instance v1, Lcom/aps/av;

    invoke-direct {v1, p0}, Lcom/aps/av;-><init>(Lcom/aps/au;)V

    invoke-static {v0, v1}, Lcom/aps/aa;->a(Lcom/aps/aa;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/aps/au;->a:Lcom/aps/aa;

    invoke-static {v0}, Lcom/aps/aa;->e(Lcom/aps/aa;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "passive"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/aps/au;->a:Lcom/aps/aa;

    invoke-static {v0}, Lcom/aps/aa;->e(Lcom/aps/aa;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v1, "passive"

    invoke-static {}, Lcom/aps/aa;->l()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/aps/au;->a:Lcom/aps/aa;

    invoke-static {v3}, Lcom/aps/aa;->f(Lcom/aps/aa;)Landroid/location/LocationListener;

    move-result-object v3

    sget-object v4, Lcom/aps/au;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-static {v4, p0, v0, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/aps/au;->a(Landroid/location/LocationManager;Ljava/lang/String;FLandroid/location/LocationListener;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
