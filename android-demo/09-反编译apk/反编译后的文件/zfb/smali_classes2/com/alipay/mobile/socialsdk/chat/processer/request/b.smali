.class final Lcom/alipay/mobile/socialsdk/chat/processer/request/b;
.super Ljava/lang/Object;
.source "VideoRequest.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/video/APVideoUploadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/b;->a:Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUploadError(Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoUploadRsp;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public final onUploadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoUploadRsp;)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/b;->a:Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/b;->a:Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->removeId(Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/b;->a:Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->deliverProcess(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onUploadProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;I)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/b;->a:Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/b;->a:Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->removeId(Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/b;->a:Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->deliverProcess(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onUploadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
