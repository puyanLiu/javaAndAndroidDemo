.class public Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "AssetSignResult.java"


# instance fields
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

.field public markBank:Z

.field public markCredit:Z

.field public markFund:Z

.field public markMobile:Z

.field public markTravel:Z

.field public markVoucher:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markTravel:Z

    .line 49
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markBank:Z

    .line 61
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markCredit:Z

    .line 73
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markMobile:Z

    .line 85
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markVoucher:Z

    .line 97
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markFund:Z

    .line 30
    return-void
.end method


# virtual methods
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
    .line 116
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->contextMap:Ljava/util/Map;

    return-object v0
.end method

.method public isMarkBank()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markBank:Z

    return v0
.end method

.method public isMarkCredit()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markCredit:Z

    return v0
.end method

.method public isMarkFund()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markFund:Z

    return v0
.end method

.method public isMarkMobile()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markMobile:Z

    return v0
.end method

.method public isMarkTravel()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markTravel:Z

    return v0
.end method

.method public isMarkVoucher()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markVoucher:Z

    return v0
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
    .line 112
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->contextMap:Ljava/util/Map;

    .line 113
    return-void
.end method

.method public setMarkBank(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markBank:Z

    .line 53
    return-void
.end method

.method public setMarkCredit(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markCredit:Z

    .line 65
    return-void
.end method

.method public setMarkFund(Z)V
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markFund:Z

    .line 101
    return-void
.end method

.method public setMarkMobile(Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markMobile:Z

    .line 77
    return-void
.end method

.method public setMarkTravel(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markTravel:Z

    .line 41
    return-void
.end method

.method public setMarkVoucher(Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markVoucher:Z

    .line 89
    return-void
.end method
