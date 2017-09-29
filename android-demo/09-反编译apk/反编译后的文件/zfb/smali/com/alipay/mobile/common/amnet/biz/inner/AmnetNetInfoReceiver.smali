.class public Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;
.super Ljava/lang/Object;
.source "AmnetNetInfoReceiver.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AmnetNetInfoReceiver"

.field private static networkReceiver:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;

.field private static started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;->networkReceiver:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;->started:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method private static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 78
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkReceiver()Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;->networkReceiver:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;->networkReceiver:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;

    .line 113
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;->networkReceiver:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;

    return-object v0
.end method

.method public static isNetAvailable(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 94
    :try_start_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 96
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string/jumbo v1, "AmnetNetInfoReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isNetAvailable: [ Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNetAvailable(Landroid/net/NetworkInfo;)Z
    .locals 1

    .prologue
    .line 82
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static start()V
    .locals 4

    .prologue
    .line 35
    const-string/jumbo v0, "AmnetNetInfoReceiver"

    const-string/jumbo v1, "start: [ AmnetNetInfoReceiver ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-boolean v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;->started:Z

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 41
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;->started:Z

    if-eqz v0, :cond_1

    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 45
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;->started:Z

    .line 46
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    :try_start_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;->getNetworkReceiver()Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;->started:Z

    .line 57
    const-string/jumbo v1, "AmnetNetInfoReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start: AmnetNetInfoReceiver: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "AmnetNetInfoReceiver"

    const-string/jumbo v1, "stop: [ AmnetNetInfoReceiver ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;->getNetworkReceiver()Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string/jumbo v1, "AmnetNetInfoReceiver"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
