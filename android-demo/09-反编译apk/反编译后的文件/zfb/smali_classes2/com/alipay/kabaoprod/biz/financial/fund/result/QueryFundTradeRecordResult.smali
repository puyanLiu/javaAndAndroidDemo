.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/QueryFundTradeRecordResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;
.source "QueryFundTradeRecordResult.java"


# instance fields
.field public fundTradeRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/fund/model/FundTradeRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getFundTradeRecordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/fund/model/FundTradeRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/QueryFundTradeRecordResult;->fundTradeRecordList:Ljava/util/List;

    return-object v0
.end method

.method public setFundTradeRecordList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/fund/model/FundTradeRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/QueryFundTradeRecordResult;->fundTradeRecordList:Ljava/util/List;

    .line 42
    return-void
.end method
