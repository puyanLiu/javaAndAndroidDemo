.class public Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "AssetAccountInfoResult.java"


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

.field public freezePhone:Z

.field public freezeTravel:Z

.field public freezeVoucher:Z

.field public hiddenPhone:Z

.field public hiddenTravel:Z

.field public hiddenVoucher:Z

.field public isShowRefreshBtn:Z

.field public markPhone:Z

.field public markTravel:Z

.field public markVoucher:Z

.field public phoneTitle:Ljava/lang/String;

.field public totalAmount:D

.field public travelTitle:Ljava/lang/String;

.field public voucherTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markTravel:Z

    .line 97
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezeTravel:Z

    .line 109
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenTravel:Z

    .line 133
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markVoucher:Z

    .line 145
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezeVoucher:Z

    .line 157
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenVoucher:Z

    .line 181
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markPhone:Z

    .line 193
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezePhone:Z

    .line 205
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenPhone:Z

    .line 217
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->isShowRefreshBtn:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getAvailableBalance()D
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->availableBalance:D

    return-wide v0
.end method

.method public getBindingMobileNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->bindingMobileNo:Ljava/lang/String;

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
    .line 236
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->contextMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPhoneTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->phoneTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAmount()D
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->totalAmount:D

    return-wide v0
.end method

.method public getTravelTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->travelTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->voucherTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isFreezePhone()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezePhone:Z

    return v0
.end method

.method public isFreezeTravel()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezeTravel:Z

    return v0
.end method

.method public isFreezeVoucher()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezeVoucher:Z

    return v0
.end method

.method public isHiddenPhone()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenPhone:Z

    return v0
.end method

.method public isHiddenTravel()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenTravel:Z

    return v0
.end method

.method public isHiddenVoucher()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenVoucher:Z

    return v0
.end method

.method public isMarkPhone()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markPhone:Z

    return v0
.end method

.method public isMarkTravel()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markTravel:Z

    return v0
.end method

.method public isMarkVoucher()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markVoucher:Z

    return v0
.end method

.method public isShowRefreshBtn()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->isShowRefreshBtn:Z

    return v0
.end method

.method public setAvailableBalance(D)V
    .locals 0

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->availableBalance:D

    .line 41
    return-void
.end method

.method public setBindingMobileNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->bindingMobileNo:Ljava/lang/String;

    .line 65
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
    .line 232
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->contextMap:Ljava/util/Map;

    .line 233
    return-void
.end method

.method public setFreezePhone(Z)V
    .locals 0

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezePhone:Z

    .line 197
    return-void
.end method

.method public setFreezeTravel(Z)V
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezeTravel:Z

    .line 101
    return-void
.end method

.method public setFreezeVoucher(Z)V
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezeVoucher:Z

    .line 149
    return-void
.end method

.method public setHiddenPhone(Z)V
    .locals 0

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenPhone:Z

    .line 209
    return-void
.end method

.method public setHiddenTravel(Z)V
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenTravel:Z

    .line 113
    return-void
.end method

.method public setHiddenVoucher(Z)V
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenVoucher:Z

    .line 161
    return-void
.end method

.method public setMarkPhone(Z)V
    .locals 0

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markPhone:Z

    .line 185
    return-void
.end method

.method public setMarkTravel(Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markTravel:Z

    .line 89
    return-void
.end method

.method public setMarkVoucher(Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markVoucher:Z

    .line 137
    return-void
.end method

.method public setPhoneTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->phoneTitle:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setShowRefreshBtn(Z)V
    .locals 0

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->isShowRefreshBtn:Z

    .line 221
    return-void
.end method

.method public setTotalAmount(D)V
    .locals 0

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->totalAmount:D

    .line 53
    return-void
.end method

.method public setTravelTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->travelTitle:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setVoucherTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->voucherTitle:Ljava/lang/String;

    .line 125
    return-void
.end method
