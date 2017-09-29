.class public Lcom/alipay/mobilewealth/biz/service/gw/model/mfund/TransferSetRule;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/common/BizItem;",
            ">;"
        }
    .end annotation
.end field

.field public fundAutoTransferMemoInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/mfund/FundAutoTransferMemoInfo;

.field public lastExecutestatus:Ljava/lang/String;

.field public lastStatus:Ljava/lang/String;

.field public ruleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
