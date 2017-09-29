.class public Lcom/alipay/mobile/framework/app/ui/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# static fields
.field public static final KEY_APP_ID:Ljava/lang/String; = "app_id"

.field public static final KEY_EXTRAS:Ljava/lang/String; = "mExtras"

.field static final TAG:Ljava/lang/String;

.field private static a:Z

.field private static b:Z


# instance fields
.field private c:Landroid/app/Activity;

.field private final d:Landroid/os/Handler;

.field private e:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field protected mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Z

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->d:Landroid/os/Handler;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Ljava/util/HashMap;

    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    .line 93
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->getInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->recordActivity(Landroid/app/Activity;)V

    .line 95
    new-instance v0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->e:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    .line 97
    const-string/jumbo v0, ""

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a(Landroid/content/Intent;)V

    .line 105
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to start "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    sget-object v2, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ActivityApplication;

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 111
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ActivityHelper() appId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$ActivityApplicationStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$ActivityApplicationStub;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;Lcom/alipay/mobile/framework/app/ui/ActivityHelper$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-string/jumbo v1, "ActivityApplicationStub"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->setAppId(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 117
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ActivityHelper() finish & return"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->finish()V

    .line 129
    :goto_1
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->setIsPrevent(Z)V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->pushActivity(Landroid/app/Activity;)V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_CREATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 132
    const-string/jumbo v0, "mExtras"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 137
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    if-nez v0, :cond_0

    move v0, v1

    .line 343
    :goto_0
    return v0

    .line 327
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    const-string/jumbo v3, "android.permission.GET_TASKS"

    invoke-static {v0, v3}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 328
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 329
    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    const-string/jumbo v3, "activity"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 332
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 334
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 335
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 336
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    :cond_2
    move v0, v1

    .line 343
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)Z
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a()Z

    move-result v0

    return v0
.end method

.method public static eraseStartupSafeguardFlags()V
    .locals 5

    .prologue
    .line 170
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupPending(Z)V

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$1;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$1;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    return-void
.end method

.method public static isBrought2Foreground()Z
    .locals 1

    .prologue
    .line 523
    sget-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Z

    return v0
.end method

.method public static sendUserLeaveHintBroadcast(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 312
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Z

    .line 314
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 316
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 319
    return-void
.end method

.method static startClientStartedPipeline()V
    .locals 2

    .prologue
    .line 260
    sget-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Z

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Z

    .line 263
    const-string/jumbo v0, "Pipeline"

    const-string/jumbo v1, "PIPELINE_FRAMEWORK_CLIENT_STARTED : start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 266
    const-string/jumbo v1, "com.alipay.mobile.client.STARTED"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->start()V

    .line 269
    :cond_0
    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .prologue
    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->e:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 415
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    .line 440
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->e:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 442
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 9

    .prologue
    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->e:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 463
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->e:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 500
    return-void
.end method

.method public dispatchOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->removeActivity(Landroid/app/Activity;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->e:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 392
    return-void
.end method

.method public getApp()Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method public getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method

.method public getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 368
    :try_start_0
    const-string/jumbo v0, "android.text.TextLine"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "sCached"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->removeActivity(Landroid/app/Activity;)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 373
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_DESTROY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 375
    return-void

    .line 368
    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->setIsPrevent(Z)V

    .line 294
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a(Landroid/content/Intent;)V

    .line 295
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 274
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_PAUSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v2, :cond_0

    .line 276
    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_DATA"

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 281
    return-void
.end method

.method onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 160
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 182
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->eraseStartupSafeguardFlags()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v9

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_1

    .line 192
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v1, :cond_2

    .line 201
    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    :cond_2
    const-string/jumbo v1, "com.alipay.mobile.framework.ACTIVITY_DATA"

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {v9, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 206
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendBroadcast: MsgCodeConstants.FRAMEWORK_ACTIVITY_RESUME"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 209
    sget-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Z

    if-eqz v0, :cond_4

    .line 210
    sput-boolean v6, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Z

    .line 212
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;-><init>(Landroid/app/Activity;)V

    const-string/jumbo v1, "\u6743\u9650\u7533\u8bf7"

    const-string/jumbo v2, "\u7531\u4e8e\u652f\u4ed8\u5b9d\u65e0\u6cd5\u83b7\u5f97\u5b58\u50a8\u7a7a\u95f4\u6743\u9650\uff0c\u4e0d\u80fd\u6b63\u5e38\u8fd0\u884c\uff0c\u8bf7\u5728\u201c\u8bbe\u7f6e->\u5e94\u7528->\u652f\u4ed8\u5b9d->\u6743\u9650\u201d\u4e2d\u5f00\u542f\u8be5\u6743\u9650\u540e\u518d\u4f7f\u7528\u652f\u4ed8\u5b9d\u3002"

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$2;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$2;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 213
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.mobile.framework.BROUGHT_TO_FOREGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v9, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 217
    :cond_4
    return-void

    .line 197
    :catch_0
    move-exception v1

    sget-object v1, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    goto/16 :goto_0

    .line 212
    :catch_1
    move-exception v0

    move v0, v6

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->saveState()V

    .line 365
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 167
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$3;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 349
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.WINDOW_FOCUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    const-string/jumbo v2, "com.alipay.mobile.framework.WINDOW_FOCUS_CHANGED"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 354
    if-eqz p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->windowFocus()V

    .line 357
    :cond_0
    return-void
.end method

.method requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->f:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->e:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->e:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    .line 496
    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->e:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->toast(Ljava/lang/String;I)V

    .line 475
    return-void
.end method
