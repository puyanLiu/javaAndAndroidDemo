.class public Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImplDirect;
.super Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;
.source "SyncDataListanerImplDirect.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "amnet_SyncDataListanerImplDirect"

.field private static volatile instance:Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImplDirect;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;-><init>()V

    .line 23
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImplDirect;
    .locals 3

    .prologue
    .line 29
    const-class v1, Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImplDirect;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "amnet_SyncDataListanerImplDirect"

    const-string/jumbo v2, "SyncDataListanerImpl: getInstance "

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImplDirect;->instance:Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImplDirect;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImplDirect;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImplDirect;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImplDirect;->instance:Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImplDirect;

    .line 35
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImplDirect;->instance:Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImplDirect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onAcceptedDataEvent(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "amnet_SyncDataListanerImplDirect"

    const-string/jumbo v1, "onAcceptedDataEvent: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/sync/SyncManager;->onAcceptedDataEvent(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V

    .line 48
    return-void
.end method
