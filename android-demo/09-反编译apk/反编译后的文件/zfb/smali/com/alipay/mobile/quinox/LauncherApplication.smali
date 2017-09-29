.class public Lcom/alipay/mobile/quinox/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field private static final DEFAULT_AGENT_ACTIVITY:Ljava/lang/String; = "com.alipay.mobile.framework.LauncherActivityAgent"

.field private static final DEFAULT_AGENT_APPLICATION:Ljava/lang/String; = "com.alipay.mobile.framework.LauncherApplicationAgent"

.field private static final DEFAULT_AGENT_APPLICATION2:Ljava/lang/String; = "com.alipay.mobile.framework.LauncherApplicationAgent2"

.field private static final KEY_AGENT_ACTIVITY:Ljava/lang/String; = "agent.activity"

.field private static final KEY_AGENT_ACTIVITY_LAYOUT:Ljava/lang/String; = "agent.activity.layout"

.field private static final KEY_AGENT_APPLICATION:Ljava/lang/String; = "agent.application"

.field private static final KEY_AGENT_APPLICATION2:Ljava/lang/String; = "agent.application2"

.field private static final KEY_AGENT_DEPENDS:Ljava/lang/String; = "agent.depends"

.field private static final KEY_AGENT_DEPENDS_EXTRAPROC:Ljava/lang/String; = "agent.extraproc.depends"

.field private static final KEY_AGENT_ENTRANCE_EXTRAPROC:Ljava/lang/String; = "agent.entrance.extraproc"

.field public static final LAUNCHER_APPLICATION_INIT:Ljava/lang/String; = "LauncherApplication.Init"

.field private static final QUINOX_BUNDLE_NAME:Ljava/lang/String; = "android-phone-mobilesdk-quinox"

.field public static final TAG:Ljava/lang/String; = "LauncherApplication"

.field public static sInstance:Lcom/alipay/mobile/quinox/LauncherApplication;


# instance fields
.field private isSMN900:Z

.field private mAgentActivity:Ljava/lang/String;

.field private mAgentActivityLayout:Ljava/lang/String;

.field private mAgentApplication:Ljava/lang/String;

.field private mAgentApplication2:Ljava/lang/String;

.field private mAgentDepends:[Ljava/lang/String;

.field private mAgentDependsExtraproc:Ljava/lang/String;

.field private mAgentEntranceExtraproc:Ljava/lang/String;

.field private mBootFinish:Z

.field private mBundleContext:Lcom/alipay/mobile/quinox/BundleContext;

.field private mBundleResourceHelper:Lcom/alipay/mobile/quinox/resources/b;

.field private mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

.field private mClassLoader:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

.field private mCloudFixPatchManager:Ljava/lang/Object;

.field private mCloudFixPatchManagerClazz:Ljava/lang/Class;

.field private mHacked:Z

.field private mHotPatchClazz:Ljava/lang/Class;

.field private mIsDebug:Z

.field private mIsMainProcess:Z

.field private mLoadBundlePatchMethod:Ljava/lang/reflect/Method;

.field private mMainHandler:Landroid/os/Handler;

.field private mObservable:Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;

.field private mOldResources:Landroid/content/res/Resources;

.field private mOriginParentClassLoader:Ljava/lang/ClassLoader;

.field private mPackageInfo:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mParentClassLoaderField:Ljava/lang/reflect/Field;

.field private mPatternHostAgent:Ljava/lang/reflect/Method;

.field private mProcessName:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mSavedLocale:Ljava/util/Locale;

.field private mSourceDir:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;

.field private mTarget2:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsMainProcess:Z

    .line 107
    new-instance v0, Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;Lcom/alipay/mobile/quinox/LauncherApplication$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mObservable:Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;

    .line 121
    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->isSMN900:Z

    .line 123
    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsDebug:Z

    .line 1271
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->internalPrepare()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/quinox/LauncherApplication;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mHotPatchClazz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/quinox/LauncherApplication;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mCloudFixPatchManager:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/quinox/LauncherApplication;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mLoadBundlePatchMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/quinox/LauncherApplication;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBootFinish:Z

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/quinox/LauncherApplication;)Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mClassLoader:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    return-object v0
.end method

.method private afterSetupApplication()V
    .locals 0

    .prologue
    .line 777
    return-void
.end method

