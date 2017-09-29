.class public Lcom/alipay/mobilewealth/core/model/models/mfund/FundTransferOutTipInfo;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankChannelTip:Ljava/lang/String;

.field public canTransferOutZeroTip:Ljava/lang/String;

.field public displayBankChannelTip:Z

.field public displayTransferOutTimes:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/core/model/models/mfund/FundTransferOutTipInfo;->displayBankChannelTip:Z

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/core/model/models/mfund/FundTransferOutTipInfo;->displayTransferOutTimes:Z

    return-void
.end method
