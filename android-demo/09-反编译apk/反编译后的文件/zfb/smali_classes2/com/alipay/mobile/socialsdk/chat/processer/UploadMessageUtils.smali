.class public Lcom/alipay/mobile/socialsdk/chat/processer/UploadMessageUtils;
.super Ljava/lang/Object;
.source "UploadMessageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadMessageUtils;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadMessageUtils;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static declared-synchronized a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 34
    const-class v4, Lcom/alipay/mobile/socialsdk/chat/processer/UploadMessageUtils;

    monitor-enter v4

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    .line 35
    const-string/jumbo v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 38
    invoke-virtual {v1, p0, p3}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->saveSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Z)Z

    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u6d88\u606f\u63d2\u5165\u4e2a\u4eba\u6570\u636e\u5e93\u5931\u8d25 : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v3

    .line 60
    :cond_0
    :goto_0
    monitor-exit v4

    return-object p0

    .line 43
    :cond_1
    :try_start_1
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 44
    invoke-virtual {v1, p2, p1, p0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u6d88\u606f\u63d2\u5165\u4e2a\u4eba\u6570\u636e\u5e93\u6210\u529f : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 48
    :cond_2
    :try_start_2
    const-string/jumbo v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 50
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    move-object v2, v0

    invoke-virtual {v1, v2, p3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->saveSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z

    move-result v1

    .line 51
    if-nez v1, :cond_3

    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u6d88\u606f\u63d2\u5165\u7fa4\u6570\u636e\u5e93\u5931\u8d25 : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v3

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 56
    invoke-virtual {v1, p2, p1, p0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u6d88\u606f\u63d2\u5165\u7fa4\u6570\u636e\u5e93\u6210\u529f : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static insertBatchMessage(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadMessageUtils;->insertBatchMessage(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static insertBatchMessage(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 80
    invoke-virtual {v0, p0, p3}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->saveMessages(Ljava/util/List;Z)I

    .line 81
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 82
    invoke-virtual {v0, p2, p1, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    .line 89
    :cond_1
    :goto_1
    return-object p0

    .line 71
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    .line 72
    iput v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->sendingState:I

    .line 73
    iput v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    .line 74
    const-string/jumbo v3, "2"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_3
    const-string/jumbo v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 85
    invoke-virtual {v0, v1, p3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->saveMessages(Ljava/util/List;Z)I

    .line 86
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 87
    invoke-virtual {v0, p2, p1, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    goto :goto_1
.end method
