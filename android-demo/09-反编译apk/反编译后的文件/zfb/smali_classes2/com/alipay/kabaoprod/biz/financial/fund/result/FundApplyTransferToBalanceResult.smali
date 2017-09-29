.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyTransferToBalanceResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "FundApplyTransferToBalanceResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public canTransferOutAmount:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;

.field public quotaContent:Ljava/lang/String;

.field public totalAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method