.method private beforeSetupApplication()V
    .locals 0

    .prologue
    .line 774
    return-void
.end method

.method private extractOriginClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2

    .prologue
    .line 866
    :try_start_0
    const-class v0, Ljava/lang/ClassLoader;

    const-string/jumbo v1, "parent"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mParentClassLoaderField:Ljava/lang/reflect/Field;

    .line 867
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mParentClassLoaderField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 869
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mParentClassLoaderField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mOriginParentClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    return-void

    .line 870
    :catch_0
    move-exception v0

    .line 871
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getChromeSourceDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 981
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mSourceDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mSourceDir:Ljava/lang/String;

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mSourceDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    :goto_0
    return-object v0

    .line 987
    :catch_0
    move-exception v0

    .line 988
    const-string/jumbo v1, "LauncherApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getChromeSourceDir package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 989
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurProcessName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 351
    :try_start_0
    const-string/jumbo v0, "android.ddm.DdmHandleAppName"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 352
    const-string/jumbo v2, "getAppName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 353
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 358
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 360
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 361
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 363
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    .line 364
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 369
    :cond_1
    return-object v1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    const-string/jumbo v2, "LauncherApplication"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/alipay/mobile/quinox/LauncherApplication;->sInstance:Lcom/alipay/mobile/quinox/LauncherApplication;

    return-object v0
.end method

