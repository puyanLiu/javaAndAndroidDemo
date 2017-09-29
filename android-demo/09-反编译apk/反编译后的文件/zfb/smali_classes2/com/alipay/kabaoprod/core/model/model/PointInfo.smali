.class public Lcom/alipay/kabaoprod/core/model/model/PointInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "PointInfo.java"


# instance fields
.field public pointName:Ljava/lang/String;

.field public subTransCode:Ljava/lang/String;

.field public tradeNo:Ljava/lang/String;

.field public transAmount:Ljava/lang/String;

.field public transDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getPointName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PointInfo;->pointName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTransCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PointInfo;->subTransCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PointInfo;->tradeNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTransAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PointInfo;->transAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTransDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PointInfo;->transDate:Ljava/lang/String;

    return-object v0
.end method

.method public setPointName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PointInfo;->pointName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSubTransCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PointInfo;->subTransCode:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setTradeNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PointInfo;->tradeNo:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTransAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PointInfo;->transAmount:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setTransDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PointInfo;->transDate:Ljava/lang/String;

    .line 53
    return-void
.end method
