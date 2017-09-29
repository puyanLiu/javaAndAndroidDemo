.class public Lcom/alipay/mcomment/common/service/facade/model/LiveShowDetailInfo;
.super Lcom/alipay/mcomment/common/service/facade/model/LiveShowInfo;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public discount:Lcom/alipay/mcomment/common/service/facade/model/ActivityDiscountBriefInfo;

.field public feedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/NewsfeedBriefInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mcomment/common/service/facade/model/LiveShowInfo;-><init>()V

    return-void
.end method
