.class final Lcom/alipay/mobile/socialsdk/chat/processer/a;
.super Ljava/lang/Object;
.source "BigVideoSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

.field private final synthetic b:Ljava/util/ArrayList;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/a;->a:Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/a;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/a;->d:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    return-void

    .line 50
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    .line 51
    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5f00\u59cb\u538b\u7f29\u5927\u89c6\u9891..."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    const-class v3, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;

    .line 53
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/a;->a:Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->a(Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->getVideo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->compressVideo(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APAlbumVideoInfo;

    move-result-object v3

    .line 54
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APAlbumVideoInfo;->mSuccess:Z

    if-nez v4, :cond_2

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/a;->a:Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    iget v4, v3, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APAlbumVideoInfo;->mDuration:I

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->setTime(I)V

    .line 59
    iget-wide v4, v3, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APAlbumVideoInfo;->mSize:J

    invoke-virtual {v1, v4, v5}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->setSize(J)V

    .line 60
    iget-object v3, v3, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APAlbumVideoInfo;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;->setVideo(Ljava/lang/String;)V

    .line 61
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/a;->a:Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/socialsdk/chat/processer/BigVideoSender;->b(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->addToMessageQueue(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
