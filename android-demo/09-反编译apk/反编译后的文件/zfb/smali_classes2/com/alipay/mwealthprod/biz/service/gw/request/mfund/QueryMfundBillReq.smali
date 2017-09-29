.class public Lcom/alipay/mwealthprod/biz/service/gw/request/mfund/QueryMfundBillReq;
.super Lcom/alipay/mobilewealth/common/service/facade/req/BaseUniformProdReq;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public currentPage:I

.field public pageSize:I

.field public serviceName:Ljava/lang/String;

.field public transType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/req/BaseUniformProdReq;-><init>()V

    const-string/jumbo v0, "alipay.wealth.mfund.bill.query"

    iput-object v0, p0, Lcom/alipay/mwealthprod/biz/service/gw/request/mfund/QueryMfundBillReq;->serviceName:Ljava/lang/String;

    return-void
.end method
