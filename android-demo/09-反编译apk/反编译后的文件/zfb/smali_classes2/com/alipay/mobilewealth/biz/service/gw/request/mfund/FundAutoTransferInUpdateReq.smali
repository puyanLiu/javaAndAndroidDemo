.class public Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransferInUpdateReq;
.super Lcom/alipay/mobilewealth/biz/service/gw/request/common/CommonRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public arrivingDay:Ljava/lang/String;

.field public bankCard:Lcom/alipay/mobilewealth/core/model/models/mfund/BankCardForFixedPurchase;

.field public cacheId:Ljava/lang/String;

.field public deductAmount:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;

.field public ruleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/biz/service/gw/request/common/CommonRequest;-><init>()V

    return-void
.end method
