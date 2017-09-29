.class public Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;
.super Ljava/lang/Object;
.source "ChatDataManager.java"


# static fields
.field private static a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

.field private static b:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private final d:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

.field private final e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

.field private final f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private final g:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

.field private final h:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;

.field private final i:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

.field private j:Landroid/os/Handler;

.field private final k:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private final l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

.field private m:Ljava/lang/String;

.field public mCurrentUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->d:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->initInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->g:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    .line 94
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->h:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;

    .line 95
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    .line 96
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 97
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    .line 98
    const-class v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->i:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 99
    const-class v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->k:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 100
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->a()V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u751f\u6210ChatDataManager"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;)Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->k:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    return-object v0
.end method

.method private static a()V
    .locals 5

    .prologue
    .line 105
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    monitor-enter v1

    .line 106
    :try_start_0
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 107
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->getMaxOperationLocalId()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v2, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 105
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;)V
    .locals 4

    .prologue
    .line 416
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;

    .line 417
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;

    .line 418
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->save(Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;)Z

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "share"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "save skinObj skinCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;->skinCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " templateCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 501
    if-eqz p2, :cond_0

    .line 502
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->j:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->j:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->k:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "inputsyncstate"

    const-string/jumbo v2, "state"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 509
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->j:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->k:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "inputsyncstate"

    const-string/jumbo v2, "state"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 250
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 253
    :cond_0
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 255
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "handleDelList:delete sync\u5904\u7406\u5b8c\u6bd5"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 256
    const-string/jumbo v3, "clientMsgId"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    const-string/jumbo v4, "userId"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    const-string/jumbo v5, "userType"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 262
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->deleteMessagesById(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->deletePreDownload(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :cond_2
    invoke-virtual {v0, v4, v5, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForRevert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 268
    :cond_3
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 269
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->deleteMessagesById(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_4

    .line 270
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->deletePreDownload(Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_4
    invoke-virtual {v0, v4, v5, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForRevert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "msgSkin"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 379
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    const-string/jumbo v1, "needRpc"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 381
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 382
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 280
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "handleDelList:revert sync\u5904\u7406\u5b8c\u6bd5"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 284
    const-string/jumbo v1, "clientMsgId"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    const-string/jumbo v1, "memo"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 286
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 287
    const-string/jumbo v1, "userType"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 288
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 289
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v1, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 291
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->queryMessage(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v7

    .line 292
    if-nez v7, :cond_3

    .line 293
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->replaceRevertMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_2
    :goto_2
    invoke-virtual {v0, v5, v6, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForRevert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 296
    :cond_3
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->processVoice(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    .line 297
    invoke-virtual {v7, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->replaceWithRevertMsg(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1, v7, v8}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Z)Z

    goto :goto_2

    .line 300
    :cond_4
    const-string/jumbo v1, "2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v1, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 302
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->queryMessage(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    move-result-object v7

    .line 303
    if-nez v7, :cond_5

    .line 304
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->replaceRevertMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 306
    :cond_5
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->processVoice(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    .line 307
    invoke-virtual {v7, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->replaceWithRevertMsg(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1, v7, v8}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z

    goto :goto_2
.end method

.method public static declared-synchronized getIncrementalMessageId()J
    .locals 4

    .prologue
    .line 512
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->b:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    .line 513
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_1

    .line 515
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->a()V

    .line 520
    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 517
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->b:Ljava/util/concurrent/atomic/AtomicLong;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;
    .locals 2

    .prologue
    .line 62
    const-class v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized refreshInstance(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 4

    .prologue
    .line 66
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->f:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->releaseInstance()V

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->release()V

    .line 69
    :cond_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;-><init>(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "\u91cd\u65b0\u751f\u6210ChatDataManager"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 73
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;-><init>(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public deleteAllChatData()V
    .locals 3

    .prologue
    .line 545
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    monitor-enter v1

    .line 546
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 547
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->g:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->deleteAllTable()V

    .line 546
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    :try_start_2
    monitor-exit v1

    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 545
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCurrentChatPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->m:Ljava/lang/String;

    return-object v0
.end method

.method public isInPreDownCache(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->isInPreDownCache(Ljava/lang/String;)Z

    move-result v0

    .line 603
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAllResource()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->loadPreDownResource()V

    .line 557
    return-void
.end method

.method public processMessages(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->h:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->processMessages(Ljava/util/List;)V

    .line 318
    return-void
.end method

.method public processVoice(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V
    .locals 4

    .prologue
    .line 568
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    const-string/jumbo v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;

    .line 573
    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;->getV()Ljava/lang/String;

    move-result-object v0

    .line 577
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;->getPlayingAudioInfo()Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;->getPlayingAudioInfo()Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;->getPlayingAudioInfo()Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;->getLocalId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;->stopPlay()V

    goto :goto_0

    .line 577
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public responseFundsSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 479
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    .line 480
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    move v7, v5

    .line 481
    :goto_0
    if-lt v7, v9, :cond_0

    .line 496
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->i:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseFundsSyncMessage:\u62a5\u544async\u6536\u5230"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-void

    .line 482
    :cond_0
    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 483
    const-string/jumbo v1, "pl"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;

    .line 485
    iget-object v1, v6, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;->bizType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v6, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;->bizType:Ljava/lang/String;

    const-string/jumbo v2, "group"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    const-string/jumbo v1, "2"

    iput-object v1, v6, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;->bizType:Ljava/lang/String;

    .line 490
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iget-object v2, v6, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;->sessionId:Ljava/lang/String;

    iget-object v3, v6, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;->bizType:Ljava/lang/String;

    const-string/jumbo v4, "chat_state_sp"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "chat_state_funds_sync_"

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->k:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "funds_update"

    const-string/jumbo v2, "funds"

    iget-object v3, v6, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;->bizType:Ljava/lang/String;

    iget-object v4, v6, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;->sessionId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 481
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    .line 488
    :cond_1
    const-string/jumbo v1, "1"

    iput-object v1, v6, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;->bizType:Ljava/lang/String;

    goto :goto_1
.end method

.method public responseInputSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->j:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/data/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/alipay/mobile/socialsdk/chat/data/a;-><init>(Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->j:Landroid/os/Handler;

    .line 349
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 350
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    .line 351
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    .line 352
    :goto_0
    if-lt v3, v5, :cond_2

    .line 358
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->i:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseInputSyncMessage:\u62a5\u544async\u6536\u5230"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void

    .line 353
    :cond_2
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 354
    const-string/jumbo v7, "pl"

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    const-class v7, Lcom/alipay/mobilechat/biz/outservice/rpc/request/InputReportReq;

    invoke-static {v0, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/outservice/rpc/request/InputReportReq;

    .line 356
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 358
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/outservice/rpc/request/InputReportReq;

    .line 359
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/request/InputReportReq;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 360
    iget-object v4, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/request/InputReportReq;->userId:Ljava/lang/String;

    iget v0, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/request/InputReportReq;->tag:I

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_2
    invoke-direct {p0, v4, v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public responseLbsSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 321
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    .line 322
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    move v7, v5

    .line 323
    :goto_0
    if-lt v7, v9, :cond_0

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->i:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseLbsSyncMessage:\u62a5\u544async\u6536\u5230"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void

    .line 324
    :cond_0
    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 325
    const-string/jumbo v1, "pl"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncLBSModel;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncLBSModel;

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncLBSModel;->gmtModify:Ljava/lang/String;

    .line 328
    invoke-static {v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iget-object v2, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncLBSModel;->sessionId:Ljava/lang/String;

    .line 330
    iget-object v3, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncLBSModel;->bizType:Ljava/lang/String;

    .line 329
    invoke-static {v1, v2, v3, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/LbsInfoUtil;->setChatLBSState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->k:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "share_lbs_update"

    const-string/jumbo v2, "lbs"

    iget-object v3, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncLBSModel;->bizType:Ljava/lang/String;

    iget-object v4, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncLBSModel;->sessionId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 323
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method

.method public responseMsgSkinSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 467
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-gez v1, :cond_0

    .line 476
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 473
    const-string/jumbo v1, "pl"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string/jumbo v0, "action"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "share"

    const-string/jumbo v3, "sync\u901a\u77e5\u4f7f\u7528rpc\u83b7\u53d6\u76ae\u80a4\u914d\u7f6e"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "msgSkin"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "needRpc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->sendMsgSkinRpcSync()V

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->i:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->b()V

    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->deleteAllData()Z

    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "share"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sync\u83b7\u53d6\u5230\u76ae\u80a4\u914d\u7f6e size="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_1

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "skinCode"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "styles"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    move v1, v2

    :goto_2
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;

    invoke-virtual {v7, v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;

    iput-object v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;->skinCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public responseSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 17

    .prologue
    .line 112
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "responseSyncMessage:\u63a5\u6536sync\u6d88\u606f\u9519\u8bef"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 117
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->d:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    const-string/jumbo v5, "receive"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->j:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 119
    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/data/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/socialsdk/chat/data/a;-><init>(Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->j:Landroid/os/Handler;

    .line 122
    :cond_2
    new-instance v6, Lcom/squareup/wire/Wire;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v6, v1}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 123
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 124
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    .line 125
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 129
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-lt v5, v8, :cond_6

    .line 224
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-virtual {v1, v10}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->putCache(Ljava/util/List;)V

    .line 228
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->h:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;

    invoke-virtual {v1, v9}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->processMessages(Ljava/util/List;)V

    .line 233
    :cond_4
    :try_start_0
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-virtual {v1, v10}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->saveResourceMessages(Ljava/util/List;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-virtual {v1, v10}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->loadResourceMsg(Ljava/util/List;)V

    .line 237
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->b(Ljava/util/List;)V

    .line 238
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 243
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->d:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    const-string/jumbo v5, "save"

    const-string/jumbo v6, "true"

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->i:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "responseSyncMessage:\u62a5\u544async\u6536\u5230"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_6
    :try_start_1
    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 132
    const-string/jumbo v2, "pl"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    const-string/jumbo v2, "isB"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    const/4 v3, 0x0

    .line 136
    const/4 v2, 0x0

    .line 137
    new-instance v13, Ljava/util/ArrayList;

    const/4 v14, 0x3

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    const-string/jumbo v14, "1"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 139
    const/4 v1, 0x0

    invoke-static {v4, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 140
    const-class v4, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    .line 139
    invoke-virtual {v6, v1, v4}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    .line 141
    iget-object v4, v1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->last_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    if-eqz v4, :cond_7

    .line 142
    new-instance v3, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getIncrementalMessageId()J

    move-result-wide v14

    iget-object v4, v1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->last_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    invoke-direct {v3, v14, v15, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;-><init>(JLcom/alipay/mobilechat/core/model/message/MessagePayloadModel;)V

    .line 144
    :cond_7
    new-instance v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getIncrementalMessageId()J

    move-result-wide v14

    invoke-direct {v4, v14, v15, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;-><init>(JLcom/alipay/mobilechat/core/model/message/MessagePayloadModel;)V

    .line 145
    iget-object v14, v1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->next_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    if-eqz v14, :cond_13

    .line 146
    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getIncrementalMessageId()J

    move-result-wide v14

    iget-object v1, v1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->next_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    invoke-direct {v2, v14, v15, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;-><init>(JLcom/alipay/mobilechat/core/model/message/MessagePayloadModel;)V

    move-object v1, v3

    move-object v3, v4

    .line 170
    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->isValid()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 171
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v14, "SocialSdk_Sdk"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "responseSyncMessage:\u6536\u5230\u524d\u7f6e\u6d88\u606f"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v14, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_9
    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->isValid()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 175
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "responseSyncMessage:\u6536\u5230\u6d88\u606f"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_4
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->isValid()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 181
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "responseSyncMessage:\u6536\u5230\u540e\u7f6e\u6d88\u606f"

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_a
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12

    .line 129
    :goto_6
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_1

    .line 149
    :cond_c
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 150
    const-string/jumbo v1, "cancel"

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 151
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 220
    :catch_0
    move-exception v1

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 153
    :cond_d
    :try_start_2
    const-string/jumbo v1, "del"

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "fire"

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 154
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "responseSyncMessage:\u6536\u5230\u5220\u9664\u6d88\u606f id = "

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "clientMsgId"

    invoke-virtual {v2, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 158
    :cond_f
    const-string/jumbo v1, "lastMsg"

    const-class v3, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    .line 159
    const-string/jumbo v3, "nextMsg"

    const-class v14, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    invoke-virtual {v2, v3, v14}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    .line 160
    const-class v3, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    invoke-static {v4, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    .line 161
    if-eqz v1, :cond_10

    .line 162
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getIncrementalMessageId()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->incrementalId:J

    .line 164
    :cond_10
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getIncrementalMessageId()J

    move-result-wide v14

    iput-wide v14, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->incrementalId:J

    .line 165
    if-eqz v2, :cond_8

    .line 166
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getIncrementalMessageId()J

    move-result-wide v14

    iput-wide v14, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->incrementalId:J

    goto/16 :goto_3

    .line 178
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "\u6d88\u606f\u4e0d\u5408\u6cd5\u4e22\u5f03"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 185
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    .line 186
    iget-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateData:Ljava/lang/String;

    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 187
    iget-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateCode:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->isNeedDownLoad(Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;)V

    .line 192
    iget v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownType:I

    packed-switch v2, :pswitch_data_0

    .line 215
    :goto_7
    iget-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromUId:Ljava/lang/String;

    .line 216
    const-string/jumbo v4, "1"

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toType:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 217
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->a(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 194
    :pswitch_0
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 198
    :pswitch_1
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 201
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->l:Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->createSmallImage(Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    .line 202
    :catch_1
    move-exception v2

    .line 203
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v13, "SocialSdk_Sdk"

    invoke-interface {v4, v13, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 209
    :pswitch_2
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 212
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    const-string/jumbo v13, "\u8d44\u6e90ID\u4e3aNull \u4e22\u5f03\u672c\u6d88\u606f"

    invoke-interface {v2, v4, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    .line 239
    :catch_2
    move-exception v1

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_13
    move-object v1, v3

    move-object v3, v4

    goto/16 :goto_3

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public sendMsgSkinRpcSync()V
    .locals 5

    .prologue
    .line 389
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 391
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 389
    const-class v1, Lcom/alipay/mobilechat/biz/outservice/rpc/api/SkinConfigRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/outservice/rpc/api/SkinConfigRpcService;

    .line 393
    :try_start_0
    invoke-interface {v0}, Lcom/alipay/mobilechat/biz/outservice/rpc/api/SkinConfigRpcService;->querySkinConfig()Lcom/alipay/mobilechat/biz/outservice/rpc/response/SkinConfigListResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 400
    iget v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/response/SkinConfigListResult;->resultStatus:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 401
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->b()V

    .line 402
    iget-object v0, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/response/SkinConfigListResult;->skinConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    :cond_1
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "share"

    const-string/jumbo v3, "send share skin rpc fail"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 402
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/outservice/rpc/response/SkinConfig;

    .line 403
    iget-object v3, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/response/SkinConfig;->skinCode:Ljava/lang/String;

    .line 404
    iget-object v0, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/response/SkinConfig;->styles:Ljava/lang/String;

    .line 405
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 406
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 407
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;

    invoke-virtual {v4, v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;

    .line 408
    iput-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;->skinCode:Ljava/lang/String;

    .line 409
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;)V

    .line 406
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public setCurrentChatPage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->m:Ljava/lang/String;

    .line 561
    return-void
.end method
