.class final Lcom/alipay/mobile/socialsdk/chat/processer/request/a;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/a;->a:Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompressSucc(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public final onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public final onProcess(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;I)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/a;->a:Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/a;->a:Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->removeId(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/a;->a:Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->deliverProcess(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onStartUpload(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final onSuccess(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/a;->a:Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/a;->a:Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->removeId(Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/a;->a:Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->deliverProcess(Ljava/lang/String;I)V

    goto :goto_0
.end method
