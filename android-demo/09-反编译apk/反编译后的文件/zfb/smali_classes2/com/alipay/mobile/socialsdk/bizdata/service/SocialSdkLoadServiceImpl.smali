.class public Lcom/alipay/mobile/socialsdk/bizdata/service/SocialSdkLoadServiceImpl;
.super Lcom/alipay/mobile/personalbase/service/SocialSdkLoadService;
.source "SocialSdkLoadServiceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/service/SocialSdkLoadService;-><init>()V

    return-void
.end method


# virtual methods
.method public loadSdk()V
    .locals 3

    .prologue
    .line 15
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk_timeline"

    const-string/jumbo v2, "loadservice"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/service/SocialSdkLoadServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 17
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 16
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->loadContactModule()V

    .line 20
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/service/SocialSdkLoadServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 21
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 20
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->loadChatModule()V

    .line 24
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/service/SocialSdkLoadServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 25
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;

    .line 24
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;->loadTimeLineModule()V

    .line 27
    return-void
.end method

.method public refreshSdk()V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/service/SocialSdkLoadServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 31
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 30
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->refreshContactModule()V

    .line 34
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/service/SocialSdkLoadServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 35
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 34
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->refreshChatModule()V

    .line 38
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/service/SocialSdkLoadServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 39
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;

    .line 38
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;->refreshTimeLIneModule()V

    .line 41
    return-void
.end method
