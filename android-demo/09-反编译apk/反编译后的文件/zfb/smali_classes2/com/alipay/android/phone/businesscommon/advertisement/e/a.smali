.class public final Lcom/alipay/android/phone/businesscommon/advertisement/e/a;
.super Ljava/lang/Object;
.source "AdExcutorService.java"


# static fields
.field private static c:Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

.field private static d:Z


# instance fields
.field private final a:I

.field private b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->d:Z

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 59
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 60
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/android/phone/businesscommon/advertisement/e/a;
    .locals 3

    .prologue
    .line 45
    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->c:Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->c:Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    .line 47
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->d:Z

    .line 52
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AdExcutorService created! mIsInitCompleted="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    sget-boolean v2, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->d:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 55
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->c:Lcom/alipay/android/phone/businesscommon/advertisement/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/e/a;)V
    .locals 5

    .prologue
    .line 266
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getAdvertisementViewCallBackMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getSyncDataChangeCallBackMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_3
    return-void

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;

    if-eqz v2, :cond_5

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;->onChange(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "AdExcutorService.init\u5b8c\u6bd5\uff0c\u5b8c\u6210\u5751\u4f4d\u56de\u8c03:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    new-instance v4, Lcom/alipay/android/phone/businesscommon/advertisement/e/b;

    invoke-direct {v4, p0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/e/b;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/e/a;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;)V

    invoke-virtual {v0, v2, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getSpaceInfoByCode(Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    goto :goto_1
.end method

.method static synthetic b()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;)V
    .locals 5

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/e/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/e/d;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/e/a;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;)V

    const-wide/16 v2, 0x0

    .line 216
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 215
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 218
    return-void
.end method

.method public final a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;)V
    .locals 5

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/e/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/e/c;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/e/a;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;)V

    const-wide/16 v2, 0x0

    .line 68
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 67
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 70
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 64
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    sget-boolean v0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AdExcutorService.queryBySpaceCode:mIsInitCompleted = false,query is cancelled!spaceCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;

    invoke-direct {v1}, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;-><init>()V

    .line 100
    iput-object p2, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;->extInfo:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iput-object v0, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;->spaceCodeList:Ljava/util/List;

    .line 105
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 106
    const-class v2, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 107
    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getUseId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;->userId:Ljava/lang/String;

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;

    .line 111
    invoke-direct {v2, p0, v1, p3, p4}, Lcom/alipay/android/phone/businesscommon/advertisement/e/e;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/e/a;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceQueryReq;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;)V

    const-wide/16 v3, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 110
    invoke-interface {v0, v2, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
