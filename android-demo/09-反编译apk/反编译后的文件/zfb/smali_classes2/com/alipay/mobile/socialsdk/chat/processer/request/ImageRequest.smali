.class public Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;
.super Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;
.source "ImageRequest.java"


# instance fields
.field private final n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private final o:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1, p3, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/a;-><init>(Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->o:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;

    .line 29
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 31
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 29
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iput-object p2, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "814"

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    const-string/jumbo v1, "\u4f60\u6536\u5230\u4e86\u4e00\u6761\u6084\u6084\u8bdd"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    .line 41
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->setRequestId(Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ResourceRequest;->cancel()V

    .line 128
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->removeId(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public uploadResource()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ImageRequest uploadResource "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 87
    :goto_0
    return v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;

    .line 51
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getI()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getI()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "file:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ImageRequest already has been uploaded "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->h:J

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-nez v1, :cond_3

    move v0, v2

    .line 64
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getS()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "originalImage"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getI()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->o:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;

    invoke-virtual {v1, v4, v3, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->uploadOriginalImage(Ljava/lang/String;ZLcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getTotalSize()J

    move-result-wide v4

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->setS(Ljava/lang/String;)V

    .line 78
    :goto_1
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getCloudId()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    .line 80
    goto/16 :goto_0

    .line 72
    :cond_4
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;-><init>()V

    .line 73
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->o:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;

    iput-object v4, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;

    .line 74
    iput-boolean v3, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->isSync:Z

    .line 75
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getI()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->path:Ljava/lang/String;

    .line 76
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v4, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->uploadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v1

    goto :goto_1

    .line 82
    :cond_5
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->setI(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iput-boolean v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->isResourceUploaded:Z

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->onResourceUploaded()V

    move v0, v3

    .line 87
    goto/16 :goto_0
.end method
