.class public Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "KabaoCommonPageResult.java"


# instance fields
.field public currentPage:I

.field public pageSize:I

.field public totalPage:I

.field public totalSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->currentPage:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->pageSize:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->totalPage:I

    return v0
.end method

.method public getTotalSize()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->totalSize:I

    return v0
.end method

.method public setCurrentPage(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->currentPage:I

    .line 53
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->pageSize:I

    .line 41
    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->totalPage:I

    .line 77
    return-void
.end method

.method public setTotalSize(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->totalSize:I

    .line 65
    return-void
.end method
