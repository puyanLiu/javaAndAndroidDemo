.class public Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;
.super Ljava/lang/Object;
.source "TLFeedRequest.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;",
            ">;"
        }
    .end annotation
.end field

.field public activityAddress:Ljava/lang/String;

.field public activityName:Ljava/lang/String;

.field public aid:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field public hints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public visibleRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->a:Ljava/util/List;

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->hints:Ljava/util/List;

    .line 299
    return-void
.end method


# virtual methods
.method public build()Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;
    .locals 4

    .prologue
    .line 403
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;-><init>()V

    .line 404
    new-instance v1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;

    invoke-direct {v1}, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;-><init>()V

    .line 405
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->clientFeedId:Ljava/lang/String;

    .line 406
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->type:Ljava/lang/String;

    .line 407
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->content:Ljava/lang/String;

    .line 408
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->a:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->mediaList:Ljava/lang/String;

    .line 409
    iget v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->d:I

    iput v2, v1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->visible:I

    .line 410
    iget v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->e:I

    iput v2, v1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->spreadRange:I

    .line 411
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->aid:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->aid:Ljava/lang/String;

    .line 412
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->activityName:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->activityName:Ljava/lang/String;

    .line 413
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->activityAddress:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->activityAddress:Ljava/lang/String;

    .line 414
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->hints:Ljava/util/List;

    iput-object v2, v1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->hints:Ljava/util/List;

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->createTime:J

    .line 416
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->userId:Ljava/lang/String;

    .line 417
    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->parse(Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    move-result-object v2

    .line 418
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->setFeeds(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 419
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->setFeedBriefInfo(Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;)V

    .line 420
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a(Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;Z)V

    .line 425
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a(Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;Ljava/util/List;)V

    .line 426
    return-object v0

    .line 423
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a(Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;Z)V

    goto :goto_0
.end method

.method public nirvana(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 433
    iput v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->state:I

    .line 434
    new-instance v3, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;

    invoke-direct {v3}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;-><init>()V

    .line 435
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->setFeeds(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 436
    invoke-virtual {p1}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->toRPCInfo()Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->setFeedBriefInfo(Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;)V

    .line 437
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->mediacontent:Ljava/lang/String;

    const-class v4, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a(Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;Ljava/util/List;)V

    .line 438
    const-string/jumbo v0, "text"

    iget-object v4, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    .line 439
    invoke-static {v3, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a(Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;Z)V

    .line 443
    :goto_1
    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->nirvana()Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;

    .line 444
    return-object v3

    .line 438
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;

    const-string/jumbo v5, "image"

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSrc()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSrc()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "file:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "video"

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSrc()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 441
    :cond_4
    invoke-static {v3, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a(Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;Z)V

    goto :goto_1
.end method

.method public setActivityAddress(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->activityAddress:Ljava/lang/String;

    .line 386
    return-object p0
.end method

.method public setActivityName(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->activityName:Ljava/lang/String;

    .line 381
    return-object p0
.end method

.method public setAid(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->aid:Ljava/lang/String;

    .line 376
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;
    .locals 1

    .prologue
    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->c:Ljava/lang/String;

    .line 361
    :cond_0
    return-object p0
.end method

.method public setHints(Ljava/util/List;)Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 390
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->hints:Ljava/util/List;

    .line 391
    return-object p0
.end method

.method public setMediaListInfos(Ljava/util/List;)Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;",
            ">;)",
            "Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 349
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->a:Ljava/util/List;

    .line 350
    return-object p0
.end method

.method public setSpreadRange(I)Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;
    .locals 0

    .prologue
    .line 370
    iput p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->e:I

    .line 371
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->b:Ljava/lang/String;

    .line 355
    return-object p0
.end method

.method public setVisible(I)Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;
    .locals 0

    .prologue
    .line 365
    iput p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->d:I

    .line 366
    return-object p0
.end method

.method public setVisibleRange(Ljava/util/List;)Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 395
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest$Builder;->visibleRange:Ljava/util/List;

    .line 396
    return-object p0
.end method
