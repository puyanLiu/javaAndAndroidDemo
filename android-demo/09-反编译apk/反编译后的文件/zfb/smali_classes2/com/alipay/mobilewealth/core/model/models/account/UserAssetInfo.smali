.class public Lcom/alipay/mobilewealth/core/model/models/account/UserAssetInfo;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accountAsset:Lcom/alipay/mobilewealth/core/model/models/account/AccountAsset;

.field public fundAsset:Lcom/alipay/mobilewealth/core/model/models/mfund/FundAsset;

.field public fundOpenStatus:Z

.field public totalAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
