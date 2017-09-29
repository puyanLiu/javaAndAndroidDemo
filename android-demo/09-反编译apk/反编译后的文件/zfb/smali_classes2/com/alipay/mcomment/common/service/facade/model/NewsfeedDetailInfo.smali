.class public Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;
.super Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public commentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/NewsfeedReplyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public praiseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/NewsfeedPraiseInfo;",
            ">;"
        }
    .end annotation
.end field

.field public rewardNum:I

.field public rewardsInLC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/RewardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public totalRewards:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;-><init>()V

    return-void
.end method
