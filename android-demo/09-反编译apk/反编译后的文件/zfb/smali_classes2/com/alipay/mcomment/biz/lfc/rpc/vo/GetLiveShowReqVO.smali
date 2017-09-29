.class public Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetLiveShowReqVO;
.super Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public liveShowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/LiveShowInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseReqVO;-><init>()V

    return-void
.end method
