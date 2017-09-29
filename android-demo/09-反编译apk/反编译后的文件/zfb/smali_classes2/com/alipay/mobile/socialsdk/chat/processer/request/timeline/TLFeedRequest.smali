.class public Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;
.super Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;
.source "TLFeedRequest.java"


# static fields
.field private static d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private static n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

.field private static o:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;


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

.field private b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

.field private c:Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;

.field private p:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

.field private q:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

.field private r:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

.field private s:Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a:Ljava/util/List;

    .line 54
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->t:Ljava/lang/String;

    .line 55
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->p:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    .line 56
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->q:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    .line 57
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->r:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    .line 58
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->s:Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->e:Z

    return-void
.end method

.method public static getLifeCircleService()Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->o:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 276
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 275
    const-class v1, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->o:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    .line 279
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->o:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    return-object v0
.end method

.method public static getMultimediaImageService()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
    .locals 2

    .prologue
    .line 258
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-nez v0, :cond_0

    .line 259
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 260
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 259
    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 262
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    return-object v0
.end method

.method public static getMultimediaVideoService()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    if-nez v0, :cond_0

    .line 267
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 268
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    .line 267
    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    .line 270
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    return-object v0
.end method

.method public static isSuperHeight(II)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 463
    if-lez p1, :cond_0

    if-lez p0, :cond_0

    .line 464
    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 465
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    const/4 v0, 0x1

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public canRetry()Z
    .locals 2

    .prologue
    .line 473
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->i:I

    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->f:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public excute()Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->spreadRange:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->p:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->saveSingleFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->q:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->getHomeFeeds()Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->saveSingleHomeFeeds(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->r:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->getPersonalFeeds()Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->saveSinglePersonalFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->s:Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->recordUploadingTL(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)Z

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->setRequestId(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u65b0\u751f\u6d3b\u5708\u6d88\u606fexcute "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u7c7b\u578b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->add(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)V

    .line 243
    return-object p0
.end method

.method public getFeedBriefInfo()Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->c:Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;

    return-object v0
.end method

.method public getFeeds()Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    return-object v0
.end method

.method public getHomeFeeds()Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;
    .locals 3

    .prologue
    .line 283
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;-><init>()V

    .line 284
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-wide v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->createTime:J

    iput-wide v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;->createTime:J

    .line 285
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;->clientFeedId:Ljava/lang/String;

    .line 286
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->feedId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;->feedId:Ljava/lang/String;

    .line 287
    return-object v0
.end method

.method public getPersonalFeeds()Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;
    .locals 3

    .prologue
    .line 291
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;-><init>()V

    .line 292
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-wide v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->createTime:J

    iput-wide v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;->createTime:J

    .line 293
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;->clientFeedId:Ljava/lang/String;

    .line 294
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->feedId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;->feedId:Ljava/lang/String;

    .line 295
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;->userid:Ljava/lang/String;

    .line 296
    return-object v0
.end method

.method public nirvana()Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->s:Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->recordUploadingTL(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)Z

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->p:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->updateSingleFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->q:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->getHomeFeeds()Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->updateSingleHomeFeeds(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->r:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->getPersonalFeeds()Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->updateSinglePersonalFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 251
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->add(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)V

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->setRequestId(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u751f\u6d3b\u5708\u6d88\u606f\u624b\u52a8\u91cd\u8bd5 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u7c7b\u578b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-object p0
.end method

.method public onFail()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    const/4 v1, 0x2

    iput v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->state:I

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->spreadRange:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->p:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->updateSingleFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->r:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->getPersonalFeeds()Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->updateSinglePersonalFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->q:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->getHomeFeeds()Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->updateSingleHomeFeeds(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->s:Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->deleteUploadingTL(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)Z

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->onFinish()V

    .line 207
    return-void
.end method

.method public onResourceUploaded()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u751f\u6d3b\u5708\u6d88\u606f "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u8d44\u6e90\u4e0a\u4f20\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iput-boolean v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->k:Z

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->mediacontent:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->c:Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;->mediaList:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->spreadRange:I

    if-eq v0, v4, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->p:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->updateSingleFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 187
    :cond_0
    return-void
.end method

.method public onSucceed()V
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->onFinish()V

    .line 227
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->state:I

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->spreadRange:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->p:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->updateSingleFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->r:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->getPersonalFeeds()Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->updateSinglePersonalFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->q:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->getHomeFeeds()Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->updateSingleHomeFeeds(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->s:Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->deleteUploadingTL(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)Z

    .line 226
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->onFinish()V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->p:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->saveSingleFeedWithOutNotify(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->r:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->getPersonalFeeds()Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->saveSinglePersonalFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    goto :goto_1
.end method

.method public sendMessage()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->getLifeCircleService()Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    move-result-object v1

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u751f\u6d3b\u5708\u6d88\u606f "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v5, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u5f00\u59cb\u53d1\u9001RPC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v2, Lcom/alipay/mcomment/biz/lfc/rpc/vo/NewsfeedAddReqVO;

    invoke-direct {v2}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/NewsfeedAddReqVO;-><init>()V

    .line 83
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->c:Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;

    iput-object v3, v2, Lcom/alipay/mcomment/biz/lfc/rpc/vo/NewsfeedAddReqVO;->newsfeed:Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;

    .line 84
    invoke-interface {v1, v2}, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;->publishNewsfeed(Lcom/alipay/mcomment/biz/lfc/rpc/vo/NewsfeedAddReqVO;)Lcom/alipay/mcomment/biz/lfc/rpc/vo/NewsfeedRespVO;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    const-string/jumbo v2, "100"

    iget-object v3, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/NewsfeedRespVO;->resultStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u751f\u6d3b\u5708\u6d88\u606f "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v5, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u53d1\u9001\u6d88\u606f\u6210\u529f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v3, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/NewsfeedRespVO;->serverId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->feedId:Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-wide v3, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/NewsfeedRespVO;->gmtCreate:J

    iput-wide v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->createTime:J

    .line 89
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-wide v3, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/NewsfeedRespVO;->gmtModify:J

    iput-wide v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->lastModifyTime:J

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    const/4 v2, 0x0

    iput v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->state:I

    .line 91
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->onSucceed()V

    .line 104
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u751f\u6d3b\u5708\u6d88\u606f "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u6d88\u606f\u53d1\u9001\u5931\u8d25\uff0c\u670d\u52a1\u5668\u62a5\u9519"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->onFail()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u751f\u6d3b\u5708\u6d88\u606f "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u7f51\u7edc\u5f02\u5e38\uff0c\u91cd\u8bd5\u53bb\u4e86"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->retry()V

    .line 104
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFeedBriefInfo(Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->c:Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;

    .line 75
    return-void
.end method

.method public setFeeds(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    .line 67
    return-void
.end method

.method public uploadResource()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->isDirectSend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return v2

    .line 111
    :cond_0
    const-string/jumbo v0, "image"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u751f\u6d3b\u5708\u6d88\u606f "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v5, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e0a\u4f20\u56fe\u7247\u5f00\u59cb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->getMultimediaImageService()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v5

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->onResourceUploaded()V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSrc()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "file:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v3

    :goto_2
    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->parseMediaInfoExt()Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;->getW()I

    move-result v4

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->parseMediaInfoExt()Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;->getH()I

    move-result v7

    invoke-static {v4, v7}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->isSuperHeight(II)I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v2, v11}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->uploadOriginalImage(Ljava/lang/String;ZLcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getCloudId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u751f\u6d3b\u5708\u6d88\u606f "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v8, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u6709\u4e00\u5f20\u56fe\u7247\u4e0a\u4f20\u5931\u8d25 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto/16 :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    new-instance v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;

    invoke-direct {v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;-><init>()V

    iput-boolean v2, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->isSync:Z

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSrc()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->path:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->uploadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v4

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v8, "SocialSdk_Sdk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\u751f\u6d3b\u5708\u6d88\u606f "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v10, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u56fe\u7247\u4e0a\u4f20\u6210\u529f "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSrc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getCloudId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->setSrc(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move v2, v3

    goto/16 :goto_0

    .line 113
    :cond_8
    const-string/jumbo v0, "video"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSrc()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    :goto_4
    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u751f\u6d3b\u5708\u6d88\u606f "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u89c6\u9891\u65e0\u9700\u4e0a\u4f20\uff0c\u76f4\u63a5\u53d1\u9001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u751f\u6d3b\u5708\u6d88\u606f "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v5, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\u4e0a\u4f20\u89c6\u9891\u5f00\u59cb "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->uploadShortVideoSync(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/video/APVideoUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoUploadRsp;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoUploadRsp;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u751f\u6d3b\u5708\u6d88\u606f "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\u4e0a\u4f20\u89c6\u9891\u5931\u8d25 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoUploadRsp;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->setSrc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/timeline/TLFeedRequest;->onResourceUploaded()V

    goto/16 :goto_0

    .line 116
    :cond_d
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseRequest;->uploadResource()Z

    move-result v2

    goto/16 :goto_0
.end method
