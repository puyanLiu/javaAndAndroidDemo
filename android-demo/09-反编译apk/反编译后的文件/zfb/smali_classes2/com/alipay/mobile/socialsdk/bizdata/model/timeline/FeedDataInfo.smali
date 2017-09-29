.class public Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;
.super Ljava/lang/Object;
.source "FeedDataInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2aed56c550919c4aL


# instance fields
.field public accountInfo:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

.field public collapseState:I

.field public feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

.field public likeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public replyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public rewardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->collapseState:I

    .line 39
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->buildFeedDataInfo(Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->collapseState:I

    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->parseMediaList()V

    .line 36
    return-void
.end method

.method private buildFeedDataInfo(Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;)V
    .locals 5

    .prologue
    .line 49
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->newsfeedId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->feedId:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->clientFeedId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->type:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->userId:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->mediaList:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->mediacontent:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->state:I

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-wide v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->createTime:J

    iput-wide v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->createTime:J

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-wide v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->modifyTime:J

    iput-wide v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->lastModifyTime:J

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->loginId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->loginId:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->rewardNum:I

    iput v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->rewardNum:I

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->totalRewards:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->totalRewards:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->aid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->sceneId:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->activityName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->sceneTitle:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->activityAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->sceneAddress:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->text:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->spreadRange:I

    iput v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->spreadRange:I

    .line 67
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->accountInfo:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->accountInfo:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->commentList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->commentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->replyList:Ljava/util/ArrayList;

    .line 72
    iget-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->commentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 92
    :cond_0
    iget-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->praiseList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->praiseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->likeList:Ljava/util/ArrayList;

    .line 94
    iget-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->praiseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 107
    :cond_1
    iget-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->rewardsInLC:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->rewardsInLC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->rewardList:Ljava/util/ArrayList;

    .line 109
    iget-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->rewardsInLC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 122
    :cond_2
    return-void

    .line 72
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedReplyInfo;

    .line 73
    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;-><init>()V

    .line 74
    iget-object v3, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedReplyInfo;->replyClientId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->clientOptionId:Ljava/lang/String;

    .line 75
    iget-object v3, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedReplyInfo;->replyId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->optionId:Ljava/lang/String;

    .line 76
    new-instance v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 77
    iget-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v4, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedReplyInfo;->userId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 78
    iget-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v4, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedReplyInfo;->logonId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 79
    iget-object v3, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedReplyInfo;->parentReplyUserId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 80
    new-instance v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 81
    iget-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v4, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedReplyInfo;->parentReplyUserId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 82
    iget-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v4, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedReplyInfo;->parentReplyLogonId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 84
    :cond_4
    iget-object v3, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->newsfeedId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->feedId:Ljava/lang/String;

    .line 85
    iget-object v3, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedReplyInfo;->content:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->commentMsg:Ljava/lang/String;

    .line 86
    iget-wide v3, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedReplyInfo;->gmtCreate:J

    iput-wide v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->createTime:J

    .line 87
    iget-wide v3, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedReplyInfo;->gmtModify:J

    iput-wide v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->lastModifyTime:J

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->replyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 94
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedPraiseInfo;

    .line 95
    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;-><init>()V

    .line 96
    iget-object v3, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedPraiseInfo;->praiseClientId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->clientOptionId:Ljava/lang/String;

    .line 97
    iget-object v3, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedPraiseInfo;->praiseId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->optionId:Ljava/lang/String;

    .line 98
    new-instance v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 99
    iget-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v4, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedPraiseInfo;->userId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 100
    iget-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v4, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedPraiseInfo;->logonId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 101
    iget-object v3, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->newsfeedId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->feedId:Ljava/lang/String;

    .line 102
    iget-wide v3, v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedPraiseInfo;->createTime:J

    iput-wide v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->createTime:J

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->likeList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 109
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/common/service/facade/model/RewardInfo;

    .line 110
    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;-><init>()V

    .line 111
    iget-object v3, v0, Lcom/alipay/mcomment/common/service/facade/model/RewardInfo;->clientId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->clientOptionId:Ljava/lang/String;

    .line 112
    iget-object v3, v0, Lcom/alipay/mcomment/common/service/facade/model/RewardInfo;->rewardId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->optionId:Ljava/lang/String;

    .line 113
    new-instance v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 114
    iget-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v4, v0, Lcom/alipay/mcomment/common/service/facade/model/RewardInfo;->userId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 115
    iget-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v4, v0, Lcom/alipay/mcomment/common/service/facade/model/RewardInfo;->logonId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 116
    iget-object v3, p1, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;->newsfeedId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->feedId:Ljava/lang/String;

    .line 117
    iget-object v3, v0, Lcom/alipay/mcomment/common/service/facade/model/RewardInfo;->timeResp:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->createTime:J

    .line 118
    iget-object v0, v0, Lcom/alipay/mcomment/common/service/facade/model/RewardInfo;->rewardMoney:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->rwAmount:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->rewardList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 126
    if-ne p0, p1, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    .line 130
    :cond_0
    if-nez p1, :cond_1

    .line 131
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    check-cast p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 138
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 147
    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->hashCode()I

    move-result v0

    goto :goto_0
.end method
