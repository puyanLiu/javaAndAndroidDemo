.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "PcreditBillStatement.java"


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

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->oldBill:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getBillAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billNo:Ljava/lang/String;

    return-object v0
.end method

.method public getBillPeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billingDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->dueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentCount()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->paymentCount:I

    return v0
.end method

.method public getRepayedAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->repayedAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalRepayAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->totalRepayAmount:Ljava/lang/String;

    return-object v0
.end method

.method public isOldBill()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->oldBill:Z

    return v0
.end method

.method public setBillAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billAmount:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billNo:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setBillPeriod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billPeriod:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setBillingDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billingDate:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setDueDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->dueDate:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setOldBill(Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->oldBill:Z

    .line 137
    return-void
.end method

.method public setPaymentCount(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->paymentCount:I

    .line 113
    return-void
.end method

.method public setRepayedAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->repayedAmount:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setTotalRepayAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->totalRepayAmount:Ljava/lang/String;

    .line 77
    return-void
.end method
