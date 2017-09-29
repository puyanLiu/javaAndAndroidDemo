.class public Lcom/alipay/mobilewealth/biz/service/gw/result/family/FamilyYebHomeInfoResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public creator:Z

.field public extraInfo:Ljava/util/Map;
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

.field public familyYebDesc:Lcom/alipay/mobilewealth/core/model/models/family/FamilyUserDesc;

.field public fundBaseAssetAccountInfo:Lcom/alipay/mobilewealth/core/model/models/mfund/FundBaseAssetAccountInfo;

.field public fundInfo:Lcom/alipay/mobilewealth/core/model/models/mfund/FundInfo;

.field public fundProfitChartInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/mfund/FundProfitChartInfo;",
            ">;"
        }
    .end annotation
.end field

.field public relatedUserId:Ljava/lang/String;

.field public replaceWords:Ljava/util/Map;
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

.field public showTransOut:Z

.field public topTips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
