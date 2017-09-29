.class public Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;
.super Ljava/lang/Object;


# static fields
.field private static i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static j:I

.field private static k:I

.field private static final synthetic m:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic n:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic o:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic p:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/hardware/SensorEventListener;

.field private d:Landroid/hardware/SensorEventListener;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, -0x1

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "DeviceSensorInfo.java"

    const-class v2, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;

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

    const/16 v2, 0xbd

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->m:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    const/16 v2, 0xbe

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->n:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    const/16 v2, 0x144

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->o:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    const/16 v2, 0x145

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->p:Lorg/aspectj/lang/JoinPoint$StaticPart;

    sput v9, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->j:I

    sput v9, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->k:I

    :try_start_0
    const-class v0, Landroid/hardware/Sensor;

    const-string/jumbo v1, "TYPE_GRAVITY"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->j:I

    const-class v0, Landroid/hardware/Sensor;

    const-string/jumbo v1, "TYPE_LINEAR_ACCELERATION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->i:Landroid/util/SparseArray;

    sget v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->j:I

    if-eq v0, v9, :cond_0

    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->i:Landroid/util/SparseArray;

    sget v1, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->j:I

    const-string/jumbo v2, "Gravity"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    sget v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->k:I

    if-eq v0, v9, :cond_1

    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->i:Landroid/util/SparseArray;

    sget v1, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->k:I

    const-string/jumbo v2, "Acceleration"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->i:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string/jumbo v2, "Gyroscope"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->i:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string/jumbo v2, "Light"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->i:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string/jumbo v2, "Magnetic"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->i:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string/jumbo v2, "Proximity"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->i:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string/jumbo v2, "Temperature"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->i:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string/jumbo v2, "Pressure"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->h:Ljava/util/List;

    new-instance v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$1;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$1;-><init>(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->l:Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;

    return-void
.end method

.method private static final synthetic a(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
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

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

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

.method private static a([F)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    array-length v3, p0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, p0, v0

    float-to-double v4, v4

    :try_start_0
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Landroid/hardware/Sensor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Landroid/hardware/Sensor;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->e:Ljava/util/List;

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->i:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;[F)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a([F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->c:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->d:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method private static final synthetic b(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
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

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

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

.method private b(Ljava/util/List;Landroid/hardware/Sensor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Landroid/hardware/Sensor;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xa

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->g:Ljava/util/List;

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0
.end method

.method private static final synthetic c(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
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

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

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

.method private static final synthetic d(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
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

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/aspect/AspectProcessor;->prepareAspect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/aspect/AspectAdvice;->ajc$inlineAccessFieldGet$com_alipay_mobile_aspect_AspectAdvice$com_alipay_mobile_aspect_AspectAdvice$aspectProcessor(Lcom/alipay/mobile/aspect/AspectAdvice;)Lcom/alipay/mobile/aspect/AspectProcessor;

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

.method public static declared-synchronized getDynamicSensorInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const/16 v1, 0x32

    const/4 v7, -0x1

    const-class v4, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;

    monitor-enter v4

    :try_start_0
    new-instance v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;

    invoke-direct {v5}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    iget-object v2, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->d:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->m:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v3, v5, v0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v6

    invoke-static {v0, v2, v6, v3}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    iget-object v2, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->c:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->n:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v3, v5, v0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v6

    invoke-static {v0, v2, v6, v3}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    new-instance v0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;

    iget-object v2, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    iget-object v3, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->l:Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;

    invoke-direct {v0, v2, v3}, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;-><init>(Landroid/hardware/SensorManager;Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;)V

    iput-object v0, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->d:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/ContinuesSensorEventListener;

    iget-object v2, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    iget-object v3, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->l:Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;

    invoke-direct {v0, v2, v3}, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/ContinuesSensorEventListener;-><init>(Landroid/hardware/SensorManager;Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;)V

    iput-object v0, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->c:Landroid/hardware/SensorEventListener;

    iget-object v0, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    sget v2, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->j:I

    if-eq v2, v7, :cond_1

    iget-object v2, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    sget v3, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->j:I

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b(Ljava/util/List;Landroid/hardware/Sensor;)V

    :cond_1
    sget v2, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->k:I

    if-eq v2, v7, :cond_2

    iget-object v2, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    sget v3, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->k:I

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b(Ljava/util/List;Landroid/hardware/Sensor;)V

    :cond_2
    iget-object v2, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a(Ljava/util/List;Landroid/hardware/Sensor;)V

    iget-object v2, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a(Ljava/util/List;Landroid/hardware/Sensor;)V

    iget-object v2, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a(Ljava/util/List;Landroid/hardware/Sensor;)V

    iget-object v2, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a(Ljava/util/List;Landroid/hardware/Sensor;)V

    iget-object v2, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a(Ljava/util/List;Landroid/hardware/Sensor;)V

    iget-object v2, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a(Ljava/util/List;Landroid/hardware/Sensor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/16 v0, 0xa

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$2;

    invoke-direct {v3, v5}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$2;-><init>(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$3;

    invoke-direct {v2, v5}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$3;-><init>(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    move v0, v1

    :goto_2
    sget-object v2, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->tempOneShotSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_3

    const-wide/16 v8, 0x14

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_3
    sget-object v1, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/ContinuesSensorEventListener;->tempContinuesSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_5

    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    move v0, v1

    goto :goto_3

    :cond_5
    iget-object v0, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    iget-object v1, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->c:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->o:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, v5, v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->c(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;

    iget-object v1, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->d:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->p:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, v5, v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/AspectAdvice;->aspectOf()Lcom/alipay/mobile/aspect/AspectAdvice;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->d(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Lcom/alipay/mobile/aspect/AspectAdvice;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "total time:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, v5, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    monitor-exit v4

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method
