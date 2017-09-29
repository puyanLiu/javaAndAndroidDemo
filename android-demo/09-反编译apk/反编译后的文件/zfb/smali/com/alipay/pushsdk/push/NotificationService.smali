.class public Lcom/alipay/pushsdk/push/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"


# static fields
.field public static a:Landroid/content/Context;

.field private static final b:Ljava/lang/String;

.field private static d:Lcom/alipay/pushsdk/push/m;

.field private static final synthetic j:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic k:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic l:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private final c:I

.field private e:Landroid/app/AlarmManager;

.field private f:Landroid/app/PendingIntent;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "NotificationService.java"

    const-class v2, Lcom/alipay/pushsdk/push/NotificationService;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onStartCommand"

    const-string/jumbo v3, "com.alipay.pushsdk.push.NotificationService"

    const-string/jumbo v4, "android.content.Intent:int:int"

    const-string/jumbo v5, "intent:flags:startId"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x83

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/push/NotificationService;->j:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onBind"

    const-string/jumbo v3, "com.alipay.pushsdk.push.NotificationService"

    const-string/jumbo v4, "android.content.Intent"

    const-string/jumbo v5, "intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "android.os.IBinder"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1dd

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/push/NotificationService;->k:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "set"

    const-string/jumbo v3, "android.app.AlarmManager"

    const-string/jumbo v4, "int:long:android.app.PendingIntent"

    const-string/jumbo v5, "type:triggerAtMillis:operation"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x218

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/NotificationService;->l:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 57
    const-class v0, Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 56
    sput-object v0, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    .line 65
    sput-object v9, Lcom/alipay/pushsdk/push/NotificationService;->d:Lcom/alipay/pushsdk/push/m;

    .line 74
    sput-object v9, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->c:I

    .line 67
    iput-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/AlarmManager;

    .line 68
    iput-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/app/PendingIntent;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->i:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static a()Lcom/alipay/pushsdk/push/m;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->d:Lcom/alipay/pushsdk/push/m;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 291
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 293
    const/16 v2, 0x4000

    .line 292
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 291
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :goto_0
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->refreshDebugMode()V

    .line 315
    :goto_1
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    const/4 v1, 0x1

    :try_start_2
    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    const/4 v1, 0x1

    sget-object v2, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initDebugMode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v0, ""

    .line 303
    :goto_2
    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->refreshDebugMode()V

    goto :goto_1

    .line 304
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 307
    :catch_1
    move-exception v0

    .line 308
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 309
    const/4 v1, 0x2

    sget-object v2, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initDebugMode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string/jumbo v0, ""

    .line 309
    :goto_3
    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    :cond_3
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->refreshDebugMode()V

    goto :goto_1

    .line 310
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_3

    .line 312
    :catchall_0
    move-exception v0

    .line 313
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->refreshDebugMode()V

    .line 314
    throw v0
.end method

