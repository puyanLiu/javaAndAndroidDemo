.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/result/CheckSignResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "CheckSignResult.java"


# instance fields
.field public hasSign:Z

.field public opText:Ljava/lang/String;

.field public repayAmount:Ljava/lang/String;

.field public signStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getOpText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/CheckSignResult;->opText:Ljava/lang/String;

    return-object v0
.end method

.method public getRepayAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/CheckSignResult;->repayAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getSignStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/CheckSignResult;->signStatus:Ljava/lang/String;

    return-object v0
.end method

.method public isHasSign()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/CheckSignResult;->hasSign:Z

    return v0
.end method

.method public setHasSign(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/CheckSignResult;->hasSign:Z

    .line 41
    return-void
.end method

.method public setOpText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/CheckSignResult;->opText:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setRepayAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/CheckSignResult;->repayAmount:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSignStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/CheckSignResult;->signStatus:Ljava/lang/String;

    .line 53
    return-void
.end method
