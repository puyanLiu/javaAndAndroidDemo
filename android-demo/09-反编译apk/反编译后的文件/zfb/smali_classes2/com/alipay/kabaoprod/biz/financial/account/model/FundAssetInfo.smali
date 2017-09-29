.class public Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "FundAssetInfo.java"


# instance fields
.field public freezeFund:Z

.field public hasFundAccount:Z

.field public opText:Ljava/lang/String;

.field public previousProfit:Ljava/lang/String;

.field public totalAmount:Ljava/lang/String;

.field public totalProfit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getOpText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->opText:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousProfit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->previousProfit:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->totalAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalProfit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->totalProfit:Ljava/lang/String;

    return-object v0
.end method

.method public isFreezeFund()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->freezeFund:Z

    return v0
.end method

.method public isHasFundAccount()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->hasFundAccount:Z

    return v0
.end method

.method public setFreezeFund(Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->freezeFund:Z

    .line 89
    return-void
.end method

.method public setHasFundAccount(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->hasFundAccount:Z

    .line 65
    return-void
.end method

.method public setOpText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->opText:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setPreviousProfit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->previousProfit:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setTotalAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->totalAmount:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTotalProfit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->totalProfit:Ljava/lang/String;

    .line 41
    return-void
.end method
