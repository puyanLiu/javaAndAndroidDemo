.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditSignResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "PcreditSignResult.java"


# instance fields
.field public billingDate:Ljava/lang/String;

.field public creditAmount:Ljava/lang/String;

.field public investOrgName:Ljava/lang/String;

.field public repayDueDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBillingDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditSignResult;->billingDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditSignResult;->creditAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getInvestOrgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditSignResult;->investOrgName:Ljava/lang/String;

    return-object v0
.end method

.method public getRepayDueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditSignResult;->repayDueDate:Ljava/lang/String;

    return-object v0
.end method

.method public setBillingDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditSignResult;->billingDate:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setCreditAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditSignResult;->creditAmount:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setInvestOrgName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditSignResult;->investOrgName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setRepayDueDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditSignResult;->repayDueDate:Ljava/lang/String;

    .line 65
    return-void
.end method
