.class public Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;
.super Ljava/lang/Object;
.source "LaunchRouter.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final TAG_CHANNEL_PACKAGE:Ljava/lang/String; = "ChannelPackage"


# instance fields
.field private authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private isShowUserGuide:Z

.field private isUpgrade:I

.field private mActivity:Landroid/app/Activity;

.field private mAlipayApplication:Lcom/alipay/mobile/framework/AlipayApplication;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "LaunchRouter"

    sput-object v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mHandler:Landroid/os/Handler;

    .line 74
    iput v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isUpgrade:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mIntent:Landroid/content/Intent;

    .line 347
    iput-boolean v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isShowUserGuide:Z

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    const-string/jumbo v1, "isUpgrade"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isUpgrade:I

    .line 82
    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mIntent:Landroid/content/Intent;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "main_showGuide"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "isUpgrade"

    iget v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isUpgrade:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "guide"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LaunchRouter isUpgrade = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isUpgrade:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->processGestureCallBack(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->processScheme(Landroid/net/Uri;)V

    return-void
.end method

.method private checkDatatunnelScheme(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 273
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string/jumbo v1, "alipaydt://platformapi"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 280
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.alipay.mobile.command.trigger.WebViewTrigger"

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    const/4 v2, 0x1

    .line 284
    const/4 v3, 0x1

    .line 282
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private delayCheckLoginStatus(Landroid/net/Uri;Z)V
    .locals 4

    .prologue
    .line 573
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedLogin(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u5df2\u542f\u52a8\u538b\u540e\u53f0\u7684\u60c5\u51b5\u4e0b,2\u79d2\u540e\u5224\u65ad\u4e0b\u767b\u5f55\u72b6\u6001"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)V

    .line 595
    const-wide/16 v2, 0x7d0

    .line 575
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 596
    if-eqz p2, :cond_0

    .line 597
    const-string/jumbo v1, "YES"

    .line 598
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    .line 599
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->isCanPassGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    const-string/jumbo v0, "NO"

    .line 602
    :goto_0
    const-string/jumbo v1, "UC-HB-D23"

    const-string/jumbo v2, "88888888"

    const-string/jumbo v3, "NeedGesture"

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private entry(Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 364
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getActiveActivityCount()I

    move-result v1

    if-lez v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 365
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "entry \u5f00\u59cb\u5904\u7406 schema\u534f\u8bae"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    .line 367
    if-eqz p1, :cond_1

    .line 368
    if-eqz v0, :cond_0

    const-string/jumbo v1, "20000125"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    const-string/jumbo v1, "push"

    const-string/jumbo v2, "tagfrom"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u5916\u90e8scheme\u8df3\u8f6c"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->processPush(Landroid/net/Uri;)V

    .line 412
    :goto_0
    return-void

    .line 373
    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v1, "20000125"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    if-eqz p1, :cond_2

    const-string/jumbo v0, "push"

    const-string/jumbo v1, "tagfrom"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u5feb\u6377\u6536\u94f6\u53f0\u5df2\u542f\u52a8\uff0cpush\u6765\u7684schema\u4e0d\u5904\u7406"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "entry GestureCallBack"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$5;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$5;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V

    .line 387
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedAuthGesture()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isOverrangingLeavehintTime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    .line 389
    if-eqz v0, :cond_6

    .line 390
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->isCanPassGesture()Z

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->gestureStrategyLaunch(ZLandroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 391
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "do not need gesture"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000006"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 393
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesturePassFlag()V

    .line 405
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->entryToDefaultBundle(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 396
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "LaunchRouter validateStartClientGesture"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->validateStartClientGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    .line 398
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setLastUserLeavehint(J)V

    goto/16 :goto_0

    .line 401
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "1: mGestureService == null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mGestureService\u4e0d\u9700\u8981\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initInOnCreate(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 195
    :try_start_0
    const-string/jumbo v0, "com.alipay.pushsdk.BroadcastActionReceiver"

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->setComponentEnabled(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v0, "com.alipay.mobile.command.trigger.SysEventChangeTrigger"

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->setComponentEnabled(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "com.alipay.mobile.nfc.ui.NFCEntry"

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->setComponentEnabledIfDefault(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->checkDatatunnelScheme(Landroid/content/Context;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->initScheme(Landroid/content/Context;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)V

    .line 244
    const-wide/16 v2, 0x91

    .line 204
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 247
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private initScheme(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 295
    :cond_0
    sget-object v0, Lcom/alipay/mobile/commonbiz/biz/Constants;->schemeActivitys:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/ComponentUtils;->setComponentArrayEnable(Landroid/content/Context;[Ljava/lang/String;)V

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.mobile.commonbiz.biz.SET_SCHEME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v1, "PACKAGE_NAME"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private isHasLogined()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowUnlogin()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v3, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    .line 461
    const-string/jumbo v3, "isShowUnlogin"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_0

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 463
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isHasLogined()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 466
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 462
    goto :goto_0

    :cond_1
    move v0, v2

    .line 466
    goto :goto_1
.end method

.method private processGestureCallBack(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 612
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$8;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$8;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V

    .line 618
    const-wide/16 v2, 0x32

    .line 612
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 619
    return-void
.end method

.method private processPush(Landroid/net/Uri;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 504
    if-eqz v0, :cond_0

    .line 505
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-class v2, Lcom/alipay/mobile/commonbiz/biz/PuppetMain;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 509
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 512
    const-string/jumbo v2, "pushToFront"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 514
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.security.authcenter.ui.login.LoginActivity_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u5f53\u524d\u5904\u4e8e\u767b\u5f55\u754c\u9762\u53ea\u505a\u63a8\u524d\u53f0\u64cd\u4f5c"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 525
    if-eqz v0, :cond_3

    .line 526
    invoke-virtual {v0, v4, v4}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V

    .line 527
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000008"

    invoke-interface {v0, v1, v2, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 532
    :cond_1
    :goto_1
    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$6;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$6;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V

    .line 539
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedAuthGesture()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isOverrangingLeavehintTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 540
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "processPush isNeedAuthGesture: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedAuthGesture()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    .line 542
    if-eqz v0, :cond_5

    .line 543
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->isCanPassGesture()Z

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->gestureStrategyLaunch(ZLandroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 545
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u5df2\u542f\u52a8\u538b\u540e\u53f0\u7684\u60c5\u51b5\u4e0b\uff0c\u7b2c\u4e09\u65b9\u8df3\u8f6c\u68c0\u6d4buri\uff0c\u6807\u8bc6\u4e3a\u9700\u8981\u8df3\u8fc7\u624b\u52bf"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000006"

    invoke-interface {v1, v2, v3, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 549
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesturePassFlag()V

    .line 550
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->processGestureCallBack(Landroid/net/Uri;)V

    .line 565
    :goto_2
    return-void

    .line 517
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 518
    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 529
    :cond_3
    sget-object v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    goto/16 :goto_1

    .line 553
    :cond_4
    invoke-direct {p0, p1, v5}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->delayCheckLoginStatus(Landroid/net/Uri;Z)V

    .line 555
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->validateStartClientGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    .line 556
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setLastUserLeavehint(J)V

    goto :goto_2

    .line 559
    :cond_5
    sget-object v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    goto :goto_2

    .line 562
    :cond_6
    invoke-direct {p0, p1, v4}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->delayCheckLoginStatus(Landroid/net/Uri;Z)V

    .line 563
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->processGestureCallBack(Landroid/net/Uri;)V

    goto :goto_2
.end method

.method private processScheme(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 477
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 479
    if-eqz v0, :cond_1

    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->setExternData(Landroid/os/Bundle;)V

    .line 484
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :cond_1
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipayLogin"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setComponentEnabled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 253
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    return-void
.end method

.method private setComponentEnabledIfDefault(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 261
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    if-nez v2, :cond_0

    .line 265
    invoke-virtual {v0, v1, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 266
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    :cond_0
    return-void
.end method

.method private startGuideOrMain()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 349
    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "main_showGuide"

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 350
    const-string/jumbo v3, "isShowGuide"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    iget v3, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isUpgrade:I

    if-ne v3, v1, :cond_0

    const-string/jumbo v3, "isShowGuide"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "isShowGuide"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 353
    iput-boolean v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isShowUserGuide:Z

    move v0, v1

    .line 354
    goto :goto_0
.end method


# virtual methods
.method public attackTimeSend(J)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 622
    iget-boolean v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isShowUserGuide:Z

    if-eqz v0, :cond_0

    .line 636
    :goto_0
    return-void

    .line 623
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 624
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    .line 629
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 630
    const-string/jumbo v7, "-"

    .line 631
    const-string/jumbo v8, "perf_startup"

    .line 633
    const-string/jumbo v10, "s"

    .line 634
    const-string/jumbo v11, "c"

    .line 635
    const/4 v3, 0x4

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    aput-object v4, v12, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    aput-object v4, v12, v3

    const/4 v3, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ""

    aput-object v4, v12, v3

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v9, v2

    .line 623
    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doStartEntry()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pushToFront"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 115
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mAlipayApplication:Lcom/alipay/mobile/framework/AlipayApplication;

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mAlipayApplication:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mAlipayApplication:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->initInOnCreate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public entryToDefaultBundle(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 416
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "entryToDefaultBundle"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->clearTopApps()V

    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->clearState()V

    .line 428
    const/4 v0, 0x0

    .line 429
    if-eqz p1, :cond_1

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 433
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 432
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->setExternData(Landroid/os/Bundle;)V

    .line 436
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 437
    const-string/jumbo v1, "externParams"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 441
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startEntryApp(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isFirstDeploy()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    .line 303
    if-nez v0, :cond_0

    move v0, v1

    .line 305
    :goto_0
    return v0

    .line 304
    :cond_0
    const-string/jumbo v2, "isFirstDeploy"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public showUserTipDialog(Landroid/app/Activity;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    new-instance v7, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;

    invoke-direct {v7, p0, p1, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/content/Context;Landroid/app/Activity;)V

    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    .line 130
    const-string/jumbo v2, "usertip"

    invoke-virtual {p1, v2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 132
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    .line 136
    :try_start_0
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v9, "channel.config"

    invoke-virtual {v2, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 136
    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 139
    :try_start_2
    invoke-virtual {v8, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 142
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 148
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 155
    :cond_0
    :goto_1
    const-string/jumbo v2, "isShowUserTip"

    invoke-virtual {v8, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    if-eqz v2, :cond_1

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 158
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "LaunchRoutor: userTipValue="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", isShowUserTip="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    if-eqz v0, :cond_5

    const-string/jumbo v0, "showTip"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    new-instance v2, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-direct {v2, v7}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;-><init>(Landroid/content/Context;)V

    .line 162
    new-instance v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;Landroid/content/SharedPreferences;Landroid/app/Application;Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {v2}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->show()V

    .line 187
    :goto_2
    return-void

    :catch_0
    move-exception v2

    move-object v2, v5

    .line 142
    :goto_3
    if-eqz v5, :cond_2

    .line 144
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 148
    :cond_2
    :goto_4
    if-eqz v2, :cond_0

    .line 150
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 151
    :catch_1
    move-exception v2

    goto :goto_1

    .line 141
    :catchall_0
    move-exception v0

    move-object v6, v5

    .line 142
    :goto_5
    if-eqz v6, :cond_3

    .line 144
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 148
    :cond_3
    :goto_6
    if-eqz v5, :cond_4

    .line 150
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 154
    :cond_4
    :goto_7
    throw v0

    .line 187
    :cond_5
    monitor-enter v4

    .line 188
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 187
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_2
    move-exception v5

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v5

    goto :goto_0

    :catch_6
    move-exception v2

    goto :goto_1

    .line 141
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v5, v2

    goto :goto_5

    :catch_7
    move-exception v2

    move-object v2, v5

    move-object v5, v6

    goto :goto_3

    :catch_8
    move-exception v5

    move-object v5, v6

    goto :goto_3
.end method

.method public startMain()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 311
    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getInterfaceManager()Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_4

    .line 314
    const-string/jumbo v2, "com.alipay.mobile.security.startIntercept.SecurityStartIntercept"

    const-class v4, Lcom/alipay/mobile/framework/interfaces/RouterInterface;

    invoke-virtual {v0, v2, v4}, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;->findInterfaceByName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/interfaces/RouterInterface;

    .line 318
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 322
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mAlipayApplication:Lcom/alipay/mobile/framework/AlipayApplication;

    if-eqz v1, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->setStartupWithData(Z)V

    .line 325
    if-eqz v0, :cond_1

    .line 326
    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/interfaces/RouterInterface;->callback(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    .line 329
    :cond_1
    if-eqz v3, :cond_2

    .line 330
    invoke-direct {p0, v1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->entry(Landroid/net/Uri;)V

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)V

    .line 339
    const-wide/16 v2, 0xbb8

    .line 333
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    return-void

    .line 322
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method protected writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 493
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 494
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 498
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 499
    return-void
.end method
