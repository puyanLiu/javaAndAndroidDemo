.class public Lcom/alipay/pushsdk/push/ClientActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClientActionReceiver.java"


# static fields
.field public static a:I

.field private static final b:Ljava/lang/String;

.field private static final synthetic d:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private c:Lcom/alipay/pushsdk/push/NotificationService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "ClientActionReceiver.java"

    const-class v2, Lcom/alipay/pushsdk/push/ClientActionReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.pushsdk.push.ClientActionReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 35
    const-class v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 34
    sput-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    .line 36
    const/16 v0, 0x12c

    sput v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a:I

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/NotificationService;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/ClientActionReceiver;)Lcom/alipay/pushsdk/push/NotificationService;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v11, 0x4

    .line 364
    invoke-static {p0}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v4

    .line 366
    const-string/jumbo v0, "IPP_360_CFG_DATE"

    invoke-virtual {v4, v0}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string/jumbo v2, "IPP_360_CFG_TIME"

    invoke-virtual {v4, v2}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    :cond_0
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    .line 372
    const-string/jumbo v1, "process360Ipp ippDate or ippTime empty return."

    .line 371
    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_1
    :goto_0
    return-void

    .line 378
    :cond_2
    const-string/jumbo v3, "IPP_360_LAST_PROTECT_MONTH"

    invoke-virtual {v4, v3}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    const-string/jumbo v5, "IPP_360_LAST_PROTECT_DATE"

    invoke-virtual {v4, v5}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 383
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 384
    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 385
    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 386
    const/16 v9, 0xb

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 387
    const/16 v10, 0xc

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 389
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 390
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 391
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    .line 393
    const-string/jumbo v1, "process360Ipp already protected today return."

    .line 392
    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_3
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 399
    const-string/jumbo v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 400
    array-length v0, v3

    if-lez v0, :cond_4

    array-length v0, v2

    if-eq v0, v12, :cond_5

    .line 401
    :cond_4
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    .line 403
    const-string/jumbo v1, "process360Ipp ippDate or ippTime invalid return."

    .line 402
    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 409
    :goto_1
    array-length v10, v3

    if-lt v0, v10, :cond_6

    .line 418
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 419
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    .line 421
    const-string/jumbo v1, "process360Ipp no need protect today return."

    .line 420
    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    :cond_6
    :try_start_0
    aget-object v10, v3, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 412
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 409
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 426
    :cond_7
    aget-object v0, v2, v1

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 427
    aget-object v2, v2, v13

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 428
    array-length v2, v0

    if-ne v2, v12, :cond_8

    array-length v2, v5

    if-eq v2, v12, :cond_9

    .line 429
    :cond_8
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    .line 431
    const-string/jumbo v1, "process360Ipp ippDate or ippTime invalid return."

    .line 430
    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 435
    :cond_9
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 441
    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 442
    const/4 v10, 0x1

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 443
    const/4 v10, 0x1

    aget-object v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 451
    :goto_3
    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v0, v3

    .line 452
    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    .line 453
    mul-int/lit8 v2, v9, 0x3c

    add-int/2addr v2, v6

    .line 454
    if-gt v0, v2, :cond_a

    .line 455
    if-gt v2, v1, :cond_a

    .line 458
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 459
    const-string/jumbo v1, "com.qihoo360.mobilesafe"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string/jumbo v1, "com.qihoo360.mobilesafe"

    .line 462
    const-string/jumbo v2, "com.qihoo360.mobilesafe.service.helper.GuardHelperService"

    .line 461
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string/jumbo v1, "p_from"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 468
    :goto_4
    const-string/jumbo v0, "IPP_360_LAST_PROTECT_MONTH"

    .line 469
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-virtual {v4, v0, v1}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 470
    const-string/jumbo v0, "IPP_360_LAST_PROTECT_DATE"

    .line 471
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {v4, v0, v1}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 472
    invoke-static {v14}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const-string/jumbo v1, "process360Ipp protect 360 done"

    invoke-static {v14, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :catch_0
    move-exception v0

    move v0, v1

    move v2, v1

    move v3, v1

    .line 448
    goto :goto_3

    .line 476
    :cond_a
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    .line 478
    const-string/jumbo v1, "process360Ipp not protect hours return."

    .line 477
    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v10

    goto/16 :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    .prologue
    .line 1
    sget-object v4, Lcom/alipay/pushsdk/push/ClientActionReceiver;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v4, v0, v1, v2, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    if-nez p2, :cond_1

    const-string/jumbo v4, "intent is null"

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v11, "Monitor"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "onReceive at: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v12, ", Intent: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v12, 0x1

    aget-object v7, v7, v12

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", cost:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long/2addr v4, v9

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v11, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "action is null"

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/util/g;->b(Landroid/content/Context;)Z

    move-result v11

    new-instance v12, Lcom/alipay/pushsdk/push/s;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/alipay/pushsdk/push/s;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "onReceive() action="

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v13, " isNotificationEnabled="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Lcom/alipay/pushsdk/push/s;->a()Z

    move-result v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v13, ", isNetConnected="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/push/b;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/push/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/b;->d()V

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v13}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, ".push.action.KEEPLIVE"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->a()Lcom/alipay/pushsdk/push/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/m;->r()V

    const-string/jumbo v4, "30"

    const-string/jumbo v5, "41"

    const-string/jumbo v11, "3"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v4, "15"

    new-instance v5, Lcom/alipay/pushsdk/push/a;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/alipay/pushsdk/push/a;-><init>(Lcom/alipay/pushsdk/push/ClientActionReceiver;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v11, "ClientActionReceiver Triger TRIGER_SERVICE_SCREEN"

    invoke-direct {v4, v5, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v13}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, ".push.action.CONNECT"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v12}, Lcom/alipay/pushsdk/push/s;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v12}, Lcom/alipay/pushsdk/push/s;->e()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "run settingStatus="

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    if-nez v11, :cond_5

    invoke-static {}, Lcom/alipay/pushsdk/push/t;->a()I

    move-result v4

    if-gez v4, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->a()Lcom/alipay/pushsdk/push/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/m;->a()V

    const-string/jumbo v4, "30"

    const-string/jumbo v5, "11"

    const-string/jumbo v11, "1"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    const-string/jumbo v4, "30"

    const-string/jumbo v5, "10"

    const-string/jumbo v11, "6"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v13}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, ".push.action.CHECK"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    sget v5, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/alipay/pushsdk/push/NotificationService;->a(I)V

    invoke-static {}, Lcom/alipay/pushsdk/push/d/e;->a()I

    move-result v4

    sget v5, Lcom/alipay/pushsdk/push/d/e;->c:I

    if-eq v4, v5, :cond_10

    const/4 v4, 0x4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x4

    sget-object v5, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const-string/jumbo v13, "startLBSTimer state is not LBS_INFO_LL and stop LBS."

    invoke-static {v4, v5, v13}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v5

    const-string/jumbo v13, "IPP_COUNT_WATCHDOG"

    invoke-virtual {v5, v13}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_a

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    :cond_a
    const/4 v13, 0x4

    invoke-static {v13}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x4

    sget-object v14, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "processTimingIpp curCnt="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", expectCnt=2"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/4 v13, 0x2

    if-lt v4, v13, :cond_e

    const-string/jumbo v4, "IPP_WEIBO_SWITCH"

    invoke-virtual {v5, v4}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    const-string/jumbo v13, "on"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_c
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v13, "com.sina.weibo"

    invoke-virtual {v4, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "com.sina.weibo"

    const-string/jumbo v14, "com.sina.weibo.push.PushServiceProxy"

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "intent_come_from"

    const-string/jumbo v14, "alipay"

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "clientId"

    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/pushsdk/util/e;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x4

    sget-object v13, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const-string/jumbo v14, "processTimingIpp done Ipp Protecting Weibo"

    invoke-static {v4, v13, v14}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_4
    const/4 v4, 0x0

    :cond_e
    const-string/jumbo v13, "IPP_COUNT_WATCHDOG"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v13, v4}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a(Landroid/content/Context;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->a()Lcom/alipay/pushsdk/push/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v5

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->a()Lcom/alipay/pushsdk/push/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/connection/i;->d()Z

    move-result v4

    :cond_f
    new-instance v5, Lcom/alipay/pushsdk/push/s;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-direct {v5, v13}, Lcom/alipay/pushsdk/push/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/s;->a()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/s;->e()Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v5, 0x1

    :goto_5
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "checkPushStatus linkStatus="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", settingStatus="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    if-ne v5, v4, :cond_16

    const/4 v4, 0x0

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "PushCheck checkPushStatus="

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->a()Lcom/alipay/pushsdk/push/m;

    move-result-object v5

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/m;->b()V

    const-string/jumbo v4, "16"

    const-string/jumbo v5, "20"

    const-string/jumbo v11, "7"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v5

    const-string/jumbo v13, "LBS_COUNT_WATCHDOG"

    invoke-virtual {v5, v13}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_11

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_11

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    :cond_11
    invoke-static {}, Lcom/alipay/pushsdk/push/d/e;->b()I

    move-result v13

    const/4 v14, 0x4

    invoke-static {v14}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v14

    if-eqz v14, :cond_12

    const/4 v14, 0x4

    sget-object v15, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "startLBSTimer curCnt="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", expectCnt="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_12
    if-lt v4, v13, :cond_13

    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/push/d/d;->a(Landroid/content/Context;)V

    const/4 v4, 0x0

    :cond_13
    const-string/jumbo v13, "LBS_COUNT_WATCHDOG"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v13, v4}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_14
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x4

    sget-object v13, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const-string/jumbo v14, "processTimingIpp weiboSwitch if off. do nothing."

    invoke-static {v4, v13, v14}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_16
    if-eqz v5, :cond_17

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_17
    const/4 v4, -0x1

    goto/16 :goto_6

    :pswitch_1
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/m;->o()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/m;->s()J

    move-result-wide v11

    sget v4, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a:I

    int-to-long v13, v4

    cmp-long v4, v11, v13

    if-gtz v4, :cond_0

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/m;->r()V

    const-string/jumbo v4, "16"

    const-string/jumbo v5, "41"

    const-string/jumbo v11, "3"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v12}, Lcom/alipay/pushsdk/push/s;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->d()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v4, v11, v13

    if-lez v4, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v11, v13, v11

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->c()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v13, v4

    sub-long v11, v13, v11

    const-wide/16 v13, 0x0

    cmp-long v4, v11, v13

    if-gtz v4, :cond_18

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/m;->b()V

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/m;->a()V

    const-string/jumbo v4, "16"

    const-string/jumbo v5, "31"

    const-string/jumbo v11, "1"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v4, "16"

    const-string/jumbo v5, "30"

    const-string/jumbo v11, "5"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/m;->a()V

    const-string/jumbo v4, "16"

    const-string/jumbo v5, "01"

    const-string/jumbo v11, "1"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ClientActionReceiver igonre action:"

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
