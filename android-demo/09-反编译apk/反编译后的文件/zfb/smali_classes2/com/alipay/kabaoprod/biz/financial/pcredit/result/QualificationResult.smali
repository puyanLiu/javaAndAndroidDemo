.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "QualificationResult.java"


# instance fields
.field public agreementUrl:Ljava/lang/String;

.field public billingDate:Ljava/lang/String;

.field public creditAmount:Ljava/lang/String;

.field public repayDueDate:Ljava/lang/String;

.field public signMemos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgreementUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->agreementUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->billingDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->creditAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getRepayDueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->repayDueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSignMemos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->signMemos:Ljava/util/List;

    return-object v0
.end method

.method public setAgreementUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->agreementUrl:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setBillingDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->billingDate:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setCreditAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->creditAmount:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setRepayDueDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->repayDueDate:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setSignMemos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->signMemos:Ljava/util/List;

    .line 41
    return-void
.end method
