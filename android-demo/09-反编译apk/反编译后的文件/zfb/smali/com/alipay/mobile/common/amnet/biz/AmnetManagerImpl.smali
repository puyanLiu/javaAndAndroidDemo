.class public Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;
.super Ljava/lang/Object;
.source "AmnetManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/amnet/api/AmnetManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public activateAmnet(Lcom/alipay/mobile/common/amnet/api/AmnetResult;)V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAmnetOperationManager()Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->activateAmnet(Lcom/alipay/mobile/common/amnet/api/AmnetResult;)V

    .line 75
    return-void
.end method

.method public addGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAmnetGeneralEventManager()Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;->addGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V

    .line 65
    return-void
.end method

.method public addPushAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAcceptDataManager()Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;->addPushAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    .line 40
    return-void
.end method

.method public addRpcAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAcceptDataManager()Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;->addRpcAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    .line 25
    return-void
.end method

.method public addSyncAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAcceptDataManager()Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;->addSyncAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    .line 30
    return-void
.end method

.method public addSyncDirectAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAcceptDataManager()Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;->addSyncDirectAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    .line 35
    return-void
.end method

.method public askConnState(Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;)V
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->askConnState(Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;)V

    .line 120
    return-void
.end method

.method public detect(Lcom/alipay/mobile/common/amnet/api/AmnetNetworkDiagnoseListener;)V
    .locals 1

    .prologue
    .line 139
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->detect(Lcom/alipay/mobile/common/amnet/api/AmnetNetworkDiagnoseListener;)V

    .line 140
    return-void
.end method

.method public getAcceptDataManager()Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;

    return-object v0
.end method

.method public getAmnetAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmnetDnsInfos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetDnsInfos()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmnetGeneralEventManager()Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;
    .locals 1

    .prologue
    .line 109
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;

    return-object v0
.end method

.method public getAmnetOperationManager()Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;
    .locals 1

    .prologue
    .line 143
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    return-object v0
.end method

.method public getOutEventNotifyManager()Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 114
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->isActivated()Z

    move-result v0

    return v0
.end method

.method public notifyAppEvent(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAmnetOperationManager()Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->notifyAppEvent(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)V

    .line 90
    return-void
.end method

.method public notifyResultFeedback(Lcom/alipay/mobile/common/amnet/api/model/ResultFeedback;)V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAmnetOperationManager()Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->notifyRespResult(Lcom/alipay/mobile/common/amnet/api/model/ResultFeedback;)V

    .line 95
    return-void
.end method

.method public post(Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;)V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAmnetOperationManager()Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->post(Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;)V

    .line 85
    return-void
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 124
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->reconnect()V

    .line 125
    return-void
.end method

.method public removeGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAmnetGeneralEventManager()Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;->removeGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V

    .line 70
    return-void
.end method

.method public removePushAcceptDataListener()V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAcceptDataManager()Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;->removePushAcceptDataListener()V

    .line 60
    return-void
.end method

.method public removeRpcAcceptDataListener()V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAcceptDataManager()Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;->removeRpcAcceptDataListener()V

    .line 45
    return-void
.end method

.method public removeSyncAcceptDataListener()V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAcceptDataManager()Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;->removeSyncAcceptDataListener()V

    .line 50
    return-void
.end method

.method public removeSyncDirectAcceptDataListener()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAcceptDataManager()Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;->removeSyncDirectAcceptDataListener()V

    .line 55
    return-void
.end method

.method public shutdownAmnet(Lcom/alipay/mobile/common/amnet/api/AmnetResult;)V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetManagerImpl;->getAmnetOperationManager()Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->shutdownAmnet(Lcom/alipay/mobile/common/amnet/api/AmnetResult;)V

    .line 80
    return-void
.end method
