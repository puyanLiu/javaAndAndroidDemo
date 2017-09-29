.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundLuckDrawInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "FundLuckDrawInfoResult.java"


# instance fields
.field public point:Ljava/lang/String;

.field public prizeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundLuckDrawInfoResult;->point:Ljava/lang/String;

    return-object v0
.end method

.method public getPrizeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundLuckDrawInfoResult;->prizeName:Ljava/lang/String;

    return-object v0
.end method

.method public setPoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundLuckDrawInfoResult;->point:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setPrizeName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundLuckDrawInfoResult;->prizeName:Ljava/lang/String;

    .line 53
    return-void
.end method
