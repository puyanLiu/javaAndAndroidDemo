.class public Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;
.super Ljava/lang/Object;
.source "AcceptDataManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "amnet_AcceptDataManager"


# instance fields
.field private readHandler:Ljava/util/concurrent/ThreadPoolExecutor;

.field private registerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->registerMap:Ljava/util/Map;

    .line 28
    const-string/jumbo v0, "AmnetAcception"

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->threadName:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$1;

    invoke-direct {v7, p0}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$1;-><init>(Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;)V

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->readHandler:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->readHandler:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->dispatch(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V

    return-void
.end method

.method private addAcceptDataListener(BLcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->registerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 158
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->registerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private dispatch(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V
    .locals 4

    .prologue
    .line 172
    const-string/jumbo v0, "amnet_AcceptDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dispatch. channle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p1, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->channel:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->registerMap:Ljava/util/Map;

    iget-byte v1, p1, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->channel:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 174
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 176
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;

    .line 177
    invoke-interface {v1, p1}, Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;->onAcceptedDataEvent(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 178
    :catch_0
    move-exception v1

    .line 179
    const-string/jumbo v3, "AcceptDataManager"

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 182
    :cond_0
    return-void
.end method

.method private removeAcceptDataListener(B)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->registerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method


# virtual methods
.method public addPushAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->addAcceptDataListener(BLcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    .line 77
    return-void
.end method

.method public addRpcAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->addAcceptDataListener(BLcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    .line 53
    return-void
.end method

.method public addSyncAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->addAcceptDataListener(BLcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    .line 61
    return-void
.end method

.method public addSyncDirectAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->addAcceptDataListener(BLcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    .line 69
    return-void
.end method

.method public getAmnetChannels()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Lcom/alipay/mobile/common/transportext/amnet/Channel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->registerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 147
    :goto_0
    return-object v0

    .line 142
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->registerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->registerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 144
    new-instance v3, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$AmnetAcceptDataListener;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$AmnetAcceptDataListener;-><init>(Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;B)V

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 147
    goto :goto_0
.end method

.method public notifyAcceptedData(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->readHandler:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$2;-><init>(Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 112
    return-void
.end method

.method public notifyRecycle(BLjava/util/Map;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->registerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 117
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 119
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;

    .line 120
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;->recycle(BLjava/util/Map;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 123
    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public notifyReqPacketSize(BJII)V
    .locals 8

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->registerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 128
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 130
    :try_start_0
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 131
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;->tell(BJII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 134
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public removePushAcceptDataListener()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->removeAcceptDataListener(B)V

    .line 94
    return-void
.end method

.method public removeRpcAcceptDataListener()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->removeAcceptDataListener(B)V

    .line 82
    return-void
.end method

.method public removeSyncAcceptDataListener()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->removeAcceptDataListener(B)V

    .line 86
    return-void
.end method

.method public removeSyncDirectAcceptDataListener()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->removeAcceptDataListener(B)V

    .line 90
    return-void
.end method
