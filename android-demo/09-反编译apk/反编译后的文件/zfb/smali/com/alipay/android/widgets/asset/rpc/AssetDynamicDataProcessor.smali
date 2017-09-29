.class public Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;
.super Ljava/lang/Object;
.source "AssetDynamicDataProcessor.java"


# static fields
.field private static g:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

.field private e:J

.field private f:D


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->e:J

    .line 50
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->f:D

    .line 63
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 65
    new-instance v0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;-><init>(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    .line 66
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 67
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 68
    const-string/jumbo v1, "WEALTHHOME_REQUEST_INTERVAL"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    :try_start_0
    const-string/jumbo v1, "WEALTHHOME_REQUEST_INTERVAL"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->f:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetDynamicDataProcessor"

    const-string/jumbo v2, "Exception occurs in AssetDynamicDataProcessor"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->g:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    invoke-direct {v0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;-><init>()V

    sput-object v0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->g:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    .line 58
    :cond_0
    sget-object v0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->g:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleGroup;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleGroup;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 236
    :cond_0
    return-object p0

    .line 207
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 217
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleGroup;

    .line 218
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleGroup;->modules:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 219
    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleGroup;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    .line 220
    if-eqz v1, :cond_4

    iget-boolean v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->useCache:Z

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 222
    iget-object v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    .line 223
    iget-object v5, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->mainInfo:Ljava/lang/String;

    iput-object v5, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->mainInfo:Ljava/lang/String;

    .line 224
    iget-object v5, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->secondaryInfo:Ljava/lang/String;

    iput-object v5, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->secondaryInfo:Ljava/lang/String;

    .line 225
    iget-object v5, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->extInfos:Ljava/util/Map;

    iput-object v5, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->extInfos:Ljava/util/Map;

    .line 226
    iget-boolean v5, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->hidden:Z

    iput-boolean v5, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->hidden:Z

    .line 227
    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->jumpUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->jumpUrl:Ljava/lang/String;

    goto :goto_0

    .line 208
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleGroup;

    .line 209
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleGroup;->modules:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 210
    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleGroup;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    .line 211
    if-eqz v0, :cond_6

    iget-object v4, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 212
    iget-object v4, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 229
    :cond_7
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->mainInfo:Ljava/lang/String;

    .line 230
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->secondaryInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;)Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    return-object v0
.end method

.method private static b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 261
    :cond_0
    return-object p0

    .line 245
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 251
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    .line 252
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->useCache:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 253
    iget-object v1, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    .line 254
    iget-object v4, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->mainInfo:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->mainInfo:Ljava/lang/String;

    .line 255
    iget-object v4, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->secondaryInfo:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->secondaryInfo:Ljava/lang/String;

    .line 256
    iget-object v4, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->extInfos:Ljava/util/Map;

    iput-object v4, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->extInfos:Ljava/util/Map;

    .line 257
    iget-boolean v4, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->hidden:Z

    iput-boolean v4, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->hidden:Z

    .line 258
    iget-object v1, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->jumpUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->jumpUrl:Ljava/lang/String;

    goto :goto_1

    .line 246
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    .line 247
    iget-object v3, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 248
    iget-object v3, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6267\u884c\u9996\u9875Rpc\u8bf7\u6c42\uff1arefreshRpc"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    invoke-virtual {v0, v4}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->setShowProgressDialog(Z)V

    .line 150
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->start([Ljava/lang/Object;)V

    .line 151
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    .line 292
    return-void
.end method

.method public final a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 154
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;

    .line 158
    if-nez v0, :cond_6

    .line 159
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;

    move-result-object v1

    .line 161
    :goto_0
    if-eqz p2, :cond_4

    .line 162
    if-eqz v1, :cond_3

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    iput-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->fixModules:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iput-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->dynamicGroups:Ljava/util/List;

    .line 167
    iget-object v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->fixModules:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->fixModules:Ljava/util/List;

    iget-object v2, v1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->fixModules:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    :cond_0
    iget-object v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->dynamicGroups:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->dynamicGroups:Ljava/util/List;

    iget-object v2, v1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->dynamicGroups:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    :cond_1
    :goto_1
    iget-boolean v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->redDotUseCache:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 181
    iget-object v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->markInfos:Ljava/util/Map;

    iput-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->markInfos:Ljava/util/Map;

    .line 184
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;Z)V

    .line 185
    return-void

    .line 174
    :cond_3
    iput-object v3, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->fixModules:Ljava/util/List;

    .line 175
    iput-object v3, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->dynamicGroups:Ljava/util/List;

    goto :goto_1

    .line 178
    :cond_4
    if-eqz p1, :cond_1

    if-nez v1, :cond_5

    new-instance v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;

    invoke-direct {v0}, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->dynamicGroups:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->fixModules:Ljava/util/List;

    :goto_2
    iget-object v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->dynamicGroups:Ljava/util/List;

    iget-object v3, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->dynamicGroups:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->dynamicGroups:Ljava/util/List;

    iget-object v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->fixModules:Ljava/util/List;

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->fixModules:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->fixModules:Ljava/util/List;

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u9996\u9875Rpc\u8bf7\u6c42\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "pullrefresh"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-wide/16 v0, 0x0

    .line 101
    const-string/jumbo v4, "resume"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    iget-wide v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->f:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    .line 105
    :cond_2
    iget-wide v4, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->e:J

    sub-long/2addr v2, v4

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "WealthHome-rpc"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u4e0a\u6b21\u8bf7\u6c42\u65f6\u95f4\u95f4\u9694\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",intervalTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    .line 111
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "resume"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->e:J

    goto :goto_0

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/android/widgets/asset/rpc/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/widgets/asset/rpc/a;-><init>(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetDynamicDataProcessor"

    const-string/jumbo v2, "loadCacheHomeInfo"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;

    invoke-virtual {p0, v0, v3}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;Z)V

    .line 139
    :goto_0
    return v3

    .line 137
    :cond_0
    new-instance v0, Lcom/alipay/android/widgets/asset/rpc/b;

    invoke-direct {v0, p0, v3}, Lcom/alipay/android/widgets/asset/rpc/b;-><init>(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/rpc/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;)V

    .line 310
    :cond_0
    return-void
.end method

.method public final b(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;Z)V
    .locals 4

    .prologue
    .line 271
    if-eqz p1, :cond_1

    .line 273
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AssetDynamicDataProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateWealthHomeInfo:isCache="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;)V

    .line 279
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 279
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 282
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v1

    .line 284
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {v1, p1, v0}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetDynamicDataProcessor"

    const-string/jumbo v2, "rpc\u5b8c\u6210\u65f6\u7f13\u5b58\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_1
    return-void

    .line 274
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
