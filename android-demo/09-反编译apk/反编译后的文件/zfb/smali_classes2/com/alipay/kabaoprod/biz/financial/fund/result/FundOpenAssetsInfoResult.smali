.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "FundOpenAssetsInfoResult.java"


# instance fields
.field public account:Ljava/lang/String;

.field public certNo:Ljava/lang/String;

.field public fundInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getCertNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->certNo:Ljava/lang/String;

    return-object v0
.end method

.method public getFundInfo()Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->fundInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->account:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setCertNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->certNo:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setFundInfo(Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->fundInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;

    .line 42
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->userName:Ljava/lang/String;

    .line 66
    return-void
.end method
