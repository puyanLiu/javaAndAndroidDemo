.class public Lcom/alipay/kabaoprod/core/model/model/BankCard;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "BankCard.java"


# instance fields
.field public agreementNo:Ljava/lang/String;

.field public applyTime:Ljava/lang/String;

.field public cardIndexNo:Ljava/lang/String;

.field public cardNoLast4:Ljava/lang/String;

.field public cardType:Ljava/lang/String;

.field public enableApplyFP:Z

.field public enableDelete:Z

.field public extraInfo:Ljava/util/Map;
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

.field public hasBill:Z

.field public holderName:Ljava/lang/String;

.field public instId:Ljava/lang/String;

.field public instLogUrl:Ljava/lang/String;

.field public instMark:Ljava/lang/String;

.field public instName:Ljava/lang/String;

.field public isOwner:Z

.field public signId:Ljava/lang/String;

.field public sourceChannel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    .line 233
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->enableApplyFP:Z

    .line 245
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->enableDelete:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getAgreementNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->agreementNo:Ljava/lang/String;

    return-object v0
.end method

.method public getApplyTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->applyTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCardIndexNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->cardIndexNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNoLast4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->cardNoLast4:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/util/Map;
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
    .line 228
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->extraInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getHolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->holderName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstLogUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instLogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInstMark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instMark:Ljava/lang/String;

    return-object v0
.end method

.method public getInstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->signId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->sourceChannel:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableApplyFP()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->enableApplyFP:Z

    return v0
.end method

.method public isEnableDelete()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->enableDelete:Z

    return v0
.end method

.method public isHasBill()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->hasBill:Z

    return v0
.end method

.method public isOwner()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->isOwner:Z

    return v0
.end method

.method public setAgreementNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->agreementNo:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setApplyTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->applyTime:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setCardIndexNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->cardIndexNo:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setCardNoLast4(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->cardNoLast4:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->cardType:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setEnableApplyFP(Z)V
    .locals 0

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->enableApplyFP:Z

    .line 237
    return-void
.end method

.method public setEnableDelete(Z)V
    .locals 0

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->enableDelete:Z

    .line 249
    return-void
.end method

.method public setExtraInfo(Ljava/util/Map;)V
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
    .line 224
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->extraInfo:Ljava/util/Map;

    .line 225
    return-void
.end method

.method public setHasBill(Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->hasBill:Z

    .line 201
    return-void
.end method

.method public setHolderName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->holderName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setInstId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instId:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setInstLogUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instLogUrl:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setInstMark(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instMark:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setInstName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instName:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setOwner(Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->isOwner:Z

    .line 189
    return-void
.end method

.method public setSignId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->signId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSourceChannel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->sourceChannel:Ljava/lang/String;

    .line 129
    return-void
.end method