.method private getMetaData(Landroid/content/pm/PackageManager;)V
    .locals 3

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 319
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "agent.application"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentApplication:Ljava/lang/String;

    .line 321
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "agent.application2"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentApplication2:Ljava/lang/String;

    .line 322
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "agent.activity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentActivity:Ljava/lang/String;

    .line 323
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "agent.activity.layout"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentActivityLayout:Ljava/lang/String;

    .line 325
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "agent.depends"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    const-string/jumbo v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentDepends:[Ljava/lang/String;

    .line 330
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "agent.extraproc.depends"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentDependsExtraproc:Ljava/lang/String;

    .line 331
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "agent.entrance.extraproc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentEntranceExtraproc:Ljava/lang/String;

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentApplication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    const-string/jumbo v0, "com.alipay.mobile.framework.LauncherApplicationAgent"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentApplication:Ljava/lang/String;

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentApplication2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    const-string/jumbo v0, "com.alipay.mobile.framework.LauncherApplicationAgent2"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentApplication2:Ljava/lang/String;

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentActivity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 340
    const-string/jumbo v0, "com.alipay.mobile.framework.LauncherActivityAgent"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentActivity:Ljava/lang/String;

    .line 342
    :cond_4
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 316
    const-string/jumbo v2, "LauncherApplication"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private getPackageInfo()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mPackageInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1137
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1138
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1139
    return-object v0
.end method

.method private getSourceDir()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 943
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mSourceDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mSourceDir:Ljava/lang/String;

    .line 976
    :cond_0
    :goto_0
    return-object v0

    .line 946
    :cond_1
    const-string/jumbo v0, "com.google.android.webview"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getChromeSourceDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 949
    const-string/jumbo v0, "com.android.webview"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getChromeSourceDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 951
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 953
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mOldResources:Landroid/content/res/Resources;

    const-string/jumbo v3, "android:string/config_webViewPackageName"

    const-string/jumbo v4, "string"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 956
    if-nez v2, :cond_2

    move-object v0, v1

    .line 957
    goto :goto_0

    .line 960
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 961
    invoke-direct {p0, v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getChromeSourceDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 963
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 964
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 972
    goto :goto_0

    .line 967
    :catch_0
    move-exception v2

    .line 968
    const-string/jumbo v3, "LauncherApplication"

    const-string/jumbo v4, "addChromeResources sourceDir"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 584
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageInfo()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageInfo:Ljava/lang/Object;

    .line 585
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mOldResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 592
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 588
    :catch_1
    move-exception v0

    .line 589
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 590
    :catch_2
    move-exception v0

    .line 591
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private installMultiDex()V
    .locals 4

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 467
    :try_start_0
    const-string/jumbo v1, "ro.yunos.vm.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 471
    :goto_0
    const-string/jumbo v1, "LauncherApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "yunos="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string/jumbo v1, "AOC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    const-string/jumbo v0, "LauncherApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " install MultiDex."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 490
    :cond_0
    return-void

    .line 468
    :catch_0
    move-exception v1

    .line 469
    const-string/jumbo v2, "LauncherApplication"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private internalPrepare()V
    .locals 4

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->installMultiDex()V

    .line 390
    invoke-static {p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->init()V

    .line 392
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->isUpgrade()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->clearOldPluginFiles()V

    .line 394
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->setProductVersion()V

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key_ensure_native_libs_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    const-string/jumbo v2, "framework_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupPackages()V

    .line 404
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupResources()V

    .line 406
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupHotpatchBundleObserver()V

    .line 409
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupClassloader()V

    .line 412
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->isSMN900:Z

    if-eqz v1, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupLogging()V

    .line 416
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupMonitor()V

    .line 419
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->startHookHost()V

    .line 421
    const-string/jumbo v1, "hoks"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->loadLib(Ljava/lang/String;)V

    .line 428
    invoke-static {}, Lcom/alipay/mobile/quinox/a;->a()Lcom/alipay/mobile/quinox/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/a;->c()V

    .line 431
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->beforeSetupApplication()V

    .line 432
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupApplication()V

    .line 433
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->afterSetupApplication()V

    .line 435
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "Boot finish (in quinox), now go to notify the observers."

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBootFinish:Z

    .line 442
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsMainProcess:Z

    if-eqz v1, :cond_4

    .line 443
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mObservable:Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;->setChanged()V

    .line 444
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mObservable:Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;->notifyObservers()V

    .line 446
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsMainProcess:Z

    if-eqz v1, :cond_3

    .line 447
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->isUpgrade()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    .line 460
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->launcherApplicationAgentPostInit()V

    .line 462
    :cond_4
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    const-string/jumbo v1, "writeCfg-internalPrepare:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 453
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "[internalPrepare] write cfg error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private launcherApplicationAgentPostInit()V
    .locals 3

    .prologue
    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    const-string/jumbo v1, "postInit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "LauncherActivityAgent postInit"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadLib(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 502
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "lib"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    const/4 v2, 0x0

    .line 508
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "lib"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "armeabi"

    aput-object v7, v5, v6

    invoke-interface {v1, v3, v4, v5}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 512
    if-eqz v3, :cond_0

    .line 516
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    :try_start_2
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V

    .line 519
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 523
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 526
    :catch_1
    move-exception v0

    .line 527
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 520
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 521
    :goto_1
    :try_start_4
    const-string/jumbo v2, "LauncherApplication"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 523
    if-eqz v1, :cond_0

    .line 525
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 526
    :catch_3
    move-exception v0

    .line 527
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 523
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_1

    .line 525
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 528
    :cond_1
    :goto_3
    throw v0

    .line 526
    :catch_4
    move-exception v1

    .line 527
    const-string/jumbo v2, "LauncherApplication"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 523
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 520
    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method private patternHostAgent(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 834
    .line 835
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPatternHostAgent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPatternHostAgent:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget2:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 842
    :goto_0
    return v0

    .line 838
    :catch_0
    move-exception v0

    .line 839
    const-string/jumbo v2, "LauncherApplication"

    const-string/jumbo v3, "patternHostAgent() exception."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private prepare()V
    .locals 3

    .prologue
    .line 373
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "LauncherApplication.Init"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 374
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 375
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 376
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 377
    new-instance v2, Lcom/alipay/mobile/quinox/LauncherApplication$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/quinox/LauncherApplication$1;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method

.method private prepareOriginClassLoader(Ljava/lang/ClassLoader;)V
    .locals 3

    .prologue
    .line 889
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mParentClassLoaderField:Ljava/lang/reflect/Field;

    new-instance v1, Lcom/alipay/mobile/quinox/LauncherApplication$3;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mOriginParentClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/quinox/LauncherApplication$3;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    return-void

    .line 917
    :catch_0
    move-exception v0

    .line 918
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processForMultiDex()V
    .locals 3

    .prologue
    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    const-string/jumbo v1, "android.support.multidex.ZipUtil"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    const-string/jumbo v1, "android.support.multidex.ZipUtil$CentralDirectory"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    const-string/jumbo v1, "android.support.multidex.MultiDexExtractor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const-string/jumbo v1, "android.support.multidex.MultiDexExtractor$1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    const-string/jumbo v1, "android.support.multidex.MultiDex"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    const-string/jumbo v1, "android.support.multidex.MultiDex$V4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    const-string/jumbo v1, "android.support.multidex.MultiDex$V14"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    const-string/jumbo v1, "android.support.multidex.MultiDex$V19"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const-string/jumbo v1, "android.support.multidex.MultiDexApplication"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    const-string/jumbo v2, "LauncherApplication"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method private registerPushProcessExceptionHandler()V
    .locals 1

    .prologue
    .line 1283
    new-instance v0, Lcom/alipay/mobile/quinox/LauncherApplication$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/LauncherApplication$4;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1308
    return-void
.end method

.method private replaceResource(Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageInfo:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "mResources"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1120
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1121
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1122
    return-void
.end method

.method private setupApplication()V
    .locals 6

    .prologue
    .line 549
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentApplication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 550
    const-string/jumbo v1, "LauncherApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mAgentApplication\'s ClassLoader : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    .line 554
    new-instance v1, Lcom/alipay/mobile/quinox/BundleContext;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/BundleContext;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundleContext:Lcom/alipay/mobile/quinox/BundleContext;

    .line 556
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.mobile.quinox.engine.BundleEngine"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 557
    const-string/jumbo v2, "SBundleContext"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 558
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 559
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundleContext:Lcom/alipay/mobile/quinox/BundleContext;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 561
    const-string/jumbo v1, "attachBundleContext"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Application;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 562
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 563
    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundleContext:Lcom/alipay/mobile/quinox/BundleContext;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string/jumbo v1, "preInit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 566
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 567
    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string/jumbo v1, "LauncherApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentApplication:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".init()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string/jumbo v1, "init"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 571
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 572
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 574
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "setupApplication() error."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 575
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupClassloader()V
    .locals 4

    .prologue
    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageInfo:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "mClassLoader"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 616
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 617
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageInfo:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 618
    new-instance v2, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-direct {v2, p0, v0, v3}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;Ldalvik/system/PathClassLoader;Lcom/alipay/mobile/quinox/bundle/BundlesManager;)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mClassLoader:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    .line 620
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageInfo:Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mClassLoader:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 627
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 623
    :catch_1
    move-exception v0

    .line 624
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 625
    :catch_2
    move-exception v0

    .line 626
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupHotpatch()V
    .locals 6

    .prologue
    .line 633
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.hotpatch.Hotpatch"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mHotPatchClazz:Ljava/lang/Class;

    .line 636
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mHotPatchClazz:Ljava/lang/Class;

    const-string/jumbo v1, "init"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Application;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/util/HashMap;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 637
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 638
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "Init Hotpatch: com.alipay.mobile.hotpatch.Hotpatch"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mHotPatchClazz:Ljava/lang/Class;

    const-string/jumbo v1, "startHotPatch"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 643
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 644
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "Hotpatch: startHotPatch"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.euler.andfix.patch.PatchManager"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mCloudFixPatchManagerClazz:Ljava/lang/Class;

    .line 653
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mCloudFixPatchManagerClazz:Ljava/lang/Class;

    const-string/jumbo v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 654
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 655
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mCloudFixPatchManager:Ljava/lang/Object;

    .line 657
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mCloudFixPatchManagerClazz:Ljava/lang/Class;

    const-string/jumbo v1, "loadPatch"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/ClassLoader;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mLoadBundlePatchMethod:Ljava/lang/reflect/Method;

    .line 658
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mLoadBundlePatchMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 660
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 661
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mCloudFixPatchManagerClazz:Ljava/lang/Class;

    const-string/jumbo v2, "init"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 662
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 663
    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mCloudFixPatchManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mCloudFixPatchManager:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mLoadBundlePatchMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mLoadBundlePatchMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mCloudFixPatchManager:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "android-phone-mobilesdk-quinox"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 671
    :cond_0
    :goto_1
    return-void

    .line 647
    :catch_0
    move-exception v0

    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "error when setupHotpatch"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 669
    :catch_1
    move-exception v0

    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "error when setupCloudFix"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupHotpatchBundleObserver()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    new-instance v1, Lcom/alipay/mobile/quinox/LauncherApplication$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/LauncherApplication$2;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;)V

    .line 732
    return-void
.end method

.method private setupLeakCanary()V
    .locals 5

    .prologue
    .line 1324
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.android.phone.devtool.leakreporter.ApplicationInjector"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1325
    const-string/jumbo v1, "installLeakCanary"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Application;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1326
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1327
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    :goto_0
    return-void

    .line 1329
    :catch_0
    move-exception v0

    .line 1330
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "setupLeakCanary"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setupLocale()V
    .locals 6

    .prologue
    .line 781
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.framework.locale.LocaleHelper"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 784
    const-string/jumbo v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 785
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 786
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 788
    const-string/jumbo v2, "initSavedLocale"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Application;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 789
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 790
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "setupLocale"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :goto_0
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 795
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "setupLocaleHelper"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setupLogging()V
    .locals 5

    .prologue
    .line 736
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.common.logging.api.LoggerFactory"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 737
    const-string/jumbo v1, "init"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 738
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string/jumbo v0, "LauncherApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Init MonitorLogger: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/alipay/mobile/quinox/utils/MonitorLogger;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setupMonitor()V
    .locals 5

    .prologue
    .line 749
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.android.phone.mobilecommon.dynamicrelease.DynamicReleaseReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 750
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.android.phone.mobilecommon.dynamicrelease.DynamicReleaseWorker"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.monitor.api.ClientMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 757
    const-string/jumbo v1, "createInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 758
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 759
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 763
    :goto_1
    return-void

    .line 751
    :catch_0
    move-exception v0

    .line 752
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 760
    :catch_1
    move-exception v0

    .line 761
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private setupPackages()V
    .locals 3

    .prologue
    .line 599
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentEntranceExtraproc:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentDepends:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    const-string/jumbo v1, "BundlesManager"

    const-string/jumbo v2, "init error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startHookHost()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 677
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "Hotpatch: startHookHost"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mHotPatchClazz:Ljava/lang/Class;

    const-string/jumbo v2, "loadHostPatchs"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 682
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 683
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "Hotpatch: startHookHost"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mCloudFixPatchManager:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mLoadBundlePatchMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 691
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->f()[Ljava/lang/String;

    move-result-object v1

    .line 692
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 693
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "android-phone-mobilesdk-quinox"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 694
    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mLoadBundlePatchMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mCloudFixPatchManager:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 692
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 686
    :catch_0
    move-exception v1

    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "error when startHookHost"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :catch_1
    move-exception v0

    .line 699
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 701
    :cond_1
    return-void
.end method

.method private strictMode()V
    .locals 1

    .prologue
    .line 1311
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1316
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1320
    return-void
.end method


# virtual methods
.method public addChromeResources(Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V
    .locals 5

    .prologue
    .line 926
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSourceDir()Ljava/lang/String;

    move-result-object v1

    .line 931
    if-eqz v1, :cond_0

    .line 934
    :try_start_0
    const-string/jumbo v0, "LauncherApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addChromeResources path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 937
    :catch_0
    move-exception v0

    .line 938
    const-string/jumbo v2, "LauncherApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addChromeResources path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addListener(Ljava/util/Observer;)V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mObservable:Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;->addObserver(Ljava/util/Observer;)V

    .line 537
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 145
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageName:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCurProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mProcessName:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mProcessName:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->installMultiDex()V

    .line 151
    :cond_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, ":push"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bootFinish()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBootFinish:Z

    return v0
.end method

.method public clearCachedBundleResources()V
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    if-nez v0, :cond_0

    .line 1070
    :goto_0
    return-void

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->j()V

    goto :goto_0
.end method

.method public getAgentActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentActivityLayout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentActivityLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 1145
    invoke-super {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getBundleContext()Lcom/alipay/mobile/quinox/BundleContext;
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundleContext:Lcom/alipay/mobile/quinox/BundleContext;

    return-object v0
.end method

.method public getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mClassLoader:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    if-nez v0, :cond_0

    .line 1181
    invoke-super {p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1183
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mClassLoader:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    goto :goto_0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getOldResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mOldResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getOriginClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mOriginParentClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 5

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mOldResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 1155
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1175
    :goto_0
    return-object v0

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 1160
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mOldResources:Landroid/content/res/Resources;

    goto :goto_0

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundleResourceHelper:Lcom/alipay/mobile/quinox/resources/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/resources/b;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1165
    instance-of v1, v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    if-eqz v1, :cond_2

    .line 1166
    check-cast v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->getBundle()Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v1

    .line 1168
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Lcom/alipay/mobile/quinox/bundle/a;Landroid/content/res/Resources;[Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    const-string/jumbo v2, "LauncherApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "BundlesManager.getResourcesByBundle(bundle=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]) failed."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1175
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsDebug:Z

    return v0
.end method

.method public isHacked()Z
    .locals 1

    .prologue
    .line 1191
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mHacked:Z

    return v0
.end method

.method public isMainProcess()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsMainProcess:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    .line 1213
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1214
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1216
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "onConfigurationChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/res/Configuration;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1217
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "onConfigurationChanged()"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 157
    sput-object p0, Lcom/alipay/mobile/quinox/LauncherApplication;->sInstance:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 158
    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBootFinish:Z

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "SM-N900"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x15

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->isSMN900:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 167
    :goto_1
    :try_start_1
    const-string/jumbo v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 169
    :goto_2
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupLogging()V

    .line 175
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupMonitor()V

    .line 178
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->processForMultiDex()V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsMainProcess:Z

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 186
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageName:Ljava/lang/String;

    const/16 v4, 0x4000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 187
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "RC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsDebug:Z

    .line 188
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsDebug:Z

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->setDebug(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    :goto_4
    invoke-direct {p0, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getMetaData(Landroid/content/pm/PackageManager;)V

    .line 196
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsMainProcess:Z

    if-nez v0, :cond_1

    .line 197
    const-string/jumbo v0, "monitor"

    const-string/jumbo v3, "setupHotpatch when processName != mPackageName"

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupHotpatch()V

    .line 201
    :cond_1
    const-string/jumbo v0, "monitor"

    const-string/jumbo v3, "Process Startup: processName=%s, packageName=%s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mProcessName:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageName:Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsMainProcess:Z

    if-nez v0, :cond_a

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mProcessName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, ":push"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->getInstance()Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    .line 209
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->registerPushProcessExceptionHandler()V

    .line 211
    new-instance v0, Lcom/alipay/mobile/quinox/b;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/b;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentDependsExtraproc:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/quinox/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    const-string/jumbo v0, "LauncherApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "LauncherApplication.onCreate() return. The process name is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_2
    :goto_5
    return-void

    :cond_3
    move v0, v2

    .line 161
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 187
    goto :goto_3

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string/jumbo v4, "LauncherApplication"

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 219
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    const-string/jumbo v0, "LauncherApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAgentEntranceExtraproc=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentEntranceExtraproc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_6
    :goto_6
    new-instance v0, Lcom/alipay/mobile/quinox/resources/b;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/resources/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundleResourceHelper:Lcom/alipay/mobile/quinox/resources/b;

    .line 228
    invoke-static {}, Lcom/alipay/mobile/quinox/a;->a()Lcom/alipay/mobile/quinox/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/a;->b()V

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mMainHandler:Landroid/os/Handler;

    .line 231
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsDebug:Z

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->init(Landroid/content/Context;Z)Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 233
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->getInstance()Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    .line 234
    invoke-static {p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    .line 237
    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentApplication2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget2:Ljava/lang/Object;

    .line 240
    const-string/jumbo v1, "patternHost"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPatternHostAgent:Ljava/lang/reflect/Method;

    .line 241
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mPatternHostAgent:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 243
    const-string/jumbo v1, "LauncherApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentApplication2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".preInit(processName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isDebug="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsDebug:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v1, "preInit"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Application;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 245
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 246
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget2:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mProcessName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsDebug:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->extractOriginClassLoader(Ljava/lang/ClassLoader;)V

    .line 256
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsMainProcess:Z

    if-eqz v0, :cond_7

    .line 257
    const-string/jumbo v0, "monitor"

    const-string/jumbo v1, "setupHotPatch when processName = mPackageName"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupHotpatch()V

    .line 262
    :cond_7
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupLocale()V

    .line 264
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->init()V

    .line 265
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->prepare()V

    .line 266
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 267
    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "1111."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_8
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mIsDebug:Z

    if-eqz v0, :cond_9

    .line 272
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->strictMode()V

    .line 273
    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "mIsDebug is true."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupLeakCanary()V

    .line 276
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->prepareOriginClassLoader(Ljava/lang/ClassLoader;)V

    goto/16 :goto_5

    .line 224
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentEntranceExtraproc:Ljava/lang/String;

    goto/16 :goto_6

    .line 249
    :catch_1
    move-exception v0

    .line 250
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 1226
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 1227
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1229
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "onLowMemory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1230
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "onLowMemory()"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 3

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1202
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "onTerminate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1203
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 1209
    return-void

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "onTerminate()"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public pattern(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 853
    const-string/jumbo v0, "android."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.support."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "dalvik."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.w3c."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "de.robv.android.xposed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "junit."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.apache."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.json."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public patternHost(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 807
    const-string/jumbo v0, "com.alipay.mobile.quinox.bundle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.vladium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.taobao.tcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.splash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.classloader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.resources"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.security"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.utils"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.LauncherApplication"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.BundleContext"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.ExceptionHandler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.LauncherActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.AlipayLogin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.hotpatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.taobao.hotpatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.euler.andfix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.taobao.updatecenter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.taobao.android.dexposed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "net.lingala.zip4j"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.android.phone.thirdparty.common"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.startup.StartupSafeguard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.framework.LauncherActivityAgent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentActivity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mAgentActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->patternHostAgent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recover()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1243
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "recover"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1245
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mTarget:Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    :cond_0
    return-void
.end method

.method public removeListener(Ljava/util/Observer;)V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mObservable:Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication$InitObserver;->deleteObserver(Ljava/util/Observer;)V

    .line 541
    return-void
.end method

.method public setHacked(Z)V
    .locals 0

    .prologue
    .line 1195
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mHacked:Z

    .line 1196
    return-void
.end method

.method public setLocaleToApplicationResources(Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mSavedLocale:Ljava/util/Locale;

    .line 1078
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setLocaleToResources(Landroid/content/res/Resources;)V

    .line 1079
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setLocaleToResources(Landroid/content/res/Resources;)V

    .line 1080
    return-void
.end method

.method public setLocaleToResources(Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    .line 1086
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mSavedLocale:Ljava/util/Locale;

    if-nez v0, :cond_1

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1091
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1093
    if-eqz v0, :cond_0

    .line 1097
    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mSavedLocale:Ljava/util/Locale;

    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1100
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "setLocaleToResources"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized setupResources()V
    .locals 8

    .prologue
    .line 997
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mOldResources:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :try_start_1
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 1000
    const-class v1, Landroid/content/res/AssetManager;

    const-string/jumbo v3, "addAssetPath"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1002
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1004
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->addChromeResources(Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V

    .line 1007
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mBundlesManager:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a()Ljava/util/Iterator;

    move-result-object v5

    .line 1009
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1011
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/quinox/bundle/a;

    .line 1012
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->h()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/File;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1013
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->g()Ljava/lang/String;

    move-result-object v6

    .line 1014
    const-string/jumbo v7, "27"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "127"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1015
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 997
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1031
    :cond_1
    if-eqz v2, :cond_2

    .line 1032
    :try_start_3
    new-instance v1, Lcom/alipay/mobile/quinox/resources/a;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2, v4}, Lcom/alipay/mobile/quinox/resources/a;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/util/List;)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mResources:Landroid/content/res/Resources;

    .line 1040
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mOldResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setLocaleToResources(Landroid/content/res/Resources;)V

    .line 1041
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setLocaleToResources(Landroid/content/res/Resources;)V

    .line 1042
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->replaceResource(Landroid/content/res/Resources;)V

    .line 1043
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->clearCachedBundleResources()V
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1057
    monitor-exit p0

    return-void

    .line 1035
    :cond_2
    :try_start_4
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1036
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 1037
    new-instance v2, Lcom/alipay/mobile/quinox/resources/a;

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/alipay/mobile/quinox/resources/a;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/util/List;)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->mResources:Landroid/content/res/Resources;
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1047
    :catch_1
    move-exception v0

    .line 1048
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1049
    :catch_2
    move-exception v0

    .line 1050
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1051
    :catch_3
    move-exception v0

    .line 1052
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1053
    :catch_4
    move-exception v0

    .line 1054
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1055
    :catch_5
    move-exception v0

    .line 1056
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
