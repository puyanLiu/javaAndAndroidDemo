.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyQuickOpenResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "FundApplyQuickOpenResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public amount:Ljava/lang/String;

.field public errJumpIndex:I

.field public expressCacheKey:Ljava/lang/String;

.field public hiddenedMobile:Ljava/lang/String;

.field public needSmsCheck:Z

.field public profitDate:Ljava/lang/String;

.field public tairKey:Ljava/lang/String;

.field public tradeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyQuickOpenResult;->needSmsCheck:Z

    .line 75
    iput v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyQuickOpenResult;->errJumpIndex:I

    .line 31
    return-void
.end method
