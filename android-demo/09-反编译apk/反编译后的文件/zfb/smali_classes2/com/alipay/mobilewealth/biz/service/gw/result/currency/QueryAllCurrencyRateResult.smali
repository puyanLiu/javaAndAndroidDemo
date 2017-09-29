.class public Lcom/alipay/mobilewealth/biz/service/gw/result/currency/QueryAllCurrencyRateResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public clientQueryTime:Ljava/lang/String;

.field public currencyRateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/currency/CurrencyRate;",
            ">;"
        }
    .end annotation
.end field

.field public currencyUpdateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
