.class public Lcom/alipay/mobilewealth/core/model/models/mfund/FundOcertifyOpenInfo;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public commonProcotols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/common/CommonProcotol;",
            ">;"
        }
    .end annotation
.end field

.field public fundInfo:Lcom/alipay/mobilewealth/core/model/models/mfund/FundInfo;

.field public fundUserInfo:Lcom/alipay/mobilewealth/core/model/models/mfund/FundUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
