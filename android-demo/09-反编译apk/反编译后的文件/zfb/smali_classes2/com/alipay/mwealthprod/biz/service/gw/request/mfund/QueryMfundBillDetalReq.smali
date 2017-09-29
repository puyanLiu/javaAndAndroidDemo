.class public Lcom/alipay/mwealthprod/biz/service/gw/request/mfund/QueryMfundBillDetalReq;
.super Lcom/alipay/mwealthprod/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public billNo:Ljava/lang/String;

.field public serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mwealthprod/common/service/facade/util/ToString;-><init>()V

    const-string/jumbo v0, "alipay.wealth.mfund.bill.detail"

    iput-object v0, p0, Lcom/alipay/mwealthprod/biz/service/gw/request/mfund/QueryMfundBillDetalReq;->serviceName:Ljava/lang/String;

    return-void
.end method
