.class public Lcom/alipay/mobile/chatsdk/meta/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->registerChatService()V

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->registerPublicPlatFormServiceImpl()V

    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->registerLogInOutBroadcast()V

    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->registerPipeline()V

    .line 41
    return-void
.end method

.method private registerChatService()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 47
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 48
    const-class v1, Lcom/alipay/mobile/chatsdk/api/ChatSdkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 49
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->addService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 50
    return-void
.end method

.method private registerLogInOutBroadcast()V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 63
    const-string/jumbo v1, "LogoutInBroadcastReceiver"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 64
    const-class v1, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 67
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.alipay.security.startlogin"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 68
    const-string/jumbo v3, "com.alipay.security.logout"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "com.alipay.security.login"

    aput-object v3, v1, v2

    .line 67
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 71
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 72
    return-void
.end method

.method private registerPipeline()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 76
    const-class v1, Lcom/alipay/mobile/chatsdk/meta/ChatPipeLine;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 77
    const-string/jumbo v1, "chatsdk_sync_register"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 78
    const-string/jumbo v1, "com.alipay.mobile.PORTAL_TABLAUNCHER_ACTIVATED"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 79
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 80
    return-void
.end method

.method private registerPublicPlatFormServiceImpl()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 54
    const-class v1, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 55
    const-class v1, Lcom/alipay/android/phone/publicplatform/common/api/PublicPlatformService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 56
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->addService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 57
    return-void
.end method
