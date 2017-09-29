.class public Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final synthetic c:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static tempOneShotSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;

.field private b:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "OneShotSensorEventListener.java"

    const-class v2, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "unregisterListener"

    const-string/jumbo v3, "android.hardware.SensorManager"

    const-string/jumbo v4, "android.hardware.SensorEventListener:android.hardware.Sensor"

    const-string/jumbo v5, "listener:sensor"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->tempOneShotSensors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->b:Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->a:Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;

    return-void
.end method

.method private static final synthetic a(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 19

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {p4 .. p4}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    invoke-static/range {p3 .. p3}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

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
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->tempOneShotSensors:Ljava/util/List;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->b:Landroid/hardware/SensorManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    sget-object v2, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v3

    invoke-static {v0, p0, v1, v3, v2}, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->a(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->a:Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->a:Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;->recordInfo(Landroid/hardware/SensorEvent;)V

    :cond_1
    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->tempOneShotSensors:Ljava/util/List;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
