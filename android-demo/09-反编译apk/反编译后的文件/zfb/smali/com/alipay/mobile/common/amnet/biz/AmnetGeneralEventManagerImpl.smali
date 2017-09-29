.class public Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;
.super Ljava/lang/Object;
.source "AmnetGeneralEventManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "amnet_AmnetGeneralEventManager"


# instance fields
.field private amnetGeneralListener:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;

.field private amnetGeneralListenerArray:[Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;

.field private amnetGeneralListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;",
            ">;"
        }
    .end annotation
.end field

.field private connState:I

.field private readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private reentrantLonk:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListenerList:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->reentrantLonk:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->connState:I

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->reentrantLonk:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->reentrantLonk:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;)[Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->toAmnetGeneralListenerArray()[Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;

    move-result-object v0

    return-object v0
.end method

.method private toAmnetGeneralListenerArray()[Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListenerArray:[Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListenerArray:[Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;

    .line 235
    :goto_0
    return-object v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListenerArray:[Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListenerArray:[Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;

    goto :goto_0

    .line 230
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListenerList:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;

    .line 234
    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListenerArray:[Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    iget-object v1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public addGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListenerArray:[Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public getAmnetLinkageListener()Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListener:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListener:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListener:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;

    return-object v0
.end method

.method public getLatestConnState()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->connState:I

    return v0
.end method

.method public notifyCollectInitInfo(Ljava/util/Map;)V
    .locals 1
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
    .line 106
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$3;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;Ljava/util/Map;)V

    .line 113
    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;->execute()V

    .line 116
    return-void
.end method

.method public notifyConnStateChange(I)V
    .locals 1

    .prologue
    .line 78
    iput p1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->connState:I

    .line 79
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$1;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;I)V

    .line 85
    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;->execute()V

    .line 86
    return-void
.end method

.method public notifyError(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$2;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;ILjava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;->execute()V

    .line 102
    return-void
.end method

.method public notifyInitOk()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$5;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;)V

    .line 137
    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;->execute()V

    .line 138
    return-void
.end method

.method public notifyReconnect()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$9;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$9;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;)V

    .line 181
    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;->execute()V

    .line 182
    return-void
.end method

.method public notifyReport(Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$4;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;Ljava/lang/String;D)V

    .line 126
    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;->execute()V

    .line 127
    return-void
.end method

.method public notifyReportIpPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 142
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$6;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;->execute()V

    .line 149
    return-void
.end method

.method public notifyRestrict(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$7;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;ILjava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;->execute()V

    .line 160
    return-void
.end method

.method public notifySessionInvalid()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$8;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$8;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;)V

    .line 170
    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;->execute()V

    .line 171
    return-void
.end method

.method public notifyUpdateConfig(Ljava/util/Map;)V
    .locals 1
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
    .line 186
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$10;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$10;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;Ljava/util/Map;)V

    .line 192
    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;->execute()V

    .line 193
    return-void
.end method

.method public notifyUpdateDnsInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/amnet/api/model/DnsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$11;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$11;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;Ljava/util/List;)V

    .line 203
    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;->execute()V

    .line 204
    return-void
.end method

.method public removeGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->amnetGeneralListenerArray:[Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public resetConnState()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->connState:I

    .line 215
    return-void
.end method
