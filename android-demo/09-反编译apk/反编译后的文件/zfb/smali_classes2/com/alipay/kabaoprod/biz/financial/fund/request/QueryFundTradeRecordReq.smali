.class public Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;
.super Ljava/lang/Object;
.source "QueryFundTradeRecordReq.java"


# instance fields
.field public currentPage:I

.field public filterCodition:Ljava/lang/String;

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->currentPage:I

    .line 60
    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->pageSize:I

    .line 29
    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->currentPage:I

    return v0
.end method

.method public getFilterCodition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->filterCodition:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->pageSize:I

    return v0
.end method

.method public setCurrentPage(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->currentPage:I

    .line 52
    return-void
.end method

.method public setFilterCodition(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->filterCodition:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->pageSize:I

    .line 64
    return-void
.end method
