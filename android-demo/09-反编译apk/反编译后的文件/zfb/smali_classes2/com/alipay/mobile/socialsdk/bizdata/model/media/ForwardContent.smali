.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;
.super Ljava/lang/Object;
.source "ForwardContent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private action:I

.field private bizMemo:Ljava/lang/String;

.field private bizRemind:Ljava/lang/String;

.field private bizType:Ljava/lang/String;

.field private collectionExtendData:Ljava/lang/String;

.field private isResourceUpload:Z

.field private lastClientMessageId:Ljava/lang/String;

.field private lastMessageId:Ljava/lang/String;

.field private lastSendUserId:Ljava/lang/String;

.field private lastSessionId:Ljava/lang/String;

.field private lastSessionType:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private mediaInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;

.field private templateCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getCollectionExtendModel()Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->getAction()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->action:I

    .line 169
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->action:I

    if-nez v0, :cond_1

    const-string/jumbo v0, "105"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const-string/jumbo v0, "G_C_CREATE_AA"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "G_C_CREATE_GE"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const-string/jumbo v0, "G_C_CREATE_SOS"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->action:I

    .line 174
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->action:I

    return v0
.end method

.method public getBizMemo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getCollectionExtendModel()Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->getBizMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizMemo:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->templateCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 102
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizMemo:Ljava/lang/String;

    return-object v0

    .line 80
    :sswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->mediaInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TextMediaInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TextMediaInfo;->getM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizMemo:Ljava/lang/String;

    goto :goto_0

    .line 83
    :sswitch_1
    const-string/jumbo v0, "[\u56fe\u7247]"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizMemo:Ljava/lang/String;

    goto :goto_0

    .line 86
    :sswitch_2
    const-string/jumbo v0, "[\u89c6\u9891]"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizMemo:Ljava/lang/String;

    goto :goto_0

    .line 89
    :sswitch_3
    const-string/jumbo v0, "[\u4f4d\u7f6e]"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizMemo:Ljava/lang/String;

    goto :goto_0

    .line 92
    :sswitch_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->mediaInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/BusinessMediaInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/BusinessMediaInfo;->getMidTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizMemo:Ljava/lang/String;

    goto :goto_0

    .line 95
    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "[\u94fe\u63a5]"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->mediaInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizMemo:Ljava/lang/String;

    goto :goto_0

    .line 98
    :sswitch_6
    const-string/jumbo v0, "[\u5c0f\u89c6\u9891]"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizMemo:Ljava/lang/String;

    goto :goto_0

    .line 101
    :sswitch_7
    const-string/jumbo v0, "[\u89c6\u9891]"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizMemo:Ljava/lang/String;

    goto :goto_0

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x10 -> :sswitch_3
        0x13 -> :sswitch_6
        0x14 -> :sswitch_7
        0x69 -> :sswitch_4
        0x3e9 -> :sswitch_5
    .end sparse-switch
.end method

.method public getBizRemind()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getCollectionExtendModel()Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->getBizRemind()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizRemind:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizRemind:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "105"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v0, "G_C_CREATE_AA"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    const-string/jumbo v0, "[AA\u6536\u6b3e]"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizRemind:Ljava/lang/String;

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizRemind:Ljava/lang/String;

    return-object v0

    .line 33
    :cond_1
    const-string/jumbo v0, "G_C_CREATE_GE"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    const-string/jumbo v0, "[\u6d3b\u52a8\u6536\u6b3e]"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizRemind:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_2
    const-string/jumbo v0, "G_C_CREATE_SOS"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string/jumbo v0, "[\u6c5f\u6e56\u6551\u6025]"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizRemind:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CHAT"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCollectionExtendData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->collectionExtendData:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionExtendModel()Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->collectionExtendData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->collectionExtendData:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;

    .line 202
    :cond_0
    return-object v0
.end method

.method public getLastClientMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->lastClientMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->lastMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSendUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->lastSendUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->lastSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSessionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->lastSessionType:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v0, "16"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->link:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->link:Ljava/lang/String;

    const-string/jumbo v1, "alipays:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "alipays://platformapi/startApp?appId=20000050&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->link:Ljava/lang/String;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaInfo()Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;
    .locals 2

    .prologue
    .line 50
    const-string/jumbo v0, "105"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->mediaInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->mediaInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;

    instance-of v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/BusinessMediaInfo;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->mediaInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/BusinessMediaInfo;

    const-string/jumbo v1, "\u6536\u6b3e"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/BusinessMediaInfo;->setAppName(Ljava/lang/String;)V

    .line 57
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->mediaInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;

    return-object v0

    .line 53
    :cond_1
    const-string/jumbo v0, "111"

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getTemplateCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "110"

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getTemplateCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getCollectionExtendModel()Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->getTemplateData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getCollectionExtendModel()Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->getTemplateData()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ShopRemarkInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->mediaInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;

    goto :goto_0
.end method

.method public getTemplateCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getCollectionExtendModel()Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->getTemplateCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->getCollectionExtendModel()Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/CollectionExtendData;->getTemplateCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->templateCode:Ljava/lang/String;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->templateCode:Ljava/lang/String;

    return-object v0
.end method

.method public isResourceUpload()Z
    .locals 2

    .prologue
    .line 206
    const-string/jumbo v0, "20"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->isResourceUpload:Z

    .line 210
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->isResourceUpload:Z

    return v0
.end method

.method public setAction(I)V
    .locals 0

    .prologue
    .line 178
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->action:I

    .line 179
    return-void
.end method

.method public setBizMemo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizMemo:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setBizRemind(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizRemind:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->bizType:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setCollectionExtendData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->collectionExtendData:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setLastClientMessageId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->lastClientMessageId:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setLastMessageId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->lastMessageId:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setLastSendUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->lastSendUserId:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setLastSessionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->lastSessionId:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setLastSessionType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->lastSessionType:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->link:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setMediaInfo(Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->mediaInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;

    .line 62
    return-void
.end method

.method public setResourceUpload(Z)V
    .locals 0

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->isResourceUpload:Z

    .line 215
    return-void
.end method

.method public setTemplateCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;->templateCode:Ljava/lang/String;

    .line 72
    return-void
.end method
