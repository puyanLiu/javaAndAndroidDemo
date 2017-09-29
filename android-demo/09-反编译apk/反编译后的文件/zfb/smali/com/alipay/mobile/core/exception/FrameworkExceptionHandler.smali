.class public Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;
.super Ljava/lang/Object;
.source "FrameworkExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final TAG:Ljava/lang/String; = "ExceptionHandler"

.field private static a:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private d:Z

.field private e:Lcom/alipay/mobile/core/impl/AppExitHelper;

.field private final f:J

.field private g:J

.field private h:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Z

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->f:J

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->g:J

    .line 70
    return-void
.end method

.method private static a(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 230
    :try_start_0
    invoke-interface {p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    const-string/jumbo v2, "ExceptionHandler"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 318
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->isStartupCrash()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->handleCrashOnStartup()V

    .line 323
    :cond_0
    const-string/jumbo v0, "ExceptionHandler"

    const-string/jumbo v1, "FrameworkExceptionHandler: This is the exception that cause Crash."

    invoke-static {v0, v1, p2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/Throwable;

    const-string/jumbo v1, "NegligibleThrowable"

    invoke-direct {v0, v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p2, v0

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->clearState()V

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->clearTopApps()V

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_4

    .line 334
    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->e:Lcom/alipay/mobile/core/impl/AppExitHelper;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/core/impl/AppExitHelper;->finishAllActivities(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 340
    :cond_3
    return-void

    .line 336
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->e:Lcom/alipay/mobile/core/impl/AppExitHelper;

    invoke-virtual {v0, v2, v2}, Lcom/alipay/mobile/core/impl/AppExitHelper;->finishAllActivities(Landroid/app/Activity;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/app/MicroApplication;)Z
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    const-class v0, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/core/ApplicationManager;

    .line 120
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/alipay/mobile/core/ApplicationManager;->getEntryAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 123
    :cond_0
    return v0
.end method

.method private a(Ljava/lang/Throwable;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 302
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->h:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    instance-of v0, v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->h:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    check-cast v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;->filter(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 313
    :goto_0
    return v0

    .line 305
    :cond_0
    instance-of v0, p1, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.taobao.infsword.service.AppInstallReceiver"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 306
    goto :goto_0

    .line 307
    :cond_1
    instance-of v0, p1, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_2

    .line 308
    invoke-static {p1}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_2

    const-string/jumbo v3, "android.app.ActivityThread.handleStopActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 310
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Z

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;
    .locals 2

    .prologue
    .line 78
    const-class v1, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    invoke-direct {v0}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;-><init>()V

    sput-object v0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    .line 81
    :cond_0
    sget-object v0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 280
    if-nez p0, :cond_0

    .line 281
    const-string/jumbo v0, ""

    .line 297
    :goto_0
    return-object v0

    .line 282
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 283
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 285
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 286
    if-nez v0, :cond_1

    .line 287
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 290
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 292
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 294
    :cond_2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 295
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/alipay/mobile/core/impl/AppExitHelper;Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;)Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    if-nez v0, :cond_0

    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->b:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->e:Lcom/alipay/mobile/core/impl/AppExitHelper;

    .line 96
    iput-object p3, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->h:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    .line 97
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 99
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 100
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 105
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_1
    return-object p0

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x1

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->h:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->h:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string/jumbo v2, "main"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 145
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    .line 147
    invoke-static {v3}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_2

    invoke-static {v3, v1}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/app/MicroApplication;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->g:J

    .line 155
    const-string/jumbo v1, "ExceptionHandler"

    invoke-static {v1, p2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    invoke-direct {p0, p2}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 157
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sendCrash(Ljava/lang/Throwable;)V

    :cond_4
    move v2, v0

    .line 164
    :goto_1
    :try_start_0
    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 165
    invoke-static {v3}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v4

    .line 166
    if-eqz v4, :cond_7

    invoke-static {v3, v4}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/app/MicroApplication;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 169
    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_5

    new-instance v5, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;

    invoke-direct {v5, p0, v1, v4, v3}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;-><init>(Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;Landroid/app/Activity;Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_5
    if-eqz v0, :cond_6

    :try_start_1
    const-string/jumbo v1, "android.app.Activity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v4, "mMainThread"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v4, "getHandler"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :cond_6
    :goto_2
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    .line 178
    const-string/jumbo v1, "ExceptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "FrameworkExceptionHandler.retry(count="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 182
    iget-wide v6, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->g:J

    sub-long v6, v4, v6

    iget-wide v8, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->f:J

    cmp-long v1, v6, v8

    if-gez v1, :cond_8

    .line 183
    invoke-direct {p0, p1, v10}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 174
    :cond_7
    const/4 v0, 0x0

    :try_start_3
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 187
    :cond_8
    add-int/lit8 v1, v2, 0x1

    .line 188
    const/4 v2, 0x3

    if-ge v1, v2, :cond_9

    .line 189
    iput-wide v4, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->g:J

    .line 190
    invoke-direct {p0, p2}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 191
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sendCrash(Ljava/lang/Throwable;)V

    move v2, v1

    goto/16 :goto_1

    .line 195
    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_a
    move v2, v1

    .line 198
    goto/16 :goto_1

    .line 201
    :cond_b
    const-string/jumbo v0, "LauncherApplication.Init"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method
