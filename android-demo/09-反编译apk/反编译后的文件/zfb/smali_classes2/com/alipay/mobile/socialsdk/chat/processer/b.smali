.class final Lcom/alipay/mobile/socialsdk/chat/processer/b;
.super Ljava/lang/Object;
.source "BigVideoSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

.field private final synthetic b:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/b;->a:Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/b;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/b;->d:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/b;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;

    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/b;->a:Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->a(Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->getVideo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->compressVideo(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APAlbumVideoInfo;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APAlbumVideoInfo;->mSuccess:Z

    if-nez v2, :cond_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/b;->a:Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/b;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_1
    iget v2, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APAlbumVideoInfo;->mDuration:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->setTime(I)V

    .line 108
    iget-wide v2, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APAlbumVideoInfo;->mSize:J

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->setSize(J)V

    .line 109
    iget-object v1, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APAlbumVideoInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->setVideo(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/b;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/b;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->add(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)V

    goto :goto_0
.end method
