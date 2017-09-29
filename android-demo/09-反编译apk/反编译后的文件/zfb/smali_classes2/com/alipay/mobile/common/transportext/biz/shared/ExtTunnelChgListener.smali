.class public Lcom/alipay/mobile/common/transportext/biz/shared/ExtTunnelChgListener;
.super Ljava/lang/Object;
.source "ExtTunnelChgListener.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtTunnelChgListener"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private handleAmnetTunnelSwitch(Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;)V
    .locals 2

    .prologue
    .line 48
    iget v0, p1, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->newTunnelType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 49
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getExtTransportManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;

    .line 50
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->getMMTPTransportManager()Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;->isInited()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;->init(Landroid/content/Context;)V

    .line 54
    :cond_0
    const-string/jumbo v0, "ExtTunnelChgListener"

    const-string/jumbo v1, "Main proc amnet tunnel inited!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/GeneralEventListenServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/GeneralEventListenServiceImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/GeneralEventListenServiceImpl;->setAmnetLifeState(B)V

    .line 58
    const-string/jumbo v0, "HttpWorker"

    const-string/jumbo v1, "=======Amnet is shutdown============="

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleOriginTunnelSwitch(Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;)V
    .locals 2

    .prologue
    .line 40
    iget v0, p1, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->newTunnelType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getAmnetGeneralEventManager()Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;->notifyConnStateChange(I)V

    .line 43
    const-string/jumbo v0, "ExtTunnelChgListener"

    const-string/jumbo v1, "origin tunnel started!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method private handleSpdyTunnelSwitch(Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 65
    :try_start_0
    iget v0, p1, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->newTunnelType:I

    if-ne v0, v1, :cond_2

    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getExtTransportManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;

    .line 68
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->getSpdyTransportManager()Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;->isInited()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;->init(Landroid/content/Context;)V

    .line 72
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->asynConnect()V

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getAmnetGeneralEventManager()Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;

    move-result-object v0

    .line 75
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;->notifyConnStateChange(I)V

    .line 77
    const-string/jumbo v0, "ExtTunnelChgListener"

    const-string/jumbo v1, "Spdy tunnel started!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    iget v0, p1, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->currentTunnelType:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->newTunnelType:I

    if-eq v0, v1, :cond_1

    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->closeConnection()V

    .line 81
    const-string/jumbo v0, "ExtTunnelChgListener"

    const-string/jumbo v1, "Spdy tunnel closed!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string/jumbo v1, "ExtTunnelChgListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 32
    check-cast p2, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;

    .line 33
    const-string/jumbo v0, "ExtTunnelChgListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6536\u5230\u94fe\u8def\u5207\u6362\uff1acurrent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->currentTunnelType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->newTunnelType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTunnelChgListener;->handleSpdyTunnelSwitch(Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;)V

    .line 35
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTunnelChgListener;->handleOriginTunnelSwitch(Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;)V

    .line 36
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTunnelChgListener;->handleAmnetTunnelSwitch(Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;)V

    .line 37
    return-void
.end method
