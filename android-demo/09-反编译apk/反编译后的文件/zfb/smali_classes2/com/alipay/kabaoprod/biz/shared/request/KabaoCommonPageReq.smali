.class public Lcom/alipay/kabaoprod/biz/shared/request/KabaoCommonPageReq;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "KabaoCommonPageReq.java"


# instance fields
.field public currentPage:I

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/alipay/kabaoprod/biz/shared/request/KabaoCommonPageReq;->currentPage:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/alipay/kabaoprod/biz/shared/request/KabaoCommonPageReq;->pageSize:I

    return v0
.end method

.method public setCurrentPage(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/alipay/kabaoprod/biz/shared/request/KabaoCommonPageReq;->currentPage:I

    .line 53
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/alipay/kabaoprod/biz/shared/request/KabaoCommonPageReq;->pageSize:I

    .line 41
    return-void
.end method
