.class public Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransferInOperateRuleReq;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public amount:Ljava/lang/String;

.field public bankCard:Lcom/alipay/mobilewealth/core/model/models/mfund/BankCardForFixedPurchase;

.field public day:Ljava/lang/String;

.field public ruleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
