.class public Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "AssetFinanceInfoResult.java"


# instance fields
.field public bankAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;

.field public cardCount:I

.field public contextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public freezeBank:Z

.field public freezeCredit:Z

.field public fundAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;

.field public hiddenBank:Z

.field public hiddenCredit:Z

.field public hiddenFund:Z

.field public markBank:Z

.field public markCredit:Z

.field public markFund:Z

.field public pcreditAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankAssetInfo()Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->bankAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;

    return-object v0
.end method

.method public getCardCount()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->cardCount:I

    return v0
.end method

.method public getContextMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->contextMap:Ljava/util/Map;

    return-object v0
.end method

.method public getFundAssetInfo()Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->fundAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;

    return-object v0
.end method

.method public getPcreditAssetInfo()Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->pcreditAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;

    return-object v0
.end method

.method public isFreezeBank()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->freezeBank:Z

    return v0
.end method

.method public isFreezeCredit()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->freezeCredit:Z

    return v0
.end method

.method public isHiddenBank()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->hiddenBank:Z

    return v0
.end method

.method public isHiddenCredit()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->hiddenCredit:Z

    return v0
.end method

.method public isHiddenFund()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->hiddenFund:Z

    return v0
.end method

.method public isMarkBank()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->markBank:Z

    return v0
.end method

.method public isMarkCredit()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->markCredit:Z

    return v0
.end method

.method public isMarkFund()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->markFund:Z

    return v0
.end method

.method public setBankAssetInfo(Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->bankAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;

    .line 92
    return-void
.end method

.method public setCardCount(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->cardCount:I

    .line 44
    return-void
.end method

.method public setContextMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->contextMap:Ljava/util/Map;

    .line 152
    return-void
.end method

.method public setFreezeBank(Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->freezeBank:Z

    .line 68
    return-void
.end method

.method public setFreezeCredit(Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->freezeCredit:Z

    .line 116
    return-void
.end method

.method public setFundAssetInfo(Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->fundAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;

    .line 164
    return-void
.end method

.method public setHiddenBank(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->hiddenBank:Z

    .line 80
    return-void
.end method

.method public setHiddenCredit(Z)V
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->hiddenCredit:Z

    .line 128
    return-void
.end method

.method public setHiddenFund(Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->hiddenFund:Z

    .line 176
    return-void
.end method

.method public setMarkBank(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->markBank:Z

    .line 56
    return-void
.end method

.method public setMarkCredit(Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->markCredit:Z

    .line 104
    return-void
.end method

.method public setMarkFund(Z)V
    .locals 0

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->markFund:Z

    .line 188
    return-void
.end method

.method public setPcreditAssetInfo(Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->pcreditAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;

    .line 140
    return-void
.end method
