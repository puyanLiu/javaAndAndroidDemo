.class public Lcom/alipay/pushsdk/amnetproxy/foreign/AmnetClientServiceImpl;
.super Ljava/lang/Object;
.source "AmnetClientServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;


# static fields
.field private static AMNET_CLIENT_SERVICE:Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService; = null

.field private static final TAG:Ljava/lang/String; = "amnet_AmnetClientService"


# instance fields
.field private amnetActiveted:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/AmnetClientServiceImpl;->amnetActiveted:Z

    .line 38
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/foreign/AmnetClientServiceImpl;->AMNET_CLIENT_SERVICE:Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/foreign/AmnetClientServiceImpl;->AMNET_CLIENT_SERVICE:Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    .line 32
    :goto_0
    return-object v0

    .line 25
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/foreign/AmnetClientServiceImpl;->AMNET_CLIENT_SERVICE:Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/foreign/AmnetClientServiceImpl;->AMNET_CLIENT_SERVICE:Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 30
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/pushsdk/amnetproxy/foreign/AmnetClientServiceImpl;

    invoke-direct {v0}, Lcom/alipay/pushsdk/amnetproxy/foreign/AmnetClientServiceImpl;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/amnetproxy/foreign/AmnetClientServiceImpl;->AMNET_CLIENT_SERVICE:Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    .line 25
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/foreign/AmnetClientServiceImpl;->AMNET_CLIENT_SERVICE:Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    goto :goto_0
.end method


# virtual methods
.method public getConnState()I
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/alipay/pushsdk/util/a;->a()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getAmnetGeneralEventManager()Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;->getLatestConnState()I

    move-result v0

    return v0
.end method

.method public isAmnetActiveted()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/AmnetClientServiceImpl;->amnetActiveted:Z

    return v0
.end method

.method public post(Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;)V
    .locals 3

    .prologue
    .line 42
    const-string/jumbo v0, "amnet_AmnetClientService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Accept post from main process. amnetPost=[channel"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p1, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->channel:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/alipay/pushsdk/util/a;->a()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->post(Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;)V

    .line 44
    return-void
.end method

.method public setAmnetActiveted(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/alipay/pushsdk/amnetproxy/foreign/AmnetClientServiceImpl;->amnetActiveted:Z

    .line 59
    return-void
.end method
