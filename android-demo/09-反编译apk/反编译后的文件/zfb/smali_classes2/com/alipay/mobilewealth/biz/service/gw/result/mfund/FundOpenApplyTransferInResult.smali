.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundOpenApplyTransferInResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public availableCoupon:Ljava/lang/String;

.field public channelInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/common/RecommendChannelInfo;

.field public commonProcotols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/common/CommonProcotol;",
            ">;"
        }
    .end annotation
.end field

.field public extInfo:Ljava/util/Map;
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

.field public hasFundAccount:Z

.field public jumpTransferInIndex:Ljava/lang/String;

.field public ocertOpenInfo:Lcom/alipay/mobilewealth/core/model/models/mfund/FundOcertifyOpenInfo;

.field public profitDateDesc:Ljava/lang/String;

.field public showLimitExplain:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
