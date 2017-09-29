.class public Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;
.super Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;
.source "BigVideoRequest.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "820"

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    const-string/jumbo v1, "\u4f60\u6536\u5230\u4e86\u4e00\u6761\u6084\u6084\u8bdd"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    const-string/jumbo v1, "[\u89c6\u9891]"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public uploadResource()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 30
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 61
    :goto_0
    return v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    const-class v3, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;

    .line 34
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u6d88\u606f "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u5f00\u59cb\u4e0a\u4f20\u5927\u89c6\u9891 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->getVideo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-boolean v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->isResourceUploaded:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Video already uploaded "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->getTime()I

    move-result v3

    if-nez v3, :cond_2

    .line 41
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u6d88\u606f "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e0a\u4f20\u5927\u89c6\u9891\u672a\u538b\u7f29\uff0c\u5148\u538b\u7f29 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->getVideo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->addBigVideo(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->cancel()V

    move v0, v2

    .line 44
    goto/16 :goto_0

    .line 46
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->h:J

    .line 47
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    if-nez v3, :cond_3

    move v0, v1

    .line 48
    goto/16 :goto_0

    .line 50
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->getVideo()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->o:Lcom/alipay/android/phone/mobilecommon/multimedia/video/APVideoUploadCallback;

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->uploadAlbumVideoSync(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/video/APVideoUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoUploadRsp;

    move-result-object v3

    .line 51
    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoUploadRsp;->mId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 52
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u6d88\u606f "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e0a\u4f20\u5927\u89c6\u9891\u5931\u8d25 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->getVideo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 53
    goto/16 :goto_0

    .line 55
    :cond_5
    iget-object v1, v3, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoUploadRsp;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->setVideo(Ljava/lang/String;)V

    .line 56
    iget-object v1, v3, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoUploadRsp;->mThumbId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->setThumb(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->isResourceUploaded:Z

    .line 60
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;->onResourceUploaded()V

    move v0, v2

    .line 61
    goto/16 :goto_0
.end method
