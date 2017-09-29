.class public Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;
.super Ljava/lang/Object;
.source "HttpDns.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V
    .locals 2

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1226
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/UnknownHostException;
    .locals 3

    .prologue
    .line 1281
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "original hostname: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 1283
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    return-object v0

    .line 1285
    :catch_0
    move-exception v0

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    .line 1286
    check-cast p1, Ljava/net/UnknownHostException;

    throw p1

    .line 1288
    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " host:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 5

    .prologue
    .line 1249
    const/4 v1, 0x0

    .line 1251
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GET_ALL_BY_NAME_TIME_OUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    .line 1253
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$InetAddrGetAllByNameTask;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-direct {v3, v4, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$InetAddrGetAllByNameTask;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 1254
    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    .line 1255
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1270
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1271
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1276
    :cond_0
    :goto_0
    return-object v0

    .line 1275
    :catch_0
    move-exception v1

    const-string/jumbo v1, "HTTP_DNS"

    const-string/jumbo v2, "requestInetAddresses exception"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1257
    :catch_1
    move-exception v0

    .line 1258
    :try_start_2
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_2

    .line 1259
    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/UnknownHostException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1269
    :catchall_0
    move-exception v0

    .line 1270
    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1271
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1276
    :cond_1
    :goto_1
    throw v0

    .line 1261
    :cond_2
    :try_start_4
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 1262
    if-eqz v2, :cond_3

    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_3

    .line 1263
    invoke-static {p1, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/UnknownHostException;

    move-result-object v0

    throw v0

    .line 1265
    :cond_3
    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/UnknownHostException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1275
    :catch_2
    move-exception v1

    const-string/jumbo v1, "HTTP_DNS"

    const-string/jumbo v2, "requestInetAddresses exception"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1231
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->getCache(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 1232
    if-eqz v0, :cond_0

    .line 1243
    :goto_0
    return-object v0

    .line 1236
    :cond_0
    monitor-enter p1

    .line 1238
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->getCache(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 1239
    if-eqz v0, :cond_1

    .line 1240
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1245
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 1243
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCache(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    .line 1297
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1300
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
