.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundQuickOpenInputCardNoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "FundQuickOpenInputCardNoResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankLogo:Ljava/lang/String;

.field public bankName:Ljava/lang/String;

.field public cardHolderName:Ljava/lang/String;

.field public cardNoLast4:Ljava/lang/String;

.field public cardType:Ljava/lang/String;

.field public certNo:Ljava/lang/String;

.field public certified:Z

.field public checkItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/ElementInfo;",
            ">;"
        }
    .end annotation
.end field

.field public expressCacheKey:Ljava/lang/String;

.field public instId:Ljava/lang/String;

.field public procotols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/CommonProcotol;",
            ">;"
        }
    .end annotation
.end field

.field public tairKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundQuickOpenInputCardNoResult;->certified:Z

    .line 33
    return-void
.end method
