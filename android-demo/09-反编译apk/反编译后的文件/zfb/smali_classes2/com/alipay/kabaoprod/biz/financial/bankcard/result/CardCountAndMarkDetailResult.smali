.class public Lcom/alipay/kabaoprod/biz/financial/bankcard/result/CardCountAndMarkDetailResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "CardCountAndMarkDetailResult.java"


# instance fields
.field public cardCount:I

.field public isMark:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardCount()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/CardCountAndMarkDetailResult;->cardCount:I

    return v0
.end method

.method public isMark()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/CardCountAndMarkDetailResult;->isMark:Z

    return v0
.end method

.method public setCardCount(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/CardCountAndMarkDetailResult;->cardCount:I

    .line 41
    return-void
.end method

.method public setMark(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/CardCountAndMarkDetailResult;->isMark:Z

    .line 53
    return-void
.end method
