.class public Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "AccountAsset.java"


# instance fields
.field public availableAmount:Ljava/lang/String;

.field public balance:Ljava/lang/String;

.field public creditAmount:Ljava/lang/String;

.field public ctuAmount:Ljava/lang/String;

.field public depositAmount:Ljava/lang/String;

.field public freezeAmount:Ljava/lang/String;

.field public systemAmount:Ljava/lang/String;

.field public uncertifiedFreezeAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->availableAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->creditAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getCtuAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->ctuAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getDepositAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->depositAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getFreezeAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->freezeAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->systemAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getUncertifiedFreezeAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->uncertifiedFreezeAmount:Ljava/lang/String;

    return-object v0
.end method

.method public setAvailableAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->availableAmount:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->balance:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setCreditAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->creditAmount:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setCtuAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->ctuAmount:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setDepositAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->depositAmount:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setFreezeAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->freezeAmount:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setSystemAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->systemAmount:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setUncertifiedFreezeAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;->uncertifiedFreezeAmount:Ljava/lang/String;

    .line 105
    return-void
.end method
