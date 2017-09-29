.class public Lcom/alipay/mobile/common/transportext/biz/sync/SyncGeneralListenerImpl;
.super Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;
.source "SyncGeneralListenerImpl.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "amnet_SyncGeneralListenerImpl"

.field private static volatile instance:Lcom/alipay/mobile/common/transportext/biz/sync/SyncGeneralListenerImpl;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;-><init>()V

    .line 26
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/transportext/biz/sync/SyncGeneralListenerImpl;
    .locals 3

    .prologue
    .line 32
    const-class v1, Lcom/alipay/mobile/common/transportext/biz/sync/SyncGeneralListenerImpl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "amnet_SyncGeneralListenerImpl"

    const-string/jumbo v2, "SyncGeneralListenerImpl: getInstance "

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/sync/SyncGeneralListenerImpl;->instance:Lcom/alipay/mobile/common/transportext/biz/sync/SyncGeneralListenerImpl;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/sync/SyncGeneralListenerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/sync/SyncGeneralListenerImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/sync/SyncGeneralListenerImpl;->instance:Lcom/alipay/mobile/common/transportext/biz/sync/SyncGeneralListenerImpl;

    .line 37
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/sync/SyncGeneralListenerImpl;->instance:Lcom/alipay/mobile/common/transportext/biz/sync/SyncGeneralListenerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public change(I)V
    .locals 3

    .prologue
    .line 50
    const-string/jumbo v0, "amnet_SyncGeneralListenerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "change: [ state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/sync/SyncManager;->change(I)V

    .line 53
    return-void
.end method

.method public collect(Ljava/util/Map;)Ljava/util/Map;
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
    .line 79
    const-string/jumbo v0, "amnet_SyncGeneralListenerImpl"

    const-string/jumbo v1, "collect: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/sync/SyncManager;->collect(Ljava/util/Map;)V

    .line 84
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-object p1
.end method

.method public notifyInitOk()V
    .locals 2

    .prologue
    .line 106
    const-string/jumbo v0, "amnet_SyncGeneralListenerImpl"

    const-string/jumbo v1, "notifyInitOk: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/sync/SyncManager;->notifyInitOk()V

    .line 109
    return-void
.end method

.method public panic(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    const-string/jumbo v0, "amnet_SyncGeneralListenerImpl"

    const-string/jumbo v1, "panic: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transportext/biz/sync/SyncManager;->panic(ILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public report(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "amnet_SyncGeneralListenerImpl"

    const-string/jumbo v1, "report: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/sync/SyncManager;->report(Ljava/lang/String;D)V

    .line 99
    return-void
.end method
