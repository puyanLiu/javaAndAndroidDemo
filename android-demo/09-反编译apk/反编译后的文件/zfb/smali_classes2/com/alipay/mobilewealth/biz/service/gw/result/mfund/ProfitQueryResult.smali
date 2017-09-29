.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/ProfitQueryResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public maxContent:Ljava/lang/String;

.field public maxProfit:Ljava/lang/String;

.field public minContent:Ljava/lang/String;

.field public minProfit:Ljava/lang/String;

.field public profitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/mfund/ProfitInfo;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public totalProfit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
