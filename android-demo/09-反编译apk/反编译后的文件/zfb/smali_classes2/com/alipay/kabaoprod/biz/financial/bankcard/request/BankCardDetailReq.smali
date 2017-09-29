.class public Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardDetailReq;
.super Ljava/lang/Object;
.source "BankCardDetailReq.java"


# instance fields
.field public cardIndexNo:Ljava/lang/String;

.field public cardType:Ljava/lang/String;

.field public instId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardIndexNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardDetailReq;->cardIndexNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardDetailReq;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getInstId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardDetailReq;->instId:Ljava/lang/String;

    return-object v0
.end method

.method public setCardIndexNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardDetailReq;->cardIndexNo:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardDetailReq;->cardType:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setInstId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardDetailReq;->instId:Ljava/lang/String;

    .line 73
    return-void
.end method
