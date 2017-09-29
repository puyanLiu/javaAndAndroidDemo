.class public Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "PcreditAssetInfo.java"


# instance fields
.field public hasPcreditAccount:Z

.field public opText:Ljava/lang/String;

.field public settledBalance:Ljava/lang/String;

.field public signStatus:Ljava/lang/String;


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
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;->opText:Ljava/lang/String;

    return-object v0
.end method

.method public getSettledBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;->settledBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getSignStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;->signStatus:Ljava/lang/String;

    return-object v0
.end method

.method public isHasPcreditAccount()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;->hasPcreditAccount:Z

    return v0
.end method

.method public setHasPcreditAccount(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;->hasPcreditAccount:Z

    .line 41
    return-void
.end method

.method public setOpText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;->opText:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSettledBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;->settledBalance:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setSignStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;->signStatus:Ljava/lang/String;

    .line 53
    return-void
.end method
