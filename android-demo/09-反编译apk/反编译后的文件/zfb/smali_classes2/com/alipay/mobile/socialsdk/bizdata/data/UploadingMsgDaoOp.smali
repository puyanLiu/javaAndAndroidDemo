.class public Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;
.super Ljava/lang/Object;
.source "UploadingMsgDaoOp.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;


# instance fields
.field private final a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 29
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;

    const-string/jumbo v2, "uploading_msg"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public checkIsGood()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearUploadingState()V
    .locals 8

    .prologue
    .line 118
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "clearUploadingState:\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 123
    :cond_0
    :try_start_0
    const-class v4, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v2

    .line 125
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 126
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "deleteMessage:\u6e05\u7a7a\u4e0a\u884c\u5e93"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    :cond_2
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;

    move-object v3, v0

    .line 127
    iget-object v2, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    const-string/jumbo v6, "TL_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    :cond_3
    iget-object v2, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->userType:Ljava/lang/String;

    const-string/jumbo v6, "2"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 131
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    iget-object v6, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->userId:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 132
    iget-object v6, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->queryMessage(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    move-result-object v6

    .line 133
    const/4 v7, 0x2

    iput v7, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->sendingState:I

    .line 134
    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z

    .line 135
    iget-object v2, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->userId:Ljava/lang/String;

    iget-object v7, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->userType:Ljava/lang/String;

    invoke-virtual {v1, v2, v7, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    .line 137
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v4

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 140
    :cond_4
    :try_start_5
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    iget-object v6, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->userId:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 141
    iget-object v6, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->queryMessage(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v6

    .line 142
    const/4 v7, 0x2

    iput v7, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->sendingState:I

    .line 143
    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Z)Z

    .line 144
    iget-object v2, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->userId:Ljava/lang/String;

    iget-object v7, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->userType:Ljava/lang/String;

    invoke-virtual {v1, v2, v7, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    .line 146
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method public clearUploadingTLState()V
    .locals 9

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "clearUploadingState:\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 163
    :cond_0
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v1

    .line 166
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    .line 167
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 167
    :cond_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;

    .line 168
    iget-object v4, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    const-string/jumbo v5, "TL_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    iget-object v4, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->getRealFeedId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    const-string/jumbo v5, "SocialSdk_Sdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u547d\u4e2d\u4e0a\u884c\u4e2d\u670b\u53cb\u5708\u6d88\u606f"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->getRealFeedId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->loadSingleFeed(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    move-result-object v5

    .line 173
    if-eqz v5, :cond_3

    .line 174
    const/4 v6, 0x2

    iput v6, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->state:I

    .line 175
    :cond_3
    const-string/jumbo v6, "SocialSdk_Sdk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u7f6e\u5931\u8d25\u72b6\u6001\u4e0a\u884c\u4e2d\u670b\u53cb\u5708\u6d88\u606f"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->updateSingleFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 177
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-interface {v4, v1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public deleteUploadMsg(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 99
    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "deleteUploadMsg:\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return v0

    .line 104
    :cond_0
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;

    invoke-direct {v1, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    .line 106
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    const/4 v0, 0x1

    .line 110
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deleteUploadMsg:\u5220\u9664\u6d88\u606f\u4e0a\u884c\u8bb0\u5f55"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public deleteUploadingTL(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 81
    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "deleteUploadingTL:\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    return v0

    .line 87
    :cond_0
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "TL_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I

    .line 87
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    const/4 v0, 0x1

    .line 91
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deleteUploadingTL:\u5220\u9664\u4e00\u6761\u53d1\u9001\u4e2d\u7684\u670b\u53cb\u5708\u4e0a\u884cTL_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public getRealFeedId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TL_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-object p1

    .line 189
    :cond_1
    const-string/jumbo v0, "TL_"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 190
    const-string/jumbo v0, "SocialSdk_Sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parse feed id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordUploadMsg(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "recordUploadMsg:\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_0
    return v0

    .line 46
    :cond_0
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;

    invoke-direct {v1, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 48
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    const/4 v0, 0x1

    .line 52
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "recordUploadMsg:\u8bb0\u5f55\u4e00\u6761\u53d1\u9001\u4e2d\u7684\u6d88\u606f"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public recordUploadingTL(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 60
    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "recordUploadMsg:\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return v0

    .line 65
    :cond_0
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;-><init>()V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "TL_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    .line 68
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 68
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    const/4 v0, 0x1

    .line 72
    :try_start_2
    const-string/jumbo v2, "wangjian"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "record feed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "recordUploadMsg:\u8bb0\u5f55\u4e00\u6761\u53d1\u9001\u4e2d\u7684\u670b\u53cb\u5708\u4e0a\u884c"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadingMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method
