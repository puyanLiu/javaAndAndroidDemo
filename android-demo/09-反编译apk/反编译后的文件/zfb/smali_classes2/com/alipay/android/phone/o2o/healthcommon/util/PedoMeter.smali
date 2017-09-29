.class public Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;
.super Ljava/lang/Object;
.source "PedoMeter.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final SENSOR_TYPE_STEP_COUNTER:I = 0x13

.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart; = null

.field private static final synthetic ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart; = null

.field private static mInstance:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter; = null

.field private static final sensorTypeC:I = 0x13


# instance fields
.field backActivateReceiver:Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;

.field private context:Landroid/content/Context;

.field countRpcData:Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;

.field public deviceType:Ljava/lang/String;

.field private enable:Z

.field private mCount:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStartCount:I

.field private mStartTime:Ljava/util/Date;

.field private mStepCount:Landroid/hardware/Sensor;

.field private rpcService:Lcom/alipay/mobile/framework/service/common/RpcService;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1
    invoke-static {}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v3, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->enable:Z

    .line 82
    iput-object p1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->context:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;

    invoke-direct {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->backActivateReceiver:Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;

    .line 84
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->backActivateReceiver:Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->setPedoMeter(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)V

    .line 85
    new-instance v0, Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;

    invoke-direct {v0}, Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->countRpcData:Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;

    .line 86
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStartTime:Ljava/util/Date;

    .line 87
    const-string/jumbo v0, "PedoMeter"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/alipay/android/phone/o2o/healthcommon/util/ConfigServiceUtils;->getCurUserId()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->enable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->enable:Z

    .line 89
    const-string/jumbo v1, "startTime"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStartCount:I

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)Lcom/alipay/mobile/framework/service/common/RpcService;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->rpcService:Lcom/alipay/mobile/framework/service/common/RpcService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;Lcom/alipay/mobile/framework/service/common/RpcService;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->rpcService:Lcom/alipay/mobile/framework/service/common/RpcService;

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->buildStepCounters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mCount:I

    return v0
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStartCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStartCount:I

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStartTime:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->context:Landroid/content/Context;

    return-object v0
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "PedoMeter.java"

    const-class v2, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

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

    const/16 v2, 0x72

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "registerListener"

    const-string/jumbo v3, "android.hardware.SensorManager"

    const-string/jumbo v4, "android.hardware.SensorEventListener:android.hardware.Sensor:int"

    const-string/jumbo v5, "listener:sensor:rate"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x7a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private buildStepCounters()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/rpc/step/StepCounter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    new-instance v1, Lcom/alipay/mobilelbs/rpc/step/StepCounter;

    invoke-direct {v1}, Lcom/alipay/mobilelbs/rpc/step/StepCounter;-><init>()V

    .line 210
    iget v2, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mCount:I

    iget v3, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStartCount:I

    if-lt v2, v3, :cond_0

    .line 211
    iget v2, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mCount:I

    iget v3, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStartCount:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->setCount(I)V

    .line 215
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->deviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->setDeviceType(Ljava/lang/String;)V

    .line 216
    new-instance v2, Ljava/util/Date;

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 216
    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->setEndTime(Ljava/util/Date;)V

    .line 218
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->setIdentifier(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v2, "NAME"

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->setName(Ljava/lang/String;)V

    .line 220
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->setLocal(Z)V

    .line 221
    iget-object v2, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStartTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->setStartTime(Ljava/util/Date;)V

    .line 222
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->setUuid(Ljava/lang/String;)V

    .line 223
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-object v0

    .line 213
    :cond_0
    iget v2, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mCount:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->setCount(I)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mInstance:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mInstance:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    .line 63
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mInstance:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private register(Landroid/hardware/Sensor;I)V
    .locals 9

    .prologue
    .line 122
    iget-object v1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v8, v5

    invoke-static/range {v0 .. v8}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->registerListener_aroundBody3$advice(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method private static final synthetic registerListener_aroundBody2(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILorg/aspectj/lang/JoinPoint;)Z
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p1, p2, p3, p4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    return v0
.end method

.method private static final synthetic registerListener_aroundBody3$advice(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 323
    invoke-interface {p8}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v1

    .line 324
    invoke-interface {p8}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .line 325
    invoke-interface {p8}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v3

    .line 326
    invoke-interface {p8}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v4

    .line 322
    invoke-static {p6, v1, v2, v3, v4}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallSensorManagerRegisterListenerPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-static/range {p0 .. p5}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->registerListener_aroundBody2(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    .line 329
    :cond_0
    return-object v0
.end method

.method private setStepCount(I)V
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mCount:I

    .line 233
    return-void
.end method

.method private static final synthetic unregisterListener_aroundBody0(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Lorg/aspectj/lang/JoinPoint;)V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method private static final synthetic unregisterListener_aroundBody1$advice(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 341
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 342
    const-string/jumbo v1, "Monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Call SensorManager.unRegisterListener() at: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v3

    invoke-interface {v3}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->unregisterListener_aroundBody0(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Lorg/aspectj/lang/JoinPoint;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getStepCount()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mCount:I

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->enable:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->countRpcData:Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->countRpcData:Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;->setPollTimeMillis()V

    .line 145
    :cond_0
    return-void
.end method

.method public onFromBack()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->backActivateReceiver:Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->backActivateReceiver:Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->getFromBackFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->backActivateReceiver:Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->setFromBackFlag(Z)V

    .line 150
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->countRpcData:Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->countRpcData:Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;->isNeedRefresh()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->startRpcRequest()V

    .line 154
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PedoMeter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RPC start"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->setStepCount(I)V

    .line 134
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PedoMeter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setStepCount :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStartCount:I

    if-nez v0, :cond_0

    .line 136
    iget v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mCount:I

    iput v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStartCount:I

    .line 139
    :cond_0
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->backActivateReceiver:Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->backActivateReceiver:Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;

    iget-object v1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->registerBroadcast(Landroid/content/Context;)V

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->enable:Z

    if-nez v0, :cond_2

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->deviceType:Ljava/lang/String;

    .line 102
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->version:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->context:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mSensorManager:Landroid/hardware/SensorManager;

    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStepCount:Landroid/hardware/Sensor;

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStepCount:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStepCount:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->register(Landroid/hardware/Sensor;I)V

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 3

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->enable:Z

    .line 72
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->context:Landroid/content/Context;

    const-string/jumbo v1, "PedoMeter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/alipay/android/phone/o2o/healthcommon/util/ConfigServiceUtils;->getCurUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    return-void
.end method

.method public startRpcRequest()V
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStartCount:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mCount:I

    iget v1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mStartCount:I

    if-ne v0, v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    new-instance v0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter$1;-><init>(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unRegister()V
    .locals 7

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p0

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->unregisterListener_aroundBody1$advice(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->backActivateReceiver:Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->backActivateReceiver:Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;

    iget-object v1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->unregisterBroadcast(Landroid/content/Context;)V

    .line 119
    :cond_1
    return-void
.end method
