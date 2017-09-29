.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/ProfitRateQueryResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public maxProfitContent:Ljava/lang/String;

.field public maxProfitRate:Ljava/lang/String;

.field public minProfitContent:Ljava/lang/String;

.field public minProfitRate:Ljava/lang/String;

.field public monthAvgProfit:Ljava/lang/String;

.field public profitRateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/mfund/ProfitRateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
