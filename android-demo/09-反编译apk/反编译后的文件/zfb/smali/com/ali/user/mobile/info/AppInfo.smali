.class public Lcom/ali/user/mobile/info/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field private static a:Lcom/ali/user/mobile/info/AppInfo;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Landroid/content/Context;

.field private d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

.field private e:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->g:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->e:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    if-nez v0, :cond_0

    .line 66
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->e:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->e:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    return-object v0
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/ali/user/mobile/info/AppInfo;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initApdid exception, mApdid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/ali/user/mobile/info/AppInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "com.eg.android.AlipayGphoneRC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.ali.user.mobile.info.AppInfo.ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "apdid"

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "AppInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " process:push"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 353
    const/4 v1, 0x0

    .line 355
    :try_start_0
    const-string/jumbo v0, "android.ddm.DdmHandleAppName"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 356
    const-string/jumbo v2, "getAppName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 357
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 362
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 364
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 365
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 366
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    :cond_1
    :goto_1
    return-object v1

    .line 359
    :catch_0
    move-exception v0

    const-string/jumbo v0, "AppInfo"

    const-string/jumbo v2, "error invoke android.ddm.DdmHandleAppName.getAppName"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 367
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    .line 368
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/ali/user/mobile/info/AppInfo;
    .locals 2

    .prologue
    .line 49
    const-class v1, Lcom/ali/user/mobile/info/AppInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/info/AppInfo;->a:Lcom/ali/user/mobile/info/AppInfo;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/ali/user/mobile/info/AppInfo;

    invoke-direct {v0}, Lcom/ali/user/mobile/info/AppInfo;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/AppInfo;->a:Lcom/ali/user/mobile/info/AppInfo;

    .line 52
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/info/AppInfo;->a:Lcom/ali/user/mobile/info/AppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/info/AppInfo;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    .line 176
    :goto_0
    return-object v0

    .line 175
    :cond_0
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tokenResult == null, return mApdid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApdidAsync()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getApdidAsync:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "exception getApdidAsync, mApdid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getApdidToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/info/AppInfo;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    .line 197
    :goto_0
    return-object v0

    .line 196
    :cond_0
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tokenResult == null, return mApdidToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApdidTokenAsync()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getApdidTokenAsync:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string/jumbo v1, "AppInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AppDataProvider return appKey:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-object v0

    .line 234
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v1, "exception getAppKey, AppDataProvider has no appkey"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    .line 235
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    new-instance v1, Lcom/taobao/securityjni/StaticDataStore;

    new-instance v2, Landroid/content/ContextWrapper;

    iget-object v3, p0, Lcom/ali/user/mobile/info/AppInfo;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/taobao/securityjni/StaticDataStore;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v1, v0}, Lcom/taobao/securityjni/StaticDataStore;->getAppKey(Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AppInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getAppKeyInternal:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getMspClientKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getMspClientKey()Ljava/lang/String;

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getMspImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getMspImei()Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getMspImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getMspImsi()Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getMspTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getMspTid()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getProductId()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getSdkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string/jumbo v0, "aliusersdk"

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string/jumbo v0, "1.1.3.1"

    return-object v0
.end method

.method public getSsoRequestParam()Lcom/ali/user/mobile/login/sso/SSORequestParam;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getSsoRequestParam()Lcom/ali/user/mobile/login/sso/SSORequestParam;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getTid()Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getUmid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/info/AppInfo;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    .line 219
    :goto_0
    return-object v0

    .line 218
    :cond_0
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tokenResult == null, return mUmidToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getVImei()Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getVImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getVImsi()Ljava/lang/String;

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getWalletClientKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getWalletClientKey()Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getWalletTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getWalletTid()Ljava/lang/String;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->c:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/info/AppInfo;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/info/AppInfo$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/info/AppInfo$1;-><init>(Lcom/ali/user/mobile/info/AppInfo;Landroid/content/Context;)V

    const-string/jumbo v2, "Aliuser.AppInfo.initUmidToken"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public isAlipayApp()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->isAlipayApp()Z

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseSso()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->isUseSso()Z

    move-result v0

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    return-void
.end method

.method public setDataProvider(Lcom/ali/user/mobile/dataprovider/AppDataProvider;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    .line 334
    return-void
.end method
