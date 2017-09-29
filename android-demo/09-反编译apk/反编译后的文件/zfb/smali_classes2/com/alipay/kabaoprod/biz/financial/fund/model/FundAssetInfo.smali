.class public Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "FundAssetInfo.java"


# instance fields
.field public historyProfit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/fund/model/FundTradeRecord;",
            ">;"
        }
    .end annotation
.end field

.field public previousProfit:Ljava/lang/String;

.field public totalAmount:Ljava/lang/String;

.field public totalProfit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getHistoryProfit()Ljava/util/List;
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
    .line 81
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->historyProfit:Ljava/util/List;

    return-object v0
.end method

.method public getPreviousProfit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->previousProfit:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->totalAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalProfit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->totalProfit:Ljava/lang/String;

    return-object v0
.end method

.method public setHistoryProfit(Ljava/util/List;)V
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
    .line 77
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->historyProfit:Ljava/util/List;

    .line 78
    return-void
.end method

.method public setPreviousProfit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->previousProfit:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setTotalAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->totalAmount:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTotalProfit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->totalProfit:Ljava/lang/String;

    .line 54
    return-void
.end method
