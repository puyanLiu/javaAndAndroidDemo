.class public Lcom/alipay/kabaoprod/biz/financial/fund/request/ProfitQueryReq;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "ProfitQueryReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public oprType:Ljava/lang/String;

.field public pageCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    .line 48
    const/16 v0, 0x1e

    iput v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/ProfitQueryReq;->pageCount:I

    .line 31
    return-void
.end method
