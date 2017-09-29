.class public Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundQueryBillDetailReq;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public billNo:Ljava/lang/String;

.field public filterCodition:Ljava/lang/String;

.field public serviceName:Ljava/lang/String;

.field public subTransCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    const-string/jumbo v0, "alipay.wealth.mfund.bill.detail"

    iput-object v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundQueryBillDetailReq;->serviceName:Ljava/lang/String;

    return-void
.end method
