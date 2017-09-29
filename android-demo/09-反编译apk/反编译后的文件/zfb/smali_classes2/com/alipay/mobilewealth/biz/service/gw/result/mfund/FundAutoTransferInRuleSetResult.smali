.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferInRuleSetResult;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankCardListModel:Lcom/alipay/mobilewealth/biz/service/gw/model/mfund/BankCardFixedPurchaseListModel;

.field public protocolBizItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/common/BizItem;",
            ">;"
        }
    .end annotation
.end field

.field public transferRuleForUpdate:Lcom/alipay/mobilewealth/biz/service/gw/model/mfund/TransferRuleForUpdate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
