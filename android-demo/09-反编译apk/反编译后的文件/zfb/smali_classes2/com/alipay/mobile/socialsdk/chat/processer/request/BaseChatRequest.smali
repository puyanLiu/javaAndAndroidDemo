.class public abstract Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;
.super Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;
.source "BaseChatRequest.java"


# static fields
.field private static n:Lcom/alipay/mobilechat/biz/outservice/rpc/api/ChatMessageRpcService;


# instance fields
.field protected a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;-><init>()V

    .line 51
    new-instance v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    invoke-direct {v0}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->mSenderUserId:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->c:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->b:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->scene:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->CHAT:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    :goto_0
    iput-object v0, v1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizRemind:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizRemind:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizType:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->extendData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->extendData:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->extendParam:Ljava/lang/String;

    .line 62
    :cond_0
    return-void

    .line 56
    :pswitch_0
    sget-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->FORWARD:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->SHARE:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static declared-synchronized a()Lcom/alipay/mobilechat/biz/outservice/rpc/api/ChatMessageRpcService;
    .locals 3

    .prologue
    .line 35
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->n:Lcom/alipay/mobilechat/biz/outservice/rpc/api/ChatMessageRpcService;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 37
    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 36
    const-class v2, Lcom/alipay/mobilechat/biz/outservice/rpc/api/ChatMessageRpcService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/outservice/rpc/api/ChatMessageRpcService;

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->n:Lcom/alipay/mobilechat/biz/outservice/rpc/api/ChatMessageRpcService;

    .line 41
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->n:Lcom/alipay/mobilechat/biz/outservice/rpc/api/ChatMessageRpcService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 184
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parsePdClientMsgId client msg id"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    .line 188
    :cond_1
    const-string/jumbo v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 189
    if-ltz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 190
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parsePdClientMsgId parse finish result is"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public onFail()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->onFinish()V

    .line 96
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Request fail "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->mSenderUserId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->mSenderUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Request fail"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v4, v4, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " but is not current user\'s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->j:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->finish(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    const/4 v1, 0x2

    iput v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->sendingState:I

    .line 83
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Z)Z

    .line 86
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    .line 95
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->onFinish()V

    goto/16 :goto_0

    .line 88
    :cond_3
    const-string/jumbo v0, "2"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 89
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z

    .line 92
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    goto :goto_1
.end method

.method public onFinish()V
    .locals 4

    .prologue
    .line 100
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->onFinish()V

    .line 101
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->deleteUploadMsg(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->isDirectSend()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->removeId(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onResourceUploaded()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onSucceed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Request succeed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->onFinish()V

    .line 130
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->sendingState:I

    .line 117
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 119
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Z)Z

    .line 120
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    .line 129
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->onFinish()V

    goto :goto_0

    .line 122
    :cond_2
    const-string/jumbo v0, "2"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z

    .line 126
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    goto :goto_1
.end method

.method public sendMessage()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 139
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a()Lcom/alipay/mobilechat/biz/outservice/rpc/api/ChatMessageRpcService;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Request sendToTarget client messageID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->mSenderUserId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->mSenderUserId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v4, v4, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not current user\'s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->j:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->finish(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)V

    .line 175
    :goto_0
    return v7

    .line 155
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    invoke-interface {v0, v1}, Lcom/alipay/mobilechat/biz/outservice/rpc/api/ChatMessageRpcService;->sendChatMsg(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v2, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->msgId:J

    .line 159
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v0, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgIndex:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->msgIndex:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->onSucceed()V

    .line 162
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v1, "LINK_SOCIAL"

    const-string/jumbo v2, "PHASE_SOCIAL_SEND"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)J

    .line 163
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v1, "LINK_SOCIAL"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->commitLinkRecord(Ljava/lang/String;)V

    move v4, v8

    .line 170
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->m:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    const-string/jumbo v1, "UCHAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v3, v3, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "send"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move v0, v7

    :goto_2
    move v7, v0

    .line 175
    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;->onFail()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v7

    .line 168
    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    move v0, v8

    goto :goto_2
.end method
