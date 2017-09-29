.class public Lcom/alipay/kabaoprod/biz/financial/fund/model/FundTradeRecord;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "FundTradeRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public contextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public totalProfit:Ljava/lang/String;

.field public tradeNo:Ljava/lang/String;

.field public transAmount:Ljava/lang/String;

.field public transDate:Ljava/lang/String;

.field public transItemName:Ljava/lang/String;

.field public transType:Ljava/lang/String;

.field public weekRate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundTradeRecord;->weekRate:Ljava/lang/String;

    .line 31
    return-void
.end method
