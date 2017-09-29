.class public Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;
.super Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;
.source "MasterProxyGeneralListener.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "amnet_MasterProxyGeneralListener"

.field private static final SHARED_INIT_KEY:Ljava/lang/String; = "amnet_init_info"

.field private static masterProxyGeneralListener:Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;


# instance fields
.field private cacheSessionId:Ljava/lang/String;

.field private mainInitCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mainProcGeneralListenService:Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

.field private nextCollectTime:J

.field private userId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainProcGeneralListenService:Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->nextCollectTime:J

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainInitCache:Ljava/util/Map;

    .line 48
    return-void
.end method

.method private collectFromCache(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainInitCache:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->hasMainInitSuc(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainInitCache:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mergeClientInitInfo(Ljava/util/Map;Ljava/util/Map;)Z

    .line 134
    const-string/jumbo v0, "amnet_MasterProxyGeneralListener"

    const-string/jumbo v1, "merge init cache."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->fillLocalInitInfo(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, "amnet_MasterProxyGeneralListener"

    const-string/jumbo v1, "fillLocalInitInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fillLocalInitInfo(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 249
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "amnet_init_info"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getStringData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 267
    :goto_0
    return v0

    .line 253
    :cond_0
    new-instance v1, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener$HashMapTypeReference;

    invoke-direct {v1, p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener$HashMapTypeReference;-><init>(Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 254
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v2

    .line 255
    goto :goto_0

    .line 257
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 258
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v0, v2

    .line 259
    goto :goto_0

    .line 261
    :cond_4
    iget-object v1, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainInitCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 262
    iget-object v1, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainInitCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 263
    invoke-direct {p0, p1, v0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mergeClientInitInfo(Ljava/util/Map;Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    const-string/jumbo v1, "amnet_MasterProxyGeneralListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 267
    goto :goto_0
.end method

.method public static final getInstance()Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->masterProxyGeneralListener:Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->masterProxyGeneralListener:Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;

    .line 60
    :goto_0
    return-object v0

    .line 54
    :cond_0
    const-class v1, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->masterProxyGeneralListener:Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->masterProxyGeneralListener:Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 58
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;

    invoke-direct {v0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->masterProxyGeneralListener:Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;

    .line 54
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->masterProxyGeneralListener:Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;

    goto :goto_0
.end method

.method private getMainProcGeneralListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainProcGeneralListenService:Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    if-nez v0, :cond_0

    .line 242
    const-class v0, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    invoke-static {v0}, Lcom/alipay/pushsdk/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    iput-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainProcGeneralListenService:Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainProcGeneralListenService:Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    return-object v0
.end method

.method private hasMainInitSuc(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 271
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 278
    :goto_0
    return v0

    .line 274
    :cond_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 275
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    .line 276
    goto :goto_0

    .line 278
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mergeClientInitInfo(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 145
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 149
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 151
    if-eqz v0, :cond_3

    .line 152
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 154
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private resetNextCollectTime()V
    .locals 5

    .prologue
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->nextCollectTime:J

    .line 126
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string/jumbo v0, "amnet_MasterProxyGeneralListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "nextCollectTime=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->nextCollectTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method private saveInitInfo2Local(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->hasMainInitSuc(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainInitCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 164
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainInitCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 165
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "amnet_init_info"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const-string/jumbo v1, "amnet_MasterProxyGeneralListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public change(I)V
    .locals 2

    .prologue
    .line 66
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->getMainProcGeneralListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;->change(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string/jumbo v1, "amnet_MasterProxyGeneralListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public collect(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 89
    :try_start_0
    iget-wide v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->nextCollectTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->nextCollectTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 90
    invoke-static {}, Lcom/alipay/pushsdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->getMainProcGeneralListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;->collect(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->hasMainInitSuc(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->collectFromCache(Ljava/util/Map;)V

    .line 95
    const-string/jumbo v0, "amnet_MasterProxyGeneralListener"

    const-string/jumbo v1, "get clientInitInfoMap fail!!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->resetNextCollectTime()V

    .line 121
    :goto_1
    return-object p1

    .line 97
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mergeClientInitInfo(Ljava/util/Map;Ljava/util/Map;)Z

    .line 98
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->saveInitInfo2Local(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string/jumbo v1, "amnet_MasterProxyGeneralListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 103
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->fillLocalInitInfo(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const-string/jumbo v0, "amnet_MasterProxyGeneralListener"

    const-string/jumbo v1, "fillLocalInitInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_2
    iget-wide v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->nextCollectTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 112
    const-string/jumbo v0, "amnet_MasterProxyGeneralListener"

    const-string/jumbo v1, "init nextCollectTime"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->resetNextCollectTime()V

    .line 116
    :cond_3
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->collectFromCache(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public listenSessionInvalid()V
    .locals 2

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->getMainProcGeneralListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;->listenSessionInvalid()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string/jumbo v1, "amnet_MasterProxyGeneralListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyAmnetLifeChange(B)V
    .locals 3

    .prologue
    .line 230
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/AmnetClientServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    move-result-object v1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;->setAmnetActiveted(Z)V

    .line 231
    invoke-static {}, Lcom/alipay/pushsdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const-string/jumbo v0, "HttpWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "==============notifyAmnetLifeChange============== : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->getMainProcGeneralListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;->notifyAmnetLifeChanged(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_1
    return-void

    .line 230
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string/jumbo v1, "amnet_MasterProxyGeneralListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public notifyInitOk()V
    .locals 2

    .prologue
    .line 187
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->getMainProcGeneralListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;->notifyInitOk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const-string/jumbo v1, "amnet_MasterProxyGeneralListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public panic(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->getMainProcGeneralListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;->panic(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string/jumbo v1, "amnet_MasterProxyGeneralListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public report(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 176
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->getMainProcGeneralListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;->report(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string/jumbo v1, "amnet_MasterProxyGeneralListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public restrict(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 209
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->getMainProcGeneralListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;->restrict(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const-string/jumbo v1, "amnet_MasterProxyGeneralListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public touch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 198
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->getMainProcGeneralListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;->touch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    const-string/jumbo v1, "amnet_MasterProxyGeneralListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateSyncInitInfo(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    const-string/jumbo v0, "amnet_MasterProxyGeneralListener"

    const-string/jumbo v1, "updateSyncInitInfo."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainInitCache:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 320
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 322
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "amnet_init_info"

    iget-object v2, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainInitCache:Ljava/util/Map;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateUserInfoForInitInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 283
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const-string/jumbo v0, "amnet_MasterProxyGeneralListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateUserInfoForInitInfo userId=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] sessionId=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    iput-object p1, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->userId:Ljava/lang/String;

    .line 288
    iput-object p2, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->cacheSessionId:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainInitCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 291
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 292
    const-string/jumbo v1, "userId"

    iget-object v2, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string/jumbo v1, "cacheSessionId"

    iget-object v2, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->cacheSessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "amnet_init_info"

    iget-object v2, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainInitCache:Ljava/util/Map;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "amnet_init_info"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getStringData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    new-instance v1, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener$HashMapTypeReference;

    invoke-direct {v1, p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener$HashMapTypeReference;-><init>(Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;)V

    new-array v2, v3, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 302
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->hasMainInitSuc(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 304
    const-string/jumbo v2, "userId"

    iget-object v3, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->cacheSessionId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string/jumbo v2, "cacheSessionId"

    iget-object v3, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->cacheSessionId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v2, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainInitCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 308
    iget-object v2, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->mainInitCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 309
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "amnet_init_info"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
