.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyTransferToAmountResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "FundApplyTransferToAmountResult.java"


# instance fields
.field public canTransferOutAmount:Ljava/lang/String;

.field public quotaContent:Ljava/lang/String;

.field public totalAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCanTransferOutAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyTransferToAmountResult;->canTransferOutAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotaContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyTransferToAmountResult;->quotaContent:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyTransferToAmountResult;->totalAmount:Ljava/lang/String;

    return-object v0
.end method

.method public setCanTransferOutAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyTransferToAmountResult;->canTransferOutAmount:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setQuotaContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyTransferToAmountResult;->quotaContent:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setTotalAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyTransferToAmountResult;->totalAmount:Ljava/lang/String;

    .line 41
    return-void
.end method
