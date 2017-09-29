.class public Lcom/alipay/mwealthprod/biz/service/gw/model/mfund/FundTransferStateInfo;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mainDesc:Ljava/lang/String;

.field public secondDesc:Ljava/lang/String;

.field public statColor:Ljava/lang/String;

.field public statDesc:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    const-string/jumbo v0, "Normal"

    iput-object v0, p0, Lcom/alipay/mwealthprod/biz/service/gw/model/mfund/FundTransferStateInfo;->status:Ljava/lang/String;

    const-string/jumbo v0, "GRAY"

    iput-object v0, p0, Lcom/alipay/mwealthprod/biz/service/gw/model/mfund/FundTransferStateInfo;->statColor:Ljava/lang/String;

    return-void
.end method
