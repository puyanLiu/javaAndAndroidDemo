.class public Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public financialAssets:Ljava/lang/String;

.field public insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisItem;",
            ">;"
        }
    .end annotation
.end field

.field public stockAsset:Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisStock;

.field public totalAssets:Ljava/lang/String;

.field public totalAssetsDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->items:Ljava/util/List;

    return-void
.end method
