.class public Lcom/alipay/mobilewealth/biz/service/gw/result/account/UserAccountInfoResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public availableBalance:D

.field public bindingMobileNo:Ljava/lang/String;

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

.field public couponNums:I

.field public pointNums:I

.field public queryCoupon:Z

.field public showCreditScore:Z

.field public userAssetInfo:Lcom/alipay/mobilewealth/core/model/models/account/UserAssetInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/result/account/UserAccountInfoResult;->queryCoupon:Z

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/result/account/UserAccountInfoResult;->showCreditScore:Z

    return-void
.end method
