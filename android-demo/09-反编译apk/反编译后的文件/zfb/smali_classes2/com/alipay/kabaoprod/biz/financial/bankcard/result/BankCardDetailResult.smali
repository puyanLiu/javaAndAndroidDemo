.class public Lcom/alipay/kabaoprod/biz/financial/bankcard/result/BankCardDetailResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "BankCardDetailResult.java"


# instance fields
.field public bankBizItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/BizItem;",
            ">;"
        }
    .end annotation
.end field

.field public bankCard:Lcom/alipay/kabaoprod/core/model/model/BankCard;

.field public hasSimplePassword:Z

.field public remindSetItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/BizItem;",
            ">;"
        }
    .end annotation
.end field

.field public selfBizItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/BizItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/BankCardDetailResult;->hasSimplePassword:Z

    .line 32
    return-void
.end method
