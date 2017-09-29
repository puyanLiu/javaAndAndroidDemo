.class public Lcom/alipay/mobilewealth/biz/service/gw/result/bank/ValidateSignResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankId:Ljava/lang/String;

.field public cardType:Ljava/lang/String;

.field public expressCacheKey:Ljava/lang/String;

.field public instId:Ljava/lang/String;

.field public mobileNo:Ljava/lang/String;

.field public needSmsCheck:Z

.field public needValidatePsw:Z

.field public passwordMemo:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;

.field public signId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/result/bank/ValidateSignResult;->needSmsCheck:Z

    return-void
.end method
