.class final Lcom/alipay/mobile/socialsdk/chat/processer/l;
.super Ljava/lang/Object;
.source "MessageFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/ArrayList;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/l;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/l;->c:Ljava/lang/String;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "\u8f6c\u53d1\u6536\u85cf\u521b\u5efa\u6d88\u606f"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/l;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2, v5}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->insertBatchMessage(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 406
    return-void

    .line 387
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;

    .line 388
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/l;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v3

    .line 389
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 390
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getBizType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 391
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getTemplateCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 392
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getMediaInfo()Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 393
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getBizRemind()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizRemind:Ljava/lang/String;

    .line 394
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getBizMemo()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 395
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getAction()I

    move-result v4

    iput v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->action:I

    .line 396
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getLink()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->link:Ljava/lang/String;

    .line 397
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getCollectionExtendModel()Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->getMsgIndex()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->extendData:Ljava/lang/String;

    .line 398
    iput v5, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->scene:I

    .line 399
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->isResourceUpload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    iput-boolean v5, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->isResourceUploaded:Z

    .line 402
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
