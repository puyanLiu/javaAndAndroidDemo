.class public Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "UserAccountInfoResult.java"


# instance fields
.field public availableBalance:D

.field public bindingMobileNo:Ljava/lang/String;

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

.field public couponNums:I

.field public pointNums:I

.field public queryCoupon:Z

.field public showCreditScore:Z

.field public userAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    .line 88
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->queryCoupon:Z

    .line 124
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->showCreditScore:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getAvailableBalance()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->availableBalance:D

    return-wide v0
.end method

.method public getBindingMobileNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->bindingMobileNo:Ljava/lang/String;

    return-object v0
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
    .line 119
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->contextMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCouponNums()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->couponNums:I

    return v0
.end method

.method public getPointNums()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->pointNums:I

    return v0
.end method

.method public getUserAssetInfo()Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->userAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;

    return-object v0
.end method

.method public isQueryCoupon()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->queryCoupon:Z

    return v0
.end method

.method public isShowCreditScore()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->showCreditScore:Z

    return v0
.end method

.method public setAvailableBalance(D)V
    .locals 0

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->availableBalance:D

    .line 54
    return-void
.end method

.method public setBindingMobileNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->bindingMobileNo:Ljava/lang/String;

    .line 42
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
    .line 115
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->contextMap:Ljava/util/Map;

    .line 116
    return-void
.end method

.method public setCouponNums(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->couponNums:I

    .line 78
    return-void
.end method

.method public setPointNums(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->pointNums:I

    .line 66
    return-void
.end method

.method public setQueryCoupon(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->queryCoupon:Z

    .line 92
    return-void
.end method

.method public setShowCreditScore(Z)V
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->showCreditScore:Z

    .line 128
    return-void
.end method

.method public setUserAssetInfo(Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->userAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;

    .line 104
    return-void
.end method
