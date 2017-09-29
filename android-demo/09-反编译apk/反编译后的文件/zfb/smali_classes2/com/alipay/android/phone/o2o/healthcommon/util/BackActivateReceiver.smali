.class public Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackActivateReceiver.java"


# static fields
.field private static final FRAMEWORK_ACTIVITY_RESUME:Ljava/lang/String; = "com.alipay.mobile.framework.ACTIVITY_RESUME"

.field private static final FRAMEWORK_ACTIVITY_USERLEAVEHINT:Ljava/lang/String; = "com.alipay.mobile.framework.USERLEAVEHINT"

.field private static final SECURITY_LOGIN:Ljava/lang/String; = "com.alipay.security.login"

.field private static final UPDATE_COUNT:Ljava/lang/String; = "com.alipay.android.phone.o2o.healthcommon.UPDATE_COUNT"

.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private isFromBack:Z

.field private pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1
    invoke-static {}, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->isFromBack:Z

    .line 15
    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "BackActivateReceiver.java"

    const-class v2, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.phone.o2o.healthcommon.util.BackActivateReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private static final synthetic onReceive_aroundBody0(Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iput-boolean v2, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->isFromBack:Z

    .line 62
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->onBack()V

    .line 68
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->onFromBack()V

    .line 75
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.security.login"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->startRpcRequest()V

    .line 82
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.android.phone.o2o.healthcommon.UPDATE_COUNT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->startRpcRequest()V

    .line 93
    :cond_3
    :goto_0
    return-void

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->setEnable(Z)V

    .line 88
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;->register()V

    goto :goto_0
.end method

.method private static final synthetic onReceive_aroundBody1$advice(Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 87
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    .line 88
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 91
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->onReceive_aroundBody0(Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 93
    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v5, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getFromBackFlag()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->isFromBack:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->onReceive_aroundBody1$advice(Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    return-void
.end method

.method public registerBroadcast(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v1, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v1, "com.alipay.security.login"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v1, "com.alipay.android.phone.o2o.healthcommon.UPDATE_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 52
    return-void
.end method

.method public setFromBackFlag(Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->isFromBack:Z

    .line 44
    return-void
.end method

.method public setPedoMeter(Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/android/phone/o2o/healthcommon/util/BackActivateReceiver;->pedoMeter:Lcom/alipay/android/phone/o2o/healthcommon/util/PedoMeter;

    .line 97
    return-void
.end method

.method public unregisterBroadcast(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    return-void
.end method
