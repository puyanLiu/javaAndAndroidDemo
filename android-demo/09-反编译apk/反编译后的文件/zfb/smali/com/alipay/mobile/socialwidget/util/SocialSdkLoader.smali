.class public Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;
.super Ljava/lang/Object;
.source "SocialSdkLoader.java"


# instance fields
.field private a:Z

.field private b:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

.field private c:Lcom/alipay/mobile/framework/AlipayApplication;

.field private d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private e:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->a:Z

    .line 85
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->b:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    .line 86
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->c:Lcom/alipay/mobile/framework/AlipayApplication;

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->c()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:refreshSdk:prestart"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->b:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->b:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;->preSdkRefresh()V

    :cond_0
    new-instance v0, Lcom/alipay/mobile/socialwidget/util/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/util/b;-><init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/alipay/mobile/socialwidget/util/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/util/a;-><init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->c:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    if-eqz v1, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/support/v4/app/AppOpsManagerCompat;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/socialwidget/util/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/util/c;-><init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/AppOpsManagerCompat;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/framework/AlipayApplication;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->c:Lcom/alipay/mobile/framework/AlipayApplication;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->b:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 91
    iget-boolean v1, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->a:Z

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->a:Z

    .line 95
    invoke-static {}, Lcom/alipay/mobile/socialwidget/util/BaseHelperUtil;->b()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 97
    :cond_2
    if-nez v0, :cond_3

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v3, "\u6ca1\u6709\u767b\u9646,\u6ce8\u518c\u76d1\u542c\u7b49\u5f85\u52a0\u8f7dsdk"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->c:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 103
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    const-string/jumbo v3, "com.alipay.security.login"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    new-instance v3, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;-><init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;Z)V

    iput-object v3, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;

    .line 106
    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->c()V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_SocialHomeWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u5df2\u767b\u9646,\u6ce8\u518c\u76d1\u542c\u5237\u65b0sdk"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->c:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    :cond_0
    return-void
.end method
