.class public Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;
.super Ljava/lang/Object;
.source "FeedsDaoOp.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;


# instance fields
.field private final a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

.field private final d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private e:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private final f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 49
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    const-string/jumbo v2, "feeds"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    .line 53
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 54
    const-class v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 55
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->e:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 56
    return-void
.end method

.method private static a(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;Ljava/util/List;Ljava/util/List;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;"
        }
    .end annotation

    .prologue
    .line 297
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 298
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->accountInfo:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 299
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->accountInfo:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->userId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 300
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->accountInfo:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->loginId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->loginId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    if-eqz p1, :cond_0

    .line 304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 306
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 324
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->replyList:Ljava/util/ArrayList;

    .line 330
    iput-object v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->likeList:Ljava/util/ArrayList;

    .line 331
    iput-object v4, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->rewardList:Ljava/util/ArrayList;

    .line 333
    :cond_0
    return-object v1

    .line 307
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    .line 308
    iget-object v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->userId:Ljava/lang/String;

    iget-object v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->userLoginId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->toUserId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 310
    iget-object v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->toUserId:Ljava/lang/String;

    iget-object v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->toUserLoginId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_2
    iget v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->bizType:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 314
    :pswitch_0
    new-instance v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;

    invoke-direct {v6, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;)V

    .line 315
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :pswitch_1
    new-instance v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;

    invoke-direct {v6, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;)V

    .line 319
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :pswitch_2
    new-instance v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;

    invoke-direct {v6, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;)V

    .line 323
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->accountInfo:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 362
    if-eqz v0, :cond_0

    .line 363
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->accountInfo:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->replyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->replyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->replyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->likeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->likeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->likeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 393
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->rewardList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->rewardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->rewardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 403
    :cond_6
    return-void

    .line 366
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;

    .line 367
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-eqz v0, :cond_8

    .line 368
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 369
    if-eqz v0, :cond_8

    .line 370
    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 373
    :cond_8
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 375
    if-eqz v0, :cond_1

    .line 376
    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    goto :goto_0

    .line 383
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;

    .line 384
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-eqz v1, :cond_3

    .line 385
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 386
    if-eqz v1, :cond_3

    .line 387
    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    goto :goto_1

    .line 394
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;

    .line 395
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-eqz v1, :cond_5

    .line 396
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 397
    if-eqz v1, :cond_5

    .line 398
    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 339
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 340
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 341
    return-object v0
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;)Lcom/j256/ormlite/dao/Dao;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method


