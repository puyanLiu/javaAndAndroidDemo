.class public Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;
.super Ljava/lang/Object;
.source "CoreHttpManager.java"


# static fields
.field public static DEFAULT_HTTP_MANAGER:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager; = null

.field public static final TAG:Ljava/lang/String; = "HttpManager"


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

.field private b:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field protected mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    .line 82
    const-string/jumbo v0, "HttpManager"

    const-string/jumbo v1, "Transport start init .."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->setContext(Landroid/content/Context;)V

    const-string/jumbo v0, "networkaddress.cache.ttl"

    const-string/jumbo v1, "-1"

    invoke-static {v0, v1}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "java.net.preferIPv4Stack"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "java.net.preferIPv6Addresses"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->updateConfig(Landroid/content/Context;)Z

    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->init(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getFlag(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper;->runOnAppStart(Ljava/lang/Runnable;Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->b:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->setContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->isEnableExtTransport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->init(Landroid/content/Context;)V

    :cond_3
    const-string/jumbo v0, "HttpManager"

    const-string/jumbo v1, "Transport init finish."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 194
    const-string/jumbo v2, "operationType"

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 195
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 197
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ".amr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    :cond_0
    const/4 v0, 0x3

    .line 211
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v0

    .line 194
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 204
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    .line 207
    :cond_4
    const-string/jumbo v2, "operationType"

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v0

    :goto_2
    if-nez v2, :cond_1

    move v0, v1

    .line 211
    goto :goto_1

    .line 207
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isBgRpc()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "BgRpc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Background RPC\uff1a "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isBgRpc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setBgRpc(Z)V

    const-string/jumbo v3, "BgRpc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Warning: Force bg RPC :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_2
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->DEFAULT_HTTP_MANAGER:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->DEFAULT_HTTP_MANAGER:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 76
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->DEFAULT_HTTP_MANAGER:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->DEFAULT_HTTP_MANAGER:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 73
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->DEFAULT_HTTP_MANAGER:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 74
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    sget-object v0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->DEFAULT_HTTP_MANAGER:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    goto :goto_0
.end method


# virtual methods
.method public addConnectTime(J)V
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->d:J

    .line 290
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->f:I

    .line 291
    return-void
.end method

.method public addDataSize(J)V
    .locals 2

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->c:J

    .line 280
    return-void
.end method

.method public addSocketTime(J)V
    .locals 2

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->e:J

    .line 301
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->b:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->closeAllSingleThreadPool()V

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->close()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 358
    :cond_0
    return-void
.end method

.method public dumpPerf(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 333
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All enqueueConnect time = %d ms, All socket time = %d ms, All request times = %d times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getAverageSpeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getAverageConnectTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    .line 343
    :catch_0
    move-exception v0

    const-string/jumbo v0, "HttpManager"

    const-string/jumbo v1, "dumpPerf exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public execute(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/http/HttpManager;",
            "Lcom/alipay/mobile/common/transport/Request;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    instance-of v0, p2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "request send error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const-string/jumbo v0, "HttpManager"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->dumpPerf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_1
    check-cast p2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->b:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    invoke-static {p2}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)I

    move-result v1

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/common/transport/http/HttpManager;->generateWorker(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/http/HttpWorker;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->execute(ILcom/alipay/mobile/common/transport/http/HttpWorker;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method public getAverageConnectTime()J
    .locals 4

    .prologue
    .line 321
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->f:I

    if-nez v0, :cond_0

    .line 322
    const-wide/16 v0, 0x0

    .line 324
    :goto_0
    return-wide v0

    .line 323
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->d:J

    iget v2, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->f:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getAverageSpeed()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 309
    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->e:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 312
    :goto_0
    return-wide v0

    .line 311
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->c:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->e:J

    div-long/2addr v0, v2

    .line 312
    const/16 v2, 0xa

    shr-long/2addr v0, v2

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 269
    :goto_0
    return-object v0

    .line 262
    :cond_0
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    if-nez v0, :cond_1

    .line 265
    const-string/jumbo v0, "android"

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 267
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
