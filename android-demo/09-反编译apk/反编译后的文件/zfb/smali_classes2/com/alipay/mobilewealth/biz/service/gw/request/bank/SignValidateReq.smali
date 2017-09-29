.class public Lcom/alipay/mobilewealth/biz/service/gw/request/bank/SignValidateReq;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cardHolderName:Ljava/lang/String;

.field public cardNo:Ljava/lang/String;

.field public cardType:Ljava/lang/String;

.field public certNo:Ljava/lang/String;

.field public certType:Ljava/lang/String;

.field public cvv2:Ljava/lang/String;

.field public expiredDate:Ljava/lang/String;

.field public expressCacheKey:Ljava/lang/String;

.field public mobile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
