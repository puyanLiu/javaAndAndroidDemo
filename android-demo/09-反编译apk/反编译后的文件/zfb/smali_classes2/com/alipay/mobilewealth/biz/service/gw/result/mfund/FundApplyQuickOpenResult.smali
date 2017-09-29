.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundApplyQuickOpenResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

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

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundApplyQuickOpenResult;->needSmsCheck:Z

    iput v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundApplyQuickOpenResult;->errJumpIndex:I

    return-void
.end method
