.class public Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "SecurityMsgCenter"

.field static mInstance:Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;


# instance fields
.field mSecurityMsgListenerListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/security/msgcenter/utils/SecurityMsgListener;",
            ">;>;"
        }
    .end annotation
.end field

.field mService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->mSecurityMsgListenerListMap:Ljava/util/Map;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityMsgCenter"

    const-string/jumbo v2, "syncService is null! SecurityMsgCenter build failed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->mService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->doInit()V

    goto :goto_0
.end method

.method private doInit()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityMsgCenter"

    const-string/jumbo v2, "doinit"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->mService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    sget-object v1, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->BizKey:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgParseSyncCallback;->getInstance()Lcom/alipay/mobile/security/msgcenter/SecurityMsgParseSyncCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->mService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "MIC-VERIFY"

    invoke-static {}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgParseSyncCallback;->getInstance()Lcom/alipay/mobile/security/msgcenter/SecurityMsgParseSyncCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->mService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    sget-object v1, Lcom/alipay/mobile/security/msgcenter/listener/DeviceLockMsgListener;->BizKey:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgParseSyncCallback;->getInstance()Lcom/alipay/mobile/security/msgcenter/SecurityMsgParseSyncCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    new-instance v0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;

    invoke-direct {v0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;-><init>()V

    sget-object v1, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->BizKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->registerMsgListener(Lcom/alipay/mobile/security/msgcenter/utils/SecurityMsgListener;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/security/msgcenter/listener/VerifyIdentityMsgListener;

    invoke-direct {v0}, Lcom/alipay/mobile/security/msgcenter/listener/VerifyIdentityMsgListener;-><init>()V

    const-string/jumbo v1, "MIC-VERIFY"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->registerMsgListener(Lcom/alipay/mobile/security/msgcenter/utils/SecurityMsgListener;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/security/msgcenter/listener/DeviceLockMsgListener;

    invoke-direct {v0}, Lcom/alipay/mobile/security/msgcenter/listener/DeviceLockMsgListener;-><init>()V

    sget-object v1, Lcom/alipay/mobile/security/msgcenter/listener/DeviceLockMsgListener;->BizKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->registerMsgListener(Lcom/alipay/mobile/security/msgcenter/utils/SecurityMsgListener;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->mInstance:Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;

    invoke-direct {v0}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;-><init>()V

    sput-object v0, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->mInstance:Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->mInstance:Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;

    return-object v0
.end method

.method private getMsgListenerByKey(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/security/msgcenter/utils/SecurityMsgListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->mSecurityMsgListenerListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->mSecurityMsgListenerListMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static init()V
    .locals 0

    invoke-static {}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->getInstance()Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;

    return-void
.end method

.method private sendMsg(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->getMsgListenerByKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/msgcenter/utils/SecurityMsgListener;

    invoke-interface {v0, p3, p2}, Lcom/alipay/mobile/security/msgcenter/utils/SecurityMsgListener;->onParamsParsed(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public registerMsgListener(Lcom/alipay/mobile/security/msgcenter/utils/SecurityMsgListener;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->getMsgListenerByKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityMsgCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SecurityMsgListener registered:[BizKey]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",[SecurityMsgListener]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendPushMsg(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "Push"

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->sendMsg(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public sendSyncMsg(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "Sync"

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->sendMsg(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterMsgListener(Lcom/alipay/mobile/security/msgcenter/utils/SecurityMsgListener;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/alipay/mobile/security/msgcenter/SecurityMsgCenter;->getMsgListenerByKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityMsgCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SecurityMsgListener removed:[BizKey]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",[SecurityMsgListener]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
