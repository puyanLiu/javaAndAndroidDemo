.class public Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "PreWithdrawResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public availableAmount:Ljava/lang/String;

.field public bankList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;",
            ">;"
        }
    .end annotation
.end field

.field public memo:Ljava/lang/String;

.field public onceAvailableAmount:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;

.field public supportExpress:Z

.field public userName:Ljava/lang/String;

.field public withdrawCount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;->bankList:Ljava/util/List;

    .line 14
    return-void
.end method
