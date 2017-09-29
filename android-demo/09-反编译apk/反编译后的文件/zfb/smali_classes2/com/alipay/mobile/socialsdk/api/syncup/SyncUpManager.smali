.class public Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;
.super Ljava/lang/Object;
.source "SyncUpManager.java"


# static fields
.field public static final BIZ_SYNC_TIMELINE:Ljava/lang/String; = "UP-UCHAT-LC"

.field public static final BIZ_SYNC_UCHAT_FIRE:Ljava/lang/String; = "UP-UCHAT-FIRE"

.field public static final BIZ_SYNC_UCHAT_SHOT:Ljava/lang/String; = "UP-UCHAT-SHOT"


# instance fields
.field private a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

.field private b:Lcom/alipay/mobile/socialsdk/api/syncup/c;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 35
    const-class v1, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 36
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/syncup/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/socialsdk/api/syncup/c;-><init>(B)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;->b:Lcom/alipay/mobile/socialsdk/api/syncup/c;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UP-UCHAT-FIRE"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;->b:Lcom/alipay/mobile/socialsdk/api/syncup/c;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerSendCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncUpCallback;)V

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UP-UCHAT-SHOT"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;->b:Lcom/alipay/mobile/socialsdk/api/syncup/c;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerSendCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncUpCallback;)V

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UP-UCHAT-LC"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;->b:Lcom/alipay/mobile/socialsdk/api/syncup/c;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerSendCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncUpCallback;)V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;)Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    return-object v0
.end method

.method public static final getInstance()Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/syncup/b;->a()Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public reportHasRead(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 52
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/syncup/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/api/syncup/a;-><init>(Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public reportHasTakenScreenShot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 73
    new-instance v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;-><init>()V

    .line 74
    new-instance v1, Lcom/alipay/mobile/socialsdk/api/syncup/FireModeCommand;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/api/syncup/FireModeCommand;-><init>()V

    .line 75
    iput-object p1, v1, Lcom/alipay/mobile/socialsdk/api/syncup/FireModeCommand;->toUid:Ljava/lang/String;

    .line 76
    iput-object p2, v1, Lcom/alipay/mobile/socialsdk/api/syncup/FireModeCommand;->toType:Ljava/lang/String;

    .line 78
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;->msgData:Ljava/lang/String;

    .line 79
    const-string/jumbo v1, "UP-UCHAT-SHOT"

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;->biz:Ljava/lang/String;

    .line 80
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;->sendTime:J

    .line 81
    const-wide/32 v1, 0x5265c00

    iput-wide v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;->expireTime:J

    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->sendSyncMsgNeedCallback(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_chatapp_fire"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reportHasTakenScreenShot syncMsgId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "upMessage.msgData = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;->msgData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
