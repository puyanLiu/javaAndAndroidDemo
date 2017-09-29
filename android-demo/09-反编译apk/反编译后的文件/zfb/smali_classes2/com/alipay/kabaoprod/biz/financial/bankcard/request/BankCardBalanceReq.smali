.class public Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardBalanceReq;
.super Ljava/lang/Object;
.source "BankCardBalanceReq.java"


# instance fields
.field public password:Ljava/lang/String;

.field public signId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardBalanceReq;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSignId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardBalanceReq;->signId:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardBalanceReq;->password:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSignId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardBalanceReq;->signId:Ljava/lang/String;

    .line 52
    return-void
.end method
