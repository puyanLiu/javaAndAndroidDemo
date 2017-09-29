.class public abstract Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;
.super Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;
.source "ResourceRequest.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;->e:Z

    .line 27
    return-void
.end method


# virtual methods
.method public onResourceUploaded()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 39
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8d44\u6e90\u4e0a\u4f20\u6210\u529f\uff0c\u4fee\u6539\u6570\u636e"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u4e3atrue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iput-boolean v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->isResourceUploaded:Z

    .line 45
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 47
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Z)Z

    goto :goto_0

    .line 48
    :cond_2
    const-string/jumbo v0, "2"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 49
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z

    goto :goto_0
.end method

.method public abstract uploadResource()Z
.end method
