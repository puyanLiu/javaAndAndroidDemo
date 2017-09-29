.class public Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/ProfitRateQueryReq;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public pageCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/ProfitRateQueryReq;->pageCount:I

    return-void
.end method
