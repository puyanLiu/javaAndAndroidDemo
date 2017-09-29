.class public Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;
.super Ljava/lang/Object;
.source "NFCApduProcessorManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NFCApduProcessorManager"

.field private static sInstance:Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;


# instance fields
.field private aidSessoinMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private apduProcessorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->apduProcessorMap:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->aidSessoinMap:Ljava/util/Map;

    .line 21
    return-void
.end method

.method private genSessionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 57
    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->sInstance:Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->sInstance:Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;

    .line 27
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->sInstance:Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public createSession(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->createSession(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createSession(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->genSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->aidSessoinMap:Ljava/util/Map;

    if-nez p2, :cond_0

    :goto_0
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-object v0

    .line 48
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public getApduProcessor(Ljava/lang/String;)Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessor;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->apduProcessorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessor;

    return-object v0
.end method

.method public getSessionParam(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->aidSessoinMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public registerApduProcessor(Ljava/lang/String;Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessor;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->apduProcessorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public unregisterApduProcessor(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->apduProcessorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method
