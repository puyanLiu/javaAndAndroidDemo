.class public Lcom/alipay/mobile/rome/syncsdk/a/a;
.super Ljava/lang/Object;
.source "DeviceNewOrOld.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static volatile c:Lcom/alipay/mobile/rome/syncsdk/a/a;


# instance fields
.field private volatile a:Z

.field private volatile d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/a/a;->b:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->a:Z

    .line 25
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->d:Landroid/content/Context;

    .line 28
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a()Lcom/alipay/mobile/rome/syncsdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->d:Landroid/content/Context;

    .line 29
    const-string/jumbo v2, "is_new_device"

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    iput-boolean v3, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->a:Z

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a()Lcom/alipay/mobile/rome/syncsdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->d:Landroid/content/Context;

    const-string/jumbo v2, "key_cdid"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iput-boolean v3, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->a:Z

    .line 40
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/a/a;->b()V

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/rome/syncsdk/a/a;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/a/a;->c:Lcom/alipay/mobile/rome/syncsdk/a/a;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/a/a;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/a/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/a/a;->c:Lcom/alipay/mobile/rome/syncsdk/a/a;

    .line 48
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/a/a;->c:Lcom/alipay/mobile/rome/syncsdk/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 5

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 64
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->a:Z

    .line 61
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/a/a;->b:Ljava/lang/String;

    const-string/jumbo v1, "setDeviceToOld: old device"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a()Lcom/alipay/mobile/rome/syncsdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->d:Landroid/content/Context;

    const-string/jumbo v2, "is_new_device"

    const-string/jumbo v3, "old"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    const-string/jumbo v0, "com.alipay.mobile.common.transportext.biz.appevent.AmnetEventNotify"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "onSyncInitChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "syncVer"

    const-string/jumbo v3, "5"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "syncIsNew"

    const-string/jumbo v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/a/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyMMTP[ TException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 3

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/a/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isNewDevice="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
