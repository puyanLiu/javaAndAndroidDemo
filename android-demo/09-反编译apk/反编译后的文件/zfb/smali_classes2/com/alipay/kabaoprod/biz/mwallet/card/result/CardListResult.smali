.class public Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "CardListResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field public hasMore:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;->hasMore:I

    .line 32
    return-void
.end method
