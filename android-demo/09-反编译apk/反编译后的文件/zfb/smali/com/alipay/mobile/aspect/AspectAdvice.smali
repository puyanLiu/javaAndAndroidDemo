.class public Lcom/alipay/mobile/aspect/AspectAdvice;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field public static final synthetic ajc$perSingletonInstance:Lcom/alipay/mobile/aspect/AspectAdvice;

.field private static synthetic b:Ljava/lang/Throwable;


# instance fields
.field private a:Lcom/alipay/mobile/aspect/AspectProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/aspect/AspectAdvice;

    invoke-direct {v0}, Lcom/alipay/mobile/aspect/AspectAdvice;-><init>()V

    sput-object v0, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$perSingletonInstance:Lcom/alipay/mobile/aspect/AspectAdvice;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v0, Lcom/alipay/mobile/aspect/AspectAdvice;->b:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobile/aspect/AspectProcessor;

    invoke-direct {v0}, Lcom/alipay/mobile/aspect/AspectProcessor;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/aspect/AspectAdvice;->a:Lcom/alipay/mobile/aspect/AspectProcessor;

    return-void
.end method

.method static synthetic ajc$around$com_alipay_mobile_aspect_AspectAdvice$1$f46805abproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic ajc$around$com_alipay_mobile_aspect_AspectAdvice$2$2bbf5f7aproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/aspect/AspectAdvice;->a:Lcom/alipay/mobile/aspect/AspectProcessor;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;Lcom/alipay/mobile/aspect/AspectProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/aspect/AspectAdvice;->a:Lcom/alipay/mobile/aspect/AspectProcessor;

    return-void
.end method

.method public static aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;
    .locals 3

    sget-object v0, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$perSingletonInstance:Lcom/alipay/mobile/aspect/AspectAdvice;

    if-nez v0, :cond_0

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string/jumbo v1, "com_alipay_mobile_aspect_AspectAdvice"

    sget-object v2, Lcom/alipay/mobile/aspect/AspectAdvice;->b:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$perSingletonInstance:Lcom/alipay/mobile/aspect/AspectAdvice;

    return-object v0
.end method

.method public static hasAspect()Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$perSingletonInstance:Lcom/alipay/mobile/aspect/AspectAdvice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ajc$around$com_alipay_mobile_aspect_AspectAdvice$1$f46805ab(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 19
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "aspectPointcut()"
    .end annotation

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    const/4 v15, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$around$com_alipay_mobile_aspect_AspectAdvice$1$f46805abproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

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
    :goto_0
    return-object v15

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public ajc$around$com_alipay_mobile_aspect_AspectAdvice$2$2bbf5f7a(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 19
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "aspectPointcutWithIOException()"
    .end annotation

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    const/4 v15, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$around$com_alipay_mobile_aspect_AspectAdvice$2$2bbf5f7aproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/Object;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

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

.method synthetic ajc$pointcut$$aspectPointcut$9d9()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "(executionBroadcastReceiverPointcut() || (executionServiceOnStartCommandPointcut() || (executionServiceOnBindPointcut() || (executionServiceOnHandleIntentPointcut() || (callLocationManagerRequestLocationUpdatesPointcut() || (callLocationManagerRemoveUpdatesPointcut() || (callWakeLockAcquirePointcut() || (callWakeLockReleasePointcut() || (executionWebViewClientOnPageStarted() || (executionWebViewClientOnPageFinished() || (executionWebViewClientOnLoadResource() || (callSensorManagerRegisterListenerPointcut() || (callSensorManagerUnregisterListenerPointcut() || (callWifiManagerStartScanPointcut() || (callAlarmManagerSetPointcut() || (callAlarmManagerSetInexactRepeatingPointcut() || callAlarmManagerSetRepeatingPointcut()))))))))))))))))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$aspectPointcutWithIOException$d0d()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "(callHttpClientPointcut() || (callHttpUrlConnectionPointcut() || (callURLConnectionGetInputStreamPointcut() || callURLConnectionGetOutputStreamPointcut())))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$callAlarmManagerSetInexactRepeatingPointcut$8f5()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(* android.app.AlarmManager+.setInexactRepeating(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$callAlarmManagerSetPointcut$89c()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(* android.app.AlarmManager+.set(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$callAlarmManagerSetRepeatingPointcut$96e()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(* android.app.AlarmManager+.setRepeating(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$callHttpClientPointcut$24a()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(* org.apache.http.client.HttpClient+.execute(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$callHttpUrlConnectionPointcut$2aa()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(* java.net.URL.open*(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$callLocationManagerRemoveUpdatesPointcut$46d()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(* android.location.LocationManager+.removeUpdates(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$callLocationManagerRequestLocationUpdatesPointcut$3e3()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(* android.location.LocationManager+.requestLocationUpdates(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$callSensorManagerRegisterListenerPointcut$72c()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(* android.hardware.SensorManager+.registerListener(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$callSensorManagerUnregisterListenerPointcut$7a5()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(* android.hardware.SensorManager+.unregisterListener(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$callURLConnectionGetInputStreamPointcut$2f9()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(* java.net.URLConnection+.getInputStream(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$callURLConnectionGetOutputStreamPointcut$367()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(* java.net.URLConnection+.getOutputStream(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$callWakeLockAcquirePointcut$4f1()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(* android.os.PowerManager$WakeLock+.acquire(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$callWakeLockReleasePointcut$556()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(* android.os.PowerManager$WakeLock+.release())"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$callWifiManagerStartScanPointcut$82b()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "call(* android.net.wifi.WifiManager+.startScan(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$executionBroadcastReceiverPointcut$7e()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(* android.content.BroadcastReceiver+.onReceive(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$executionServiceOnBindPointcut$16c()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(* android.app.Service+.onBind(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$executionServiceOnHandleIntentPointcut$1ca()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(* android.app.IntentService+.onHandleIntent(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$executionServiceOnStartCommandPointcut$fe()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(* android.app.Service+.onStartCommand(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$executionWebViewClientOnLoadResource$6ac()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(* android.webkit.WebViewClient+.onLoadResource(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$executionWebViewClientOnPageFinished$637()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(* android.webkit.WebViewClient+.onPageFinished(..))"
    .end annotation

    return-void
.end method

.method synthetic ajc$pointcut$$executionWebViewClientOnPageStarted$5c4()V
    .locals 0
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(* android.webkit.WebViewClient+.onPageStarted(..))"
    .end annotation

    return-void
.end method
