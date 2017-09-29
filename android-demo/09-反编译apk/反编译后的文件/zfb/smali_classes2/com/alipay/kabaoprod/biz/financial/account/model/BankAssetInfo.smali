.class public Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;
.super Ljava/lang/Object;
.source "BankAssetInfo.java"


# instance fields
.field public cardCount:Ljava/lang/String;

.field public hasBankCard:Z

.field public opText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;->cardCount:Ljava/lang/String;

    return-object v0
.end method

.method public getOpText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;->opText:Ljava/lang/String;

    return-object v0
.end method

.method public isHasBankCard()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;->hasBankCard:Z

    return v0
.end method

.method public setCardCount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;->cardCount:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setHasBankCard(Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;->hasBankCard:Z

    .line 40
    return-void
.end method

.method public setOpText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;->opText:Ljava/lang/String;

    .line 52
    return-void
.end method
