.class public Lanetwork/channel/http/NetworkStatusHelper;
.super Ljava/lang/Object;
.source "NetworkStatusHelper.java"


# static fields
.field static a:Landroid/content/Context;

.field static b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field private static c:Ljava/lang/String;

.field private static d:Z

.field private static e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper;->a:Landroid/content/Context;

    .line 34
    const-string/jumbo v0, "other"

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper;->c:Ljava/lang/String;

    .line 35
    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NONE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper;->b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lanetwork/channel/http/NetworkStatusHelper;->d:Z

    .line 93
    new-instance v0, Lanetwork/channel/http/c;

    invoke-direct {v0}, Lanetwork/channel/http/c;-><init>()V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper;->b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 22
    sput-object p0, Lanetwork/channel/http/NetworkStatusHelper;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 39
    const-class v1, Lanetwork/channel/http/NetworkStatusHelper;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lanetwork/channel/http/NetworkStatusHelper;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 48
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 42
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lanetwork/channel/http/NetworkStatusHelper;->d:Z

    .line 43
    if-eqz p0, :cond_2

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v2, Lanetwork/channel/http/NetworkStatusHelper;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 44
    :cond_2
    :try_start_5
    invoke-static {p0}, Lanetwork/channel/http/NetworkStatusHelper;->b(Landroid/content/Context;)V

    .line 47
    sput-object p0, Lanetwork/channel/http/NetworkStatusHelper;->a:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 43
    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lanetwork/channel/http/d;

    invoke-direct {v0, p0}, Lanetwork/channel/http/d;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-static {}, Lanetwork/channel/http/ThreadPoolExecutorFactory;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 182
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->d()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Lorg/apache/http/HttpHost;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 191
    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-object v1

    .line 194
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_2

    .line 197
    :try_start_0
    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper;->a:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 199
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3

    .line 206
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 208
    if-eqz v2, :cond_3

    .line 209
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :goto_2
    move-object v1, v0

    .line 212
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 215
    :cond_2
    const-string/jumbo v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    const-string/jumbo v2, "https.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 220
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method
