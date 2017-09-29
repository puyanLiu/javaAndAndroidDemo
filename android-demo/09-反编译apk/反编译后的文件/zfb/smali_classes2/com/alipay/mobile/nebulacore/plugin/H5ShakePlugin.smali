.class public Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5ShakePlugin.java"


# static fields
.field private static final synthetic d:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic e:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field private b:Z

.field private c:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "H5ShakePlugin.java"

    const-class v2, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "registerListener"

    const-string/jumbo v3, "android.hardware.SensorManager"

    const-string/jumbo v4, "android.hardware.SensorEventListener:android.hardware.Sensor:int"

    const-string/jumbo v5, "listener:sensor:samplingPeriodUs"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4f

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "unregisterListener"

    const-string/jumbo v3, "android.hardware.SensorManager"

    const-string/jumbo v4, "android.hardware.SensorEventListener"

    const-string/jumbo v5, "listener"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->e:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 93
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->c:Landroid/hardware/SensorEventListener;

    .line 23
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b:Z

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 89
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->c:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->e:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "Monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Call SensorManager.unRegisterListener() at: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v2

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x3

    const/4 v2, 0x1

    .line 49
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string/jumbo v3, "vibrate"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    move v0, v2

    .line 59
    :goto_0
    return v0

    .line 53
    :cond_1
    const-string/jumbo v3, "watchShake"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->a()V

    .line 55
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->c:Landroid/hardware/SensorEventListener;

    sget-object v5, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v4, v6, v1

    aput-object v3, v6, v2

    const/4 v1, 0x2

    invoke-static {v10}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, p0, v0, v6}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v6

    const/4 v1, 0x0

    invoke-interface {v5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v5

    invoke-static {v6, v7, v8, v9, v5}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallSensorManagerRegisterListenerPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v4, v3, v10}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b:Z

    .line 56
    :cond_2
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move v0, v2

    .line 57
    goto :goto_0

    :cond_3
    move v0, v1

    .line 59
    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b:Z

    .line 34
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "vibrate"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "watchShake"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->a()V

    .line 45
    return-void
.end method
