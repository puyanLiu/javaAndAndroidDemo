.class public Lcom/alipay/mobile/onsitepaystatic/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final handler_:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    const-string/jumbo v0, "commonbiz-MetaInfo"

    iput-object v0, p0, Lcom/alipay/mobile/onsitepaystatic/MetaInfo;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepaystatic/MetaInfo;->handler_:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    const-string/jumbo v1, "LoginAndPayBroadCastReceiver"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    const-class v1, Lcom/alipay/mobile/onsitepaystatic/LoginAndPayBroadCastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "com.alipay.mobile.basebiz.TRADE_STATUS_CHANGED"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepaystatic/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    const-string/jumbo v1, "LogoutBroadCastReceiver"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    const-class v1, Lcom/alipay/mobile/onsitepaystatic/LogoutBroadCastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "com.alipay.security.logout"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepaystatic/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    const-class v1, Lcom/alipay/mobile/onsitepaystatic/BindCardBroadCastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    const-class v1, Lcom/alipay/mobile/onsitepaystatic/BindCardBroadCastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "EVENT_ADD_BANK_CARD"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepaystatic/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    invoke-direct {p0}, Lcom/alipay/mobile/onsitepaystatic/MetaInfo;->registerPipeline()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/onsitepaystatic/MetaInfo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/onsitepaystatic/MetaInfo;->handler_:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/onsitepaystatic/MetaInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/onsitepaystatic/MetaInfo;->asyncGetOtpManagerAndSendTotoMessage()V

    return-void
.end method

.method private asyncGetOtpManagerAndSendTotoMessage()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/onsitepaystatic/MetaInfo$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepaystatic/MetaInfo$2;-><init>(Lcom/alipay/mobile/onsitepaystatic/MetaInfo;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerPipeline()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "commonbiz-MetaInfo"

    const-string/jumbo v2, "on regist tab_launcher_activated pipeline  "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.PORTAL_TABLAUNCHER_ACTIVATED"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1;-><init>(Lcom/alipay/mobile/onsitepaystatic/MetaInfo;)V

    const-string/jumbo v2, "seed init pipe line task"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
