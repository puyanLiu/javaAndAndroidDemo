.class public Lcom/alipay/mobileprod/biz/ccr/vo/CreateCreditCardRepaymentReqVO;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agreementId:Ljava/lang/String;

.field public bankMark:Ljava/lang/String;

.field public cardNumber:Ljava/lang/String;

.field public cardNumberType:Ljava/lang/String;

.field public holderName:Ljava/lang/String;

.field public orderSource:Ljava/lang/String;

.field public outOrderNo:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public repayAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    return-void
.end method
