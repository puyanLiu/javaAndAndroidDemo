.class public Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;
.super Ljava/lang/Object;
.source "SyncLogStrategy.java"


# static fields
.field public static final LOG_DIAGNOSE:Ljava/lang/String; = "2"

.field public static final LOG_MONITOR:Ljava/lang/String; = "1"

.field public static final LOG_NOLOG:Ljava/lang/String; = "3"

.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->a:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "1"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->b:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "2"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->c:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->d:Z

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 5

    .prologue
    .line 56
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    monitor-exit v1

    return-void

    .line 61
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 62
    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 63
    if-nez v0, :cond_2

    .line 64
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->a:Ljava/lang/String;

    const-string/jumbo v2, "initConfig: [ configService null ]"

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    :try_start_2
    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initConfig: [ Texception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 68
    :cond_2
    :try_start_3
    const-string/jumbo v2, "sync_cfg"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initConfig: [ logStrategy="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, "syncInfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->b:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "syncMsg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->c:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static getSyncInfoStrategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->d:Z

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->a()V

    .line 41
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getSyncMsgStrategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->d:Z

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->a()V

    .line 50
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/SyncLogStrategy;->c:Ljava/lang/String;

    return-object v0
.end method
