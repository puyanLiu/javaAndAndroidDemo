.class public Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;
.super Ljava/lang/Object;
.source "MicroApplicationContextImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/MicroApplicationContext;


# static fields
.field public static final KEY_STATE_FLAG:Ljava/lang/String; = "@@"

.field public static final SHARE_PREF_STATES:Ljava/lang/String; = "_share_tmp_"

.field static final TAG:Ljava/lang/String; = "MicroAppContextImpl"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Landroid/os/Handler;

.field private c:Landroid/os/Handler;

.field private d:Landroid/app/Application;

.field private e:Landroid/app/Activity;

.field private f:Lcom/alipay/mobile/core/ServiceManager;

.field private g:Lcom/alipay/mobile/core/ApplicationManager;

.field private h:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

.field private i:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

.field private j:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

.field private k:Lcom/alipay/mobile/core/init/BootLoader;

.field private final l:Lcom/alipay/mobile/core/impl/AppExitHelper;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b:Landroid/os/Handler;

    .line 130
    new-instance v0, Lcom/alipay/mobile/core/impl/AppExitHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/core/impl/AppExitHelper;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->l:Lcom/alipay/mobile/core/impl/AppExitHelper;

    .line 957
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 969
    if-eqz v0, :cond_0

    .line 973
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 292
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 293
    if-nez v0, :cond_0

    .line 294
    new-instance v0, Landroid/content/ActivityNotFoundException;

    const-string/jumbo v1, "entry class must be set."

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 275
    if-eqz p0, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    .line 278
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v1, "mExtras"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 281
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Lcom/alipay/mobile/core/ApplicationManager;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/core/ApplicationManager;->installApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 982
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    if-nez v0, :cond_0

    move v0, v1

    .line 1002
    :goto_0
    return v0

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    const-string/jumbo v3, "android.permission.GET_TASKS"

    invoke-static {v0, v3}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 985
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 986
    goto :goto_0

    .line 988
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    const-string/jumbo v3, "activity"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 990
    const/4 v3, 0x0

    .line 991
    if-eqz v0, :cond_3

    .line 992
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 994
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 995
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 997
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 998
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move v0, v1

    .line 1002
    goto :goto_0

    :cond_3
    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .prologue
    .line 836
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 845
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mActiveActivity="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 846
    new-instance v1, Ljava/lang/IllegalAccessError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "current Activity must be ActivityInterface\u3002 -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public Toast(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 811
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 812
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "mActiveActivity == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    .line 831
    :goto_0
    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_4

    .line 814
    const/4 v0, 0x0

    .line 815
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v1, :cond_3

    .line 816
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.toast(String, int)"

    move-object v1, v0

    .line 821
    :goto_1
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 822
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 823
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 824
    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->toast(Ljava/lang/String;I)V

    .line 827
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 817
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v1, :cond_5

    .line 818
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.toast(String, int)"

    move-object v1, v0

    goto :goto_1

    .line 829
    :cond_4
    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "current Activity must be ActivityInterface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method public varargs addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 531
    return-void
.end method

.method public attachContext(Landroid/app/Application;Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;)V
    .locals 3

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    .line 146
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "attachContext("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->l:Lcom/alipay/mobile/core/impl/AppExitHelper;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/core/impl/AppExitHelper;->init(Landroid/app/Application;)V

    .line 148
    invoke-static {}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->getInstance()Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->l:Lcom/alipay/mobile/core/impl/AppExitHelper;

    invoke-virtual {v0, v1, v2, p2}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->init(Landroid/content/Context;Lcom/alipay/mobile/core/impl/AppExitHelper;Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;)Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 153
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->createInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    .line 155
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MicroApplicationContextImpl_WorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->c:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    new-instance v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    const-class v1, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/core/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-direct {v0}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    invoke-static {v0}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    const-class v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/core/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->j:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    new-instance v0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->k:Lcom/alipay/mobile/core/init/BootLoader;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->k:Lcom/alipay/mobile/core/init/BootLoader;

    invoke-interface {v0}, Lcom/alipay/mobile/core/init/BootLoader;->load()V

    const-string/jumbo v0, "MicroAppContextImpl"

    const-string/jumbo v1, "Boot finish (in framework)."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->restoreState()V

    .line 156
    return-void
