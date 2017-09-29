.class public Lcom/alipay/mobilewealth/biz/service/gw/result/bank/InputElementResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alipayProcotolUrl:Ljava/lang/String;

.field public bankLogo:Ljava/lang/String;

.field public bankName:Ljava/lang/String;

.field public bankProcotolUrl:Ljava/lang/String;

.field public cardHolderName:Ljava/lang/String;

.field public cardNo:Ljava/lang/String;

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

.field public defaultCertTypeOption:Lcom/alipay/mobilewealth/core/model/models/common/ElementOption;

.field public expressCacheKey:Ljava/lang/String;

.field public instId:Ljava/lang/String;

.field public mobileNo:Ljava/lang/String;

.field public showCertNo:Z

.field public showName:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/result/bank/InputElementResult;->certified:Z

    iput-boolean v1, p0, Lcom/alipay/mobilewealth/biz/service/gw/result/bank/InputElementResult;->showName:Z

    iput-boolean v1, p0, Lcom/alipay/mobilewealth/biz/service/gw/result/bank/InputElementResult;->showCertNo:Z

    return-void
.end method
