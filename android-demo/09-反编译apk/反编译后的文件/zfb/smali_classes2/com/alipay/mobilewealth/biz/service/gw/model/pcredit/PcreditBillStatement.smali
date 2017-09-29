.class public Lcom/alipay/mobilewealth/biz/service/gw/model/pcredit/PcreditBillStatement;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public billAmount:Ljava/lang/String;

.field public billNo:Ljava/lang/String;

.field public billPeriod:Ljava/lang/String;

.field public billingDate:Ljava/lang/String;

.field public dueDate:Ljava/lang/String;

.field public oldBill:Z

.field public paymentCount:I

.field public repayedAmount:Ljava/lang/String;

.field public totalRepayAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/model/pcredit/PcreditBillStatement;->oldBill:Z

    return-void
.end method
