.class public Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalHomeViewRespVO;
.super Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public flush:Z

.field public hasMore:Z

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

.field public personalConfig:Lcom/alipay/mcomment/common/service/facade/model/PersonalConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseRespVO;-><init>()V

    return-void
.end method
