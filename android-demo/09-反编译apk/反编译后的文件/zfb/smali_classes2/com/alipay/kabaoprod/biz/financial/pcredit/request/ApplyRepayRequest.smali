.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/request/ApplyRepayRequest;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "ApplyRepayRequest.java"


# instance fields
.field public applyAmount:Ljava/lang/String;

.field public billNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplyAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/ApplyRepayRequest;->applyAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/ApplyRepayRequest;->billNo:Ljava/lang/String;

    return-object v0
.end method

.method public setApplyAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/ApplyRepayRequest;->applyAmount:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/ApplyRepayRequest;->billNo:Ljava/lang/String;

    .line 53
    return-void
.end method
