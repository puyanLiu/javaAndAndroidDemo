.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/TotalFundAssetsResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "TotalFundAssetsResult.java"


# instance fields
.field public fundCode:Ljava/lang/String;

.field public fundOperationText:Ljava/lang/String;

.field public hasFundAccount:Z

.field public instCode:Ljava/lang/String;

.field public totalAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getFundCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/TotalFundAssetsResult;->fundCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFundOperationText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/TotalFundAssetsResult;->fundOperationText:Ljava/lang/String;

    return-object v0
.end method

.method public getInstCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/TotalFundAssetsResult;->instCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/TotalFundAssetsResult;->totalAmount:Ljava/lang/String;

    return-object v0
.end method

.method public isHasFundAccount()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/TotalFundAssetsResult;->hasFundAccount:Z

    return v0
.end method

.method public setFundCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/TotalFundAssetsResult;->fundCode:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setFundOperationText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/TotalFundAssetsResult;->fundOperationText:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setHasFundAccount(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/TotalFundAssetsResult;->hasFundAccount:Z

    .line 41
    return-void
.end method

.method public setInstCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/TotalFundAssetsResult;->instCode:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTotalAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/TotalFundAssetsResult;->totalAmount:Ljava/lang/String;

    .line 53
    return-void
.end method
