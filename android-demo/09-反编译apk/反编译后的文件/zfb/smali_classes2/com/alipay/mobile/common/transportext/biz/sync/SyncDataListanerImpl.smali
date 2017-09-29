.class public Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImpl;
.super Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;
.source "SyncDataListanerImpl.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "amnet_SyncDataListanerImpl"

.field private static volatile instance:Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImpl;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImpl;
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "amnet_SyncDataListanerImpl"

    const-string/jumbo v1, "SyncDataListanerImpl: getInstance "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImpl;->instance:Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImpl;

    if-nez v0, :cond_0

    .line 32
    const-class v1, Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImpl;

    monitor-enter v1

    .line 33
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImpl;->instance:Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImpl;

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImpl;->instance:Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImpl;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onAcceptedDataEvent(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "amnet_SyncDataListanerImpl"

    const-string/jumbo v1, "onAcceptedDataEvent: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/sync/SyncManager;->onAcceptedDataEvent(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V

    .line 50
    return-void
.end method
