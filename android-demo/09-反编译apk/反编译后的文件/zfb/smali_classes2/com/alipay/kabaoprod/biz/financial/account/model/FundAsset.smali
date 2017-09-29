.class public Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "FundAsset.java"


# instance fields
.field public fundAvailableQuotient:Ljava/lang/String;

.field public fundTotalAmount:Ljava/lang/String;

.field public fundTotalFreezeShare:Ljava/lang/String;

.field public fundTotalProfit:Ljava/lang/String;

.field public fundTotalUseShare:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getFundAvailableQuotient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;->fundAvailableQuotient:Ljava/lang/String;

    return-object v0
.end method

.method public getFundTotalAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;->fundTotalAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getFundTotalFreezeShare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;->fundTotalFreezeShare:Ljava/lang/String;

    return-object v0
.end method

.method public getFundTotalProfit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;->fundTotalProfit:Ljava/lang/String;

    return-object v0
.end method

.method public getFundTotalUseShare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;->fundTotalUseShare:Ljava/lang/String;

    return-object v0
.end method

.method public setFundAvailableQuotient(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;->fundAvailableQuotient:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setFundTotalAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;->fundTotalAmount:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setFundTotalFreezeShare(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;->fundTotalFreezeShare:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setFundTotalProfit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;->fundTotalProfit:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setFundTotalUseShare(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;->fundTotalUseShare:Ljava/lang/String;

    .line 53
    return-void
.end method
