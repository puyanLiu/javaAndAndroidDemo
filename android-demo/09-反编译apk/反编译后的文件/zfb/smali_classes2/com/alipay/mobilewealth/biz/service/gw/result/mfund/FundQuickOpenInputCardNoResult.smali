.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundQuickOpenInputCardNoResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankLogo:Ljava/lang/String;

.field public bankName:Ljava/lang/String;

.field public cardHolderName:Ljava/lang/String;

.field public cardNoLast4:Ljava/lang/String;

.field public cardType:Ljava/lang/String;

.field public certNo:Ljava/lang/String;

.field public certified:Z

.field public checkItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/common/ElementInfo;",
            ">;"
        }
    .end annotation
.end field

.field public expressCacheKey:Ljava/lang/String;

.field public instId:Ljava/lang/String;

.field public mobileNo:Ljava/lang/String;

.field public procotols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/common/CommonProcotol;",
            ">;"
        }
    .end annotation
.end field

.field public showName:Z

.field public tairKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundQuickOpenInputCardNoResult;->certified:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundQuickOpenInputCardNoResult;->showName:Z

    return-void
.end method