.method public static final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 646
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Lcom/alipay/pushsdk/push/m;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->d:Lcom/alipay/pushsdk/push/m;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static final synthetic e()Landroid/os/IBinder;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 478
    const-string/jumbo v0, "onBind()..."

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 480
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/c;->a()Lcom/alipay/pushsdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/c;->b()Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-static {}, Lcom/alipay/pushsdk/push/c/a;->a()Lcom/alipay/pushsdk/push/c/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/push/c/a;->a(I)V

    .line 486
    :goto_0
    return-object v0

    .line 481
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    invoke-static {}, Lcom/alipay/pushsdk/push/c/a;->a()Lcom/alipay/pushsdk/push/c/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/c/a;->a(I)V

    .line 486
    const/4 v0, 0x0

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    .line 484
    invoke-static {}, Lcom/alipay/pushsdk/push/c/a;->a()Lcom/alipay/pushsdk/push/c/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/push/c/a;->a(I)V

    .line 485
    throw v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 10

    .prologue
    const/4 v4, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x0

    .line 507
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startAlarmTimer ELAPSED_REALTIME_WAKEUP! nextTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 513
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 514
    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".push.action.CHECK"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    const/16 v1, 0x64

    invoke-static {p0, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/app/PendingIntent;

    .line 521
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/AlarmManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 522
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 523
    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 524
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->d:Lcom/alipay/pushsdk/push/m;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/AlarmManager;

    int-to-long v1, p1

    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/app/PendingIntent;

    .line 524
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/pushsdk/push/m;->a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)Z

    move-result v0

    .line 526
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startAlarmTimer() setReflectTimer ret="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 527
    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_2
    if-eqz v0, :cond_4

    .line 546
    :cond_3
    :goto_0
    return-void

    .line 536
    :cond_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 537
    int-to-long v3, p1

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/app/PendingIntent;

    sget-object v4, Lcom/alipay/pushsdk/push/NotificationService;->l:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1, v2}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v4, p0, v0, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v5

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v4

    invoke-static {v5, v6, v7, v8, v4}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallAlarmManagerSetPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 542
    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 543
    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->k:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onBind at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", Intent: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->e()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 79
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 82
    sput-object p0, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/alipay/pushsdk/push/NotificationService;->a(Landroid/content/Context;)V

    .line 84
    const-string/jumbo v0, "onCreate()..."

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/alipay/pushsdk/push/l;

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/l;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->b()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCreate() flagGuard="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 93
    sget-object v1, Lcom/alipay/pushsdk/push/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    .line 95
    const/16 v1, 0x708

    .line 94
    invoke-static {v0, v1, v3}, Lcom/alibaba/android/proc/SoManager;->getInstance(Landroid/content/Context;IZ)Lcom/alibaba/android/proc/SoManager;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/alibaba/android/proc/SoManager;->start()V

    .line 97
    const-string/jumbo v0, "onCreate() soManager is started."

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 100
    :cond_0
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/c;->b(Landroid/content/Context;)V

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const/16 v1, 0x1688

    invoke-virtual {p0, v1, v0}, Lcom/alipay/pushsdk/push/NotificationService;->startForeground(ILandroid/app/Notification;)V

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/m;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/push/m;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/NotificationService;->d:Lcom/alipay/pushsdk/push/m;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCreate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->d:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->a()Lcom/alipay/pushsdk/push/a/a;

    move-result-object v0

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->d:Lcom/alipay/pushsdk/push/m;

    iput-object v1, v0, Lcom/alipay/pushsdk/push/a/a;->c:Lcom/alipay/pushsdk/push/m;

    .line 112
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    const-string/jumbo v1, "start()..."

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/alipay/pushsdk/push/h;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/h;->a()V

    new-instance v0, Lcom/alipay/pushsdk/push/i;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/pushsdk/push/t;->c()V

    .line 114
    const-string/jumbo v0, "onCreate DelayedPushMessageManager initManager now."

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/b;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/push/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/b;->a()V

    .line 117
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/AlarmManager;

    .line 118
    new-instance v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/ClientActionReceiver;-><init>(Lcom/alipay/pushsdk/push/NotificationService;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->g:Landroid/content/BroadcastReceiver;

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".push.action.CONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".push.action.KEEPLIVE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".push.action.CHECK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/pushsdk/push/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->a(I)V

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->updateConfig(Landroid/content/Context;)Z

    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/MasterConfigureChangedListener;->getInstance()Lcom/alipay/pushsdk/amnetproxy/MasterConfigureChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->addConfigureChangedListener(Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;)V

    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/util/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->init(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseAmnet()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/k;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isUseAmnet:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-static {}, Lcom/alipay/pushsdk/push/b/e;->a()Lcom/alipay/pushsdk/push/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->addNetworkTunnelChangedListener(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/c/a;->a()Lcom/alipay/pushsdk/push/c/a;

    move-result-object v0

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->getInstance()Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/c/a;->a(Lcom/alipay/pushsdk/push/c/c;)V

    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->run()V

    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    new-instance v1, Lcom/alipay/pushsdk/amnetproxy/MasterProxyHttpDnsUpListener;

    invoke-direct {v1}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyHttpDnsUpListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->addHttpDnsUpdateObserver(Ljava/util/Observer;)V

    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->registerNetworkListener(Landroid/content/Context;)V

    new-instance v0, Lcom/alipay/pushsdk/push/d;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/d;-><init>(Lcom/alipay/pushsdk/push/NotificationService;)V

    invoke-static {}, Lcom/alipay/pushsdk/util/b;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    const-wide/16 v2, 0x1f40

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-static {}, Lcom/alipay/pushsdk/a/h;->b()V

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/alipay/pushsdk/c;->a()Lcom/alipay/pushsdk/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Lcom/alipay/pushsdk/c;->c()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/pushsdk/c;->b()Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->init(Landroid/content/Context;Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/alipay/pushsdk/b;->a()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;->register(Ljava/lang/String;Ljava/lang/Object;)V

    const-class v1, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/AmnetClientServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;->register(Ljava/lang/String;Ljava/lang/Object;)V

    const-class v1, Lcom/alipay/mobile/common/transport/config/CtrlNormalConfigChangedEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/pushsdk/a/d;

    invoke-direct {v2}, Lcom/alipay/pushsdk/a/d;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;->register(Ljava/lang/String;Ljava/lang/Object;)V

    const-class v1, Lcom/alipay/mobile/common/transport/httpdns/ipc/UpdateDnsService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/pushsdk/amnetproxy/foreign/UpdateDnsServiceImpl;

    invoke-direct {v2}, Lcom/alipay/pushsdk/amnetproxy/foreign/UpdateDnsServiceImpl;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;->register(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    :goto_1
    invoke-static {}, Lcom/alipay/pushsdk/push/c/a;->a()Lcom/alipay/pushsdk/push/c/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/c/a;->a(I)V

    .line 127
    return-void

    .line 123
    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x4

    const/4 v4, 0x2

    .line 424
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 425
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->stopForeground(Z)V

    .line 434
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/b;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/push/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/b;->b()V

    .line 436
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    const-string/jumbo v1, "stop()..."

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/AlarmManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->g:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->d:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->b()V

    .line 437
    invoke-static {}, Lcom/alipay/pushsdk/util/log/c;->a()V

    .line 439
    new-instance v0, Lcom/alipay/pushsdk/push/s;

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/s;-><init>(Landroid/content/Context;)V

    .line 441
    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->d:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/m;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 442
    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->d:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 443
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/s;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 444
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 445
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy() will restart this service."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 449
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".push.action.START_PUSHSERVICE"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    new-instance v1, Lcom/alipay/pushsdk/AliPushAppInfo;

    invoke-direct {v1}, Lcom/alipay/pushsdk/AliPushAppInfo;-><init>()V

    .line 454
    const-string/jumbo v2, "16"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/AliPushAppInfo;->setTrigger(Ljava/lang/String;)V

    .line 455
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 456
    const-string/jumbo v3, "appinfo_parcelable"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 457
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 462
    :cond_5
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Ljava/lang/String;

    .line 465
    :try_start_2
    invoke-static {}, Lcom/alipay/pushsdk/c;->a()Lcom/alipay/pushsdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/c;->d()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    move-result-object v0

    .line 466
    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;->unregisterAll()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 473
    :cond_6
    :goto_2
    invoke-static {}, Lcom/alipay/pushsdk/push/c/a;->a()Lcom/alipay/pushsdk/push/c/a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/c/a;->a(I)V

    .line 474
    return-void

    .line 436
    :catch_0
    move-exception v0

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 467
    :catch_2
    move-exception v0

    .line 468
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 469
    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 491
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    const-string/jumbo v1, "onRebind()..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_0
    invoke-static {}, Lcom/alipay/pushsdk/push/c/a;->a()Lcom/alipay/pushsdk/push/c/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/c/a;->a(I)V

    .line 495
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->j:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onStartCommand at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", Intent: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onStartCommand Received start id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    if-eqz p1, :cond_c

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ".intent.action.COCKROACH"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "cockroach"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "cockroach-PPreotect"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    const-string/jumbo v2, "onStartCommand data isn\'t expected and do something"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    const-string/jumbo v1, "push"

    const-string/jumbo v2, "proc_guard"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onStartCommand getMonitorLogger push,proc_guard,"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", osVERSION="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", MODEL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    new-instance v1, Lcom/alipay/pushsdk/push/i;

    sget-object v2, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/i;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/i;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/pushsdk/push/NotificationService;->i:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1, v8}, Lcom/alipay/pushsdk/push/i;->a(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->d:Lcom/alipay/pushsdk/push/m;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/push/m;->a(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "refreshUserId mUserId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mUtdId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/pushsdk/push/NotificationService;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onStartCommand trigerEvent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", utdId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/pushsdk/push/NotificationService;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lcom/alipay/pushsdk/push/e;

    invoke-direct {v1, p0, v0}, Lcom/alipay/pushsdk/push/e;-><init>(Lcom/alipay/pushsdk/push/NotificationService;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v2, "NotificationService Triger Runnable"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    const-string/jumbo v2, "configRequest()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/pushsdk/push/c;

    invoke-direct {v1, p0}, Lcom/alipay/pushsdk/push/c;-><init>(Lcom/alipay/pushsdk/push/NotificationService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_7
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v0

    const-string/jumbo v1, "PUSH_ON_START_COMMOND_TIME"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/i;->b(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v0

    const-string/jumbo v1, "PUSH_ON_START_COMMOND_COUNT"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/i;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_d

    const-string/jumbo v2, "\u8bb0\u6b21\u5f00\u59cb"

    sget-object v3, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v3

    const-string/jumbo v6, "PUSH_ON_START_COMMOND_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;J)Z

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    const/4 v3, 0x1

    :cond_8
    :goto_1
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->isCanLog()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3c

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-wide/16 v8, 0xa

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " isUseSticky totalCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " interval:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isSticky:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    :cond_9
    const-string/jumbo v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " isUseSticky totalCount:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, " interval:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " isSticky:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/alipay/pushsdk/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v2

    const-string/jumbo v4, "PUSH_ON_START_COMMOND_COUNT"

    invoke-virtual {v2, v4, v0, v1}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;J)Z

    if-eqz v3, :cond_11

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_a
    const-string/jumbo v0, "appinfo_parcelable"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/AliPushAppInfo;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/alipay/pushsdk/AliPushAppInfo;->getTrigger()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    const-string/jumbo v2, "onStartCommand() pushAppInfo is null."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "10"

    goto/16 :goto_0

    :cond_d
    const-wide/16 v6, 0xa

    cmp-long v6, v0, v6

    if-gez v6, :cond_f

    const-wide/32 v2, 0xea60

    cmp-long v2, v4, v2

    if-gtz v2, :cond_e

    const-string/jumbo v2, "%1$ds\u5185\u91cd\u542f\u6b21\u6570\u5c0f\u4e8e%2$d\u6b21,\u7ee7\u7eed\u8bb0\u5f55"

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v2, "%1$ds\u540e\u91cd\u542f\u6b21\u6570\u5c0f\u4e8e%2$d\u6b21,\u90a3\u4e48\u91cd\u65b0\u8ba1\u5f55"

    const-wide/16 v0, 0x0

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_f
    const-wide/16 v6, 0xa

    cmp-long v6, v0, v6

    if-ltz v6, :cond_8

    const-wide/32 v2, 0xea60

    cmp-long v2, v4, v2

    if-gtz v2, :cond_10

    const-string/jumbo v2, "%1$ds\u5185\u91cd\u542f\u6b21\u6570\u5927\u4e8e%2$d\u6b21,\u8bb0\u6570\u4e0d\u6e05,\u65f6\u95f4\u91cd\u7f6e,\u4ee5\u4fbf\u4e0b\u6b21\u8fd8\u8d70\u5230\u8fd9\u4e2a\u903b\u8f91,\u51fa\u5f02\u5e38\u5c31\u662f\u8981\u6301\u7eed\u7528\u975esticky \u76f4\u5230\u8d85\u8fc7%1$ds\u4f1a\u6062\u590d"

    sget-object v3, Lcom/alipay/pushsdk/push/NotificationService;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v3

    const-string/jumbo v6, "PUSH_ON_START_COMMOND_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;J)Z

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v2, "%1$ds\u4e4b\u540e\u91cd\u542f\u6b21\u6570\u5927\u4e8e%2$d\u6b21,\u8bb0\u6570\u6e05\u96f6\u56e0\u4e3a\u5728\u53ef\u63a5\u53d7\u7684\u8303\u56f4\u5185\u8fd8\u4f1a\u7ee7\u7eedsticky\u6a21\u5f0f"

    const-wide/16 v0, 0x0

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_11
    const/4 v0, 0x2

    goto :goto_2

    :cond_12
    move-object v0, v7

    goto/16 :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 499
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->b:Ljava/lang/String;

    const-string/jumbo v1, "onUnbind()..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_0
    invoke-static {}, Lcom/alipay/pushsdk/push/c/a;->a()Lcom/alipay/pushsdk/push/c/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/c/a;->a(I)V

    .line 503
    const/4 v0, 0x1

    return v0
.end method
