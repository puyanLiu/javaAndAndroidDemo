.class public Lcom/alipay/kabaoprod/biz/financial/bankcard/request/CancelBankCardReq;
.super Ljava/lang/Object;
.source "CancelBankCardReq.java"


# instance fields
.field public agreementNo:Ljava/lang/String;

.field public cancelType:Ljava/lang/String;

.field public cardIndexNo:Ljava/lang/String;

.field public cardType:Ljava/lang/String;

.field public password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgreementNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/CancelBankCardReq;->agreementNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/CancelBankCardReq;->cancelType:Ljava/lang/String;

    return-object v0
.end method

.method public getCardIndexNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/CancelBankCardReq;->cardIndexNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/CancelBankCardReq;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/CancelBankCardReq;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setAgreementNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/CancelBankCardReq;->agreementNo:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setCancelType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/CancelBankCardReq;->cancelType:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCardIndexNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/CancelBankCardReq;->cardIndexNo:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/CancelBankCardReq;->cardType:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/CancelBankCardReq;->password:Ljava/lang/String;

    .line 104
    return-void
.end method
