.class final Lcom/alipay/mobile/socialsdk/api/syncup/a;
.super Ljava/lang/Object;
.source "SyncUpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:J


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/syncup/a;->a:Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/api/syncup/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/api/syncup/a;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/alipay/mobile/socialsdk/api/syncup/a;->d:J

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 55
    new-instance v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;-><init>()V

    .line 56
    new-instance v1, Lcom/alipay/mobile/socialsdk/api/syncup/FireModeCommand;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/api/syncup/FireModeCommand;-><init>()V

    .line 57
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/syncup/a;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/api/syncup/FireModeCommand;->toUid:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/syncup/a;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/api/syncup/FireModeCommand;->toType:Ljava/lang/String;

    .line 59
    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/api/syncup/a;->d:J

    iput-wide v2, v1, Lcom/alipay/mobile/socialsdk/api/syncup/FireModeCommand;->msgId:J

    .line 60
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;->msgData:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "UP-UCHAT-FIRE"

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;->biz:Ljava/lang/String;

    .line 62
    iput-wide v4, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;->sendTime:J

    .line 63
    iput-wide v4, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;->expireTime:J

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/syncup/a;->a:Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;->a(Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;)Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->sendSyncMsgNeedCallback(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_chatapp_fire"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reportHasRead syncMsgId = "

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

    .line 67
    return-void
.end method
