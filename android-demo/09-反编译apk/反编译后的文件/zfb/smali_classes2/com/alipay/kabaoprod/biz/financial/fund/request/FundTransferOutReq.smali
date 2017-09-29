.class public Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "FundTransferOutReq.java"


# instance fields
.field public fundCode:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public transferOutAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getFundCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;->fundCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferOutAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;->transferOutAmount:Ljava/lang/String;

    return-object v0
.end method

.method public setFundCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;->fundCode:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;->password:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setTransferOutAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;->transferOutAmount:Ljava/lang/String;

    .line 53
    return-void
.end method
