.class public Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;
.super Ljava/lang/Object;
.source "ChatMessageProcesser.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private final c:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

.field private final d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->a:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 37
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 38
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 39
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 38
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->b:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->b:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    return-object v0
.end method


# virtual methods
.method public processMessages(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processMessages:\u5904\u7406\u804a\u5929\u6d88\u606f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 51
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 53
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "processMessages:\u6d88\u606f\u5206\u7ec4\u5b8c\u6210,\u4eba"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\u7fa4"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 98
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 105
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentSessionsFromMsg(Ljava/util/List;)V

    .line 107
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 110
    :cond_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/e;

    invoke-direct {v0, p0, v4, v5}, Lcom/alipay/mobile/socialsdk/chat/processer/e;-><init>(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "processMessages:\u5904\u7406\u672c\u6279\u804a\u5929\u6d88\u606f\u7ed3\u675f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 54
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    .line 55
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromUId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toUId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "1"

    iget-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 59
    new-instance v7, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->a:Ljava/lang/String;

    invoke-direct {v7, v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;-><init>(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;)V

    .line 60
    iget v0, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    if-ne v0, v8, :cond_3

    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toUId:Ljava/lang/String;

    move-object v2, v0

    .line 61
    :goto_3
    iget v0, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    if-ne v0, v8, :cond_4

    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toLoginId:Ljava/lang/String;

    .line 62
    :goto_4
    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/f;

    .line 69
    :goto_5
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/processer/f;->b:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 60
    :cond_3
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromUId:Ljava/lang/String;

    move-object v2, v0

    goto :goto_3

    .line 61
    :cond_4
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromLoginId:Ljava/lang/String;

    goto :goto_4

    .line 67
    :cond_5
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/f;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/f;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 71
    :cond_6
    const-string/jumbo v0, "2"

    iget-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->a:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;-><init>(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;)V

    .line 73
    iget-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->senderId:Ljava/lang/String;

    iget-object v7, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromLoginId:Ljava/lang/String;

    invoke-virtual {v5, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toUId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toUId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/f;

    .line 80
    :goto_6
    iget-object v7, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->atMe:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 81
    iget-object v7, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->atMe:Ljava/lang/String;

    iput-object v7, v0, Lcom/alipay/mobile/socialsdk/chat/processer/f;->c:Ljava/lang/String;

    .line 83
    :cond_7
    iget-object v7, v0, Lcom/alipay/mobile/socialsdk/chat/processer/f;->b:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toUId:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 78
    :cond_8
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/f;

    iget-object v7, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toUId:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/alipay/mobile/socialsdk/chat/processer/f;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 91
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 92
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 93
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/chat/processer/f;

    .line 94
    iget-object v7, v1, Lcom/alipay/mobile/socialsdk/chat/processer/f;->b:Ljava/util/List;

    invoke-virtual {v0, v7, v8}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->saveMessages(Ljava/util/List;Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 95
    const-string/jumbo v7, "1"

    invoke-virtual {v1, v7, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/f;->a(Ljava/lang/String;I)Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 98
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v1, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 100
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/f;

    .line 101
    iget-object v6, v0, Lcom/alipay/mobile/socialsdk/chat/processer/f;->b:Ljava/util/List;

    invoke-virtual {v1, v6, v8}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->saveMessages(Ljava/util/List;Z)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 102
    const-string/jumbo v6, "2"

    invoke-virtual {v0, v6, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/f;->a(Ljava/lang/String;I)Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method
