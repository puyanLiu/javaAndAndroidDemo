.class public Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;
.super Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;
.source "VoiceRequest.java"


# instance fields
.field private final n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0, p1, p3, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 29
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    .line 27
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iput-object p2, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "812"

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    const-string/jumbo v1, "\u4f60\u6536\u5230\u4e86\u4e00\u6761\u6084\u6084\u8bdd"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    .line 39
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->setRequestId(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public setCloudId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->isResourceUploaded:Z

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;

    .line 75
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;->setV(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    goto :goto_0
.end method

.method public uploadResource()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 66
    :goto_0
    return v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    const-class v4, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;

    .line 49
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-boolean v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->isResourceUploaded:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 50
    const-string/jumbo v0, "SocialSdk_Sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "VoiceRequest already has been uploaded "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "VoiceRequest uploadResource "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 54
    const-string/jumbo v6, " resource id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;->getV()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->h:J

    .line 56
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    .line 57
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;->getV()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;->fromLocalId(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;->uploadRecordSync(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;)Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioUploadRsp;

    move-result-object v4

    .line 58
    const-string/jumbo v5, "SocialSdk_Sdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "VoiceRequest result "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioUploadRsp;->getAudioInfo()Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;->getCloudId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioUploadRsp;->getAudioInfo()Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;->getCloudId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 60
    goto/16 :goto_0

    .line 62
    :cond_2
    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioUploadRsp;->getAudioInfo()Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;->setV(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;->onResourceUploaded()V

    move v0, v2

    .line 66
    goto/16 :goto_0
.end method
