.class public Lcom/alipay/mobilewealth/biz/service/gw/result/pcredit/QualificationResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agreementUrl:Ljava/lang/String;

.field public billingDate:Ljava/lang/String;

.field public creditAmount:Ljava/lang/String;

.field public repayDueDate:Ljava/lang/String;

.field public signMemos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
