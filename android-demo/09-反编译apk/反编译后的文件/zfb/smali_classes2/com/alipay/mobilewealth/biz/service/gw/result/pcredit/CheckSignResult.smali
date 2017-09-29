.class public Lcom/alipay/mobilewealth/biz/service/gw/result/pcredit/CheckSignResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hasSign:Z

.field public opText:Ljava/lang/String;

.field public repayAmount:Ljava/lang/String;

.field public signStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
