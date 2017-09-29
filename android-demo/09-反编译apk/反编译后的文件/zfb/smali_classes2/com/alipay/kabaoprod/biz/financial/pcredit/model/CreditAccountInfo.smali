.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "CreditAccountInfo.java"


# instance fields
.field public availableAmount:Ljava/lang/String;

.field public billAmount:Ljava/lang/String;

.field public billNo:Ljava/lang/String;

.field public billPeriodMonth:Ljava/lang/String;

.field public billPeriodYear:Ljava/lang/String;

.field public billingDate:Ljava/lang/String;

.field public creditAccount:Ljava/lang/String;

.field public creditAmount:Ljava/lang/String;

.field public currentBalance:Ljava/lang/String;

.field public dueDays:I

.field public prodId:Ljava/lang/String;

.field public repayDueDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->availableAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getBillAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->billAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->billNo:Ljava/lang/String;

    return-object v0
.end method

.method public getBillPeriodMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->billPeriodMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getBillPeriodYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->billPeriodYear:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->billingDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->creditAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->creditAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->currentBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getDueDays()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->dueDays:I

    return v0
.end method

.method public getProdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->prodId:Ljava/lang/String;

    return-object v0
.end method

.method public getRepayDueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->repayDueDate:Ljava/lang/String;

    return-object v0
.end method

.method public setAvailableAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->availableAmount:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setBillAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->billAmount:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->billNo:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setBillPeriodMonth(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->billPeriodMonth:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setBillPeriodYear(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->billPeriodYear:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setBillingDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->billingDate:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setCreditAccount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->creditAccount:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setCreditAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->creditAmount:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setCurrentBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->currentBalance:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setDueDays(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->dueDays:I

    .line 113
    return-void
.end method

.method public setProdId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->prodId:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setRepayDueDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;->repayDueDate:Ljava/lang/String;

    .line 101
    return-void
.end method