.end method

.method public background()V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->background(Landroid/app/Activity;)V

    .line 718
    return-void
.end method

.method public background(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 722
    if-nez p1, :cond_0

    .line 723
    iget-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    .line 725
    :cond_0
    if-nez p1, :cond_1

    .line 731
    :goto_0
    return-void

    .line 728
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 730
    invoke-static {p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->sendUserLeaveHintBroadcast(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public clearState()V
    .locals 3

    .prologue
    .line 916
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    const-string/jumbo v1, "_share_tmp_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 917
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 918
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 919
    return-void
.end method

.method public clearTopApps()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0}, Lcom/alipay/mobile/core/ApplicationManager;->exit()V

    .line 894
    return-void
.end method

.method public varargs deleteDescriptionByAppId([Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->deleteDescriptionByAppId([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public dismissProgressDialog()V
    .locals 4

    .prologue
    .line 878
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    return-void

    .line 881
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mActiveActivity="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    new-instance v1, Ljava/lang/IllegalAccessError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "current Activity must be ActivityInterface\u3002 -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public doStartApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 588
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "doStartApp(): [sourceAppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], [targetAppId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const/4 v0, 0x2

    aput-object p3, v1, v0

    .line 591
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 592
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 593
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p2}, Lcom/alipay/mobile/core/ApplicationManager;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 596
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 607
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 608
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 675
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 676
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 677
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->close()V

    .line 684
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0}, Lcom/alipay/mobile/core/ApplicationManager;->exit()V

    .line 685
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->finishAllActivities(Landroid/app/Activity;)Z

    .line 692
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 697
    invoke-virtual {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->clearState()V

    .line 706
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 711
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 712
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 713
    return-void
.end method

.method public findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    return-object v0
.end method

.method public findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    return-object v0
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
    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 505
    if-nez v0, :cond_0

    .line 506
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    .line 510
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0}, Lcom/alipay/mobile/core/ApplicationManager;->getTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    return-object v0
.end method

.method public finishAllActivities(Landroid/app/Activity;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 659
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->l:Lcom/alipay/mobile/core/impl/AppExitHelper;

    if-nez v1, :cond_0

    .line 669
    :goto_0
    return v0

    .line 664
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->l:Lcom/alipay/mobile/core/impl/AppExitHelper;

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/core/impl/AppExitHelper;->finishAllActivities(Landroid/app/Activity;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    const/4 v0, 0x1

    goto :goto_0

    .line 667
    :catch_0
    move-exception v1

    .line 668
    const-string/jumbo v2, "MicroAppContextImpl"

    const-string/jumbo v3, "finishAllActivities"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 612
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const/4 v0, 0x2

    aput-object p3, v1, v0

    .line 613
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.finishApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 614
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.finishApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 623
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.finishApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 624
    return-void
.end method

.method public getActiveActivityCount()I
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0}, Lcom/alipay/mobile/core/ApplicationManager;->getActiveActivityCount()I

    move-result v0

    return v0
.end method

.method public getApplicationContext()Landroid/app/Application;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    return-object v0
.end method

.method public getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 2
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
    .line 647
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/core/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    .line 650
    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;->getExternalService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    .line 654
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterfaceManager()Lcom/alipay/mobile/framework/interfaces/InterfaceManager;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->j:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    return-object v0
.end method

.method public getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public getPipelineManager()Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    return-object v0
.end method

.method public getTopActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTopApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 2

    .prologue
    .line 474
    const/4 v0, 0x0

    .line 475
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 480
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v1, :cond_1

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 484
    :cond_1
    return-object v0
.end method

.method public declared-synchronized hasInited()Z
    .locals 1

    .prologue
    .line 806
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public installApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    return-void
.end method

.method public loadBundle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->k:Lcom/alipay/mobile/core/init/BootLoader;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/init/BootLoader;->loadBundle(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public onDestroyContent(Lcom/alipay/mobile/framework/MicroContent;)V
    .locals 2

    .prologue
    .line 489
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/MicroApplication;

    if-eqz v0, :cond_1

    .line 490
    const-class v0, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/core/ApplicationManager;

    .line 491
    if-eqz v0, :cond_0

    .line 492
    check-cast p1, Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->onDestroyApp(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    check-cast p1, Lcom/alipay/mobile/framework/service/MicroService;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ServiceManager;->onDestroyService(Lcom/alipay/mobile/framework/service/MicroService;)V

    goto :goto_0

    .line 496
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "microContent must be MicroApplication or MicroService."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onWindowFocus(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 0

    .prologue
    .line 889
    return-void
.end method

.method public registerApplicationEngine(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationEngine;)Z
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/core/ApplicationManager;->registerApplicationEngine(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationEngine;)Z

    move-result v0

    return v0
.end method

.method public registerApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->registerApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z

    move-result v0

    return v0
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/core/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1011
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 1013
    invoke-virtual {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 1014
    if-eqz v0, :cond_2

    .line 1015
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1016
    instance-of v2, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v2, :cond_2

    .line 1017
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V

    .line 1018
    const/4 v0, 0x1

    .line 1022
    :goto_0
    if-nez v0, :cond_1

    .line 1023
    array-length v0, p1

    new-array v2, v0, [I

    .line 1024
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_0

    .line 1025
    const/4 v1, -0x1

    aput v1, v2, v0

    .line 1024
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1027
    :cond_0
    invoke-interface {p3, p2, p1, v2}, Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1030
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public restoreState()V
    .locals 3

    .prologue
    .line 907
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    const-string/jumbo v1, "_share_tmp_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 908
    const-string/jumbo v1, "@@"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/core/ApplicationManager;->restoreState(Landroid/content/SharedPreferences;)V

    .line 910
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 912
    :cond_0
    return-void
.end method

.method public saveState()V
    .locals 3

    .prologue
    .line 898
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    const-string/jumbo v1, "_share_tmp_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 899
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 900
    const-string/jumbo v1, "@@"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 901
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/core/ApplicationManager;->saveState(Landroid/content/SharedPreferences$Editor;)V

    .line 902
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 903
    return-void
.end method

.method public setStartActivityContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 959
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Ljava/lang/ref/WeakReference;

    .line 960
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 852
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->showProgressDialog(Ljava/lang/String;)V

    return-void

    .line 855
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mActiveActivity="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 856
    new-instance v1, Ljava/lang/IllegalAccessError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "current Activity must be ActivityInterface\u3002 -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 4

    .prologue
    .line 868
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void

    .line 871
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mActiveActivity="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 872
    new-instance v1, Ljava/lang/IllegalAccessError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "current Activity must be ActivityInterface\u3002 -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 344
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v3

    .line 345
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 346
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 349
    const/high16 v0, 0x40000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 350
    invoke-static {p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    .line 351
    const-string/jumbo v0, "app_id"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    .line 355
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v2, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startActivity(app="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a()Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_3

    .line 361
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 362
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->setStartActivityContext(Landroid/content/Context;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 387
    :cond_2
    :goto_1
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 388
    return-void

    .line 365
    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 371
    :catch_1
    move-exception v0

    .line 372
    const-string/jumbo v2, "MicroAppContextImpl"

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Start ActivityShell."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 377
    :catch_2
    move-exception v0

    .line 378
    invoke-virtual {p1, v5}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 379
    throw v0

    .line 369
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 380
    :catch_3
    move-exception v0

    .line 381
    invoke-virtual {p1, v5}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 382
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to startActivity(app="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 227
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v6

    aput-object p2, v1, v4

    .line 228
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, String)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 229
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, String)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    invoke-direct {p0, p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 234
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    const/high16 v0, 0x40000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    invoke-static {v2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    .line 237
    const-string/jumbo v0, "app_id"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    .line 241
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v3, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startActivity(app="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", className="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a()Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_3

    .line 246
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 247
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->setStartActivityContext(Landroid/content/Context;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 271
    :cond_2
    :goto_1
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, String)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 272
    return-void

    .line 250
    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    const-string/jumbo v3, "MicroAppContextImpl"

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Start ActivityShell."

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 261
    :catch_2
    move-exception v0

    .line 262
    invoke-virtual {p1, v6}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 263
    throw v0

    .line 254
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 264
    :catch_3
    move-exception v0

    .line 265
    invoke-virtual {p1, v6}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 266
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to startActivity(app="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", className="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 412
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v3

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 413
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 414
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 417
    const/high16 v0, 0x40000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    invoke-static {p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    .line 419
    const-string/jumbo v0, "app_id"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    .line 423
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v2, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startActivityForResult(app="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_2
    :goto_0
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 444
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    const-string/jumbo v2, "MicroAppContextImpl"

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Start ActivityShell."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-static {v0, p2, p3}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 433
    :catch_1
    move-exception v0

    .line 434
    invoke-virtual {p1, v5}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 435
    throw v0

    .line 436
    :catch_2
    move-exception v0

    .line 437
    invoke-virtual {p1, v5}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 438
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to startActivityForResult(app="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 303
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v6

    aput-object p2, v1, v4

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 304
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, String, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 305
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, String, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    invoke-direct {p0, p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 310
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    const/high16 v0, 0x40000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 312
    invoke-static {v2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    .line 313
    const-string/jumbo v0, "app_id"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    .line 317
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v3, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startActivityForResult(app="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", className="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, v2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_2
    :goto_0
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, String, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 340
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    const-string/jumbo v3, "MicroAppContextImpl"

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Start ActivityShell."

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-static {v0, v2, p3}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 328
    :catch_1
    move-exception v0

    .line 329
    invoke-virtual {p1, v6}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 330
    throw v0

    .line 331
    :catch_2
    move-exception v0

    .line 332
    invoke-virtual {p1, v6}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 333
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to startActivityForResult(app="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", className="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 565
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startApp(): [sourceAppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], [targetAppId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const/4 v0, 0x2

    aput-object p3, v1, v0

    .line 568
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 569
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->c:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 584
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 585
    return-void
.end method

.method public startEntryApp(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->startEntryApp(Landroid/os/Bundle;)V

    .line 561
    return-void
.end method

.method public startExtActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 392
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/4 v0, 0x1

    aput-object p2, v1, v0

    .line 393
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivity(MicroApplication, Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 394
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivity(MicroApplication, Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 397
    const/high16 v0, 0x40000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    .line 400
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v2, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startExtActivity(app="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 407
    :cond_2
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivity(MicroApplication, Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method public startExtActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V
    .locals 5

    .prologue
    .line 448
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 449
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivityForResult(MicroApplication, Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 450
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivityForResult(MicroApplication, Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 453
    const/high16 v0, 0x40000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 455
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    .line 456
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v2, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startExtActivityForResult(app="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 463
    :cond_2
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivityForResult(MicroApplication, Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 465
    return-void
.end method

.method public unregisterApplicationEngine(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->unregisterApplicationEngine(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unregisterApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->unregisterApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z

    move-result v0

    return v0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 521
    return-void
.end method

.method public updateActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    .line 138
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    .line 139
    return-object v0
.end method

.method public updateDescription(Lcom/alipay/mobile/framework/app/ApplicationDescription;)Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->updateDescription(Lcom/alipay/mobile/framework/app/ApplicationDescription;)Z

    move-result v0

    return v0
.end method
