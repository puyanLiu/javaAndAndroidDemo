.class public Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewRespVO;
.super Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;",
            ">;"
        }
    .end annotation
.end field

.field public flush:Z

.field public hasMore:Z

.field public hasMoreLive:Z

.field public newsfeedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseRespVO;-><init>()V

    return-void
.end method