# virtual methods
.method public bindFeedListAndAccount(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u67e5\u8be2accountlist\u5f00\u59cb\uff1anum == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->e:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 350
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->queryAndLoadAccountBriefInfoForTl(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    .line 351
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_feedop"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u67e5\u8be2accountlist\u7ed3\u675f:num == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v2, "finish binddata"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;

    .line 354
    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public checkIsGood()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAllFailedFeed(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v2, " \u65e0\u53ef\u6e05\u9664\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->deleteFeeds(Ljava/util/List;)V

    .line 174
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    .line 175
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->deleteHomeFeeds(Ljava/util/List;)V

    .line 176
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    .line 177
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->deletePersonalFeeds(Ljava/util/List;)V

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " \u6e05\u7a7a\u6240\u6709\u53d1\u9001\u5931\u8d25\u7684\u52a8\u6001\u7ed3\u675f\uff0c\u6761\u6570\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteAllFeedById(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->deleteFeed(Ljava/lang/String;)V

    .line 407
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    .line 408
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->deleteFeed(Ljava/lang/String;)V

    .line 409
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    .line 410
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->deleteFeed(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public deleteFeed(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v2, "deleteFeed:\u6570\u636e\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I

    move-result v0

    .line 136
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    if-lez v0, :cond_0

    .line 140
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    const-string/jumbo v2, "feeds"

    const-string/jumbo v4, "clientFeedId"

    const/4 v5, 0x2

    move-object v3, p1

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_feedop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public deleteFeeds(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v2, "deleteFeed:\u6570\u636e\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->deleteIds(Ljava/util/Collection;)I

    .line 157
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_feedop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadFeedDataInfoList(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->loadFeedsByClientFeedsId(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 251
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    if-nez v0, :cond_0

    .line 253
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v5, "\u5f00\u59cb\u67e5\u8be2\u672c\u5730 feedData"

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->loadOptionsByFeedsId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v5, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v6, "\u5f00\u59cb\u7ec4\u5408\u6570\u636e"

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    if-nez v1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v3, " \u6ca1\u6709\u67e5\u8be2\u51fa\u7ed3\u679c"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 270
    :goto_0
    return-object v0

    .line 262
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v4, "\u5f00\u59cb\u67e5feed\u4e2d\u7684\u4eba\u6570\u636e"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-eqz p3, :cond_2

    .line 268
    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->bindFeedListAndAccount(Ljava/util/List;Ljava/util/List;)V

    :cond_2
    move-object v0, v2

    .line 270
    goto :goto_0

    .line 262
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    .line 263
    if-nez v4, :cond_4

    const/4 v0, 0x0

    .line 264
    :goto_2
    invoke-static {v1, v0, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;Ljava/util/List;Ljava/util/List;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    :cond_4
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->feedId:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_2
.end method

.method public loadFeedDataInfoListNoOptions(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->loadFeedsByClientFeedsId(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 280
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v4, "\u5f00\u59cb\u7ec4\u5408\u6570\u636e"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v3, " \u6ca1\u6709\u67e5\u8be2\u51fa\u7ed3\u679c"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 289
    :goto_0
    return-object v0

    .line 285
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 289
    goto :goto_0

    .line 285
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    .line 286
    new-instance v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V

    .line 287
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public loadFeedDetailInfoById(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;
    .locals 6

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->loadSingleFeed(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    if-nez v0, :cond_0

    .line 210
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->getOptionsByFeedId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;Ljava/util/List;Ljava/util/List;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->e:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 216
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->queryAndLoadAccountBriefInfoForTl(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_PersonalBase_timeline_feedop"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u67e5\u8be2accountlist\u7ed3\u675f:num == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;Ljava/util/Map;)V

    .line 223
    :cond_1
    return-object v0
.end method

.method public loadFeedsByClientFeedsId(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    const/4 v1, 0x0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v3, "createTime"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 191
    const-string/jumbo v3, "clientFeedId"

    invoke-virtual {v0, v3, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 192
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 193
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 201
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadFeedsByClientFeedsId:\u67e5\u8be2feeds"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-object v2

    .line 193
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    .line 194
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_PersonalBase_timeline_feedop"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_1

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 200
    throw v0
.end method

.method public loadSendFailedFeeds(ZLjava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 415
    const/4 v1, 0x0

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 419
    const-string/jumbo v3, "state"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "userId"

    invoke-virtual {v0, v3, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 420
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 421
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 424
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 432
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " \u67e5\u8be2\u53d1\u9001\u5931\u8d25feeds \u7ed3\u675f size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-object v2

    .line 421
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    .line 422
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    if-eqz p1, :cond_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_PersonalBase_timeline_feedop"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_1

    .line 429
    :catchall_0
    move-exception v0

    .line 430
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 431
    throw v0
.end method

.method public loadSingleFeed(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;
    .locals 4

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 229
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    .line 237
    :goto_0
    return-object v0

    .line 231
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "feedId"

    invoke-virtual {v0, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_PersonalBase_timeline_feedop"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public saveFeeds(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v2, "saveFeeds:\u6570\u636e\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/a;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/a;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 69
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_feedop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveSingleFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V
    .locals 7

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v2, "saveSingleFeed:\u6570\u636e\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 91
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    const-string/jumbo v2, "feeds"

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    const-string/jumbo v4, "clientFeedId"

    const/4 v5, 0x1

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_feedop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public saveSingleFeedWithOutNotify(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V
    .locals 3

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v2, "saveSingleFeed:\u6570\u636e\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 106
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_feedop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateSingleFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V
    .locals 7

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_feedop"

    const-string/jumbo v2, "updateSingleFeed:\u6570\u636e\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 120
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    const-string/jumbo v2, "feeds"

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    const-string/jumbo v4, "clientFeedId"

    const/4 v5, 0x3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_feedop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method
