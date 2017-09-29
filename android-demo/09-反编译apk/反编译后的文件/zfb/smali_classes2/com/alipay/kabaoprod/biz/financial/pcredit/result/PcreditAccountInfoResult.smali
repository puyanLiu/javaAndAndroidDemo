.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditAccountInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "PcreditAccountInfoResult.java"


# instance fields
.field public creditAccountInfo:Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreditAccountInfo()Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditAccountInfoResult;->creditAccountInfo:Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;

    return-object v0
.end method

.method public setCreditAccountInfo(Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditAccountInfoResult;->creditAccountInfo:Lcom/alipay/kabaoprod/biz/financial/pcredit/model/CreditAccountInfo;

    .line 42
    return-void
.end method
