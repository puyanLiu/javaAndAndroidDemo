.class public Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;
.super Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;
.source "EmotionRequest.java"


# instance fields
.field private final n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1, p3, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iput-object p2, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->setRequestId(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public uploadResource()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 32
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionFid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionFid:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    iget-boolean v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->hasGif:Z

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    iget-object v5, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->localPath:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->createCustomEmotionVO(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->isAddDelModel(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->runAddRpc(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 36
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionFid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->getPackageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->isCustomEmotion(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 39
    goto :goto_0

    .line 41
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    iget-object v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionFid:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    iget-boolean v5, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->hasGif:Z

    .line 43
    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    iget-object v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->localPath:Ljava/lang/String;

    .line 42
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->upload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionFid:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->n:Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iput-boolean v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->isResourceUploaded:Z

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;->onResourceUploaded()V

    move v0, v1

    .line 52
    goto/16 :goto_0
.end method
