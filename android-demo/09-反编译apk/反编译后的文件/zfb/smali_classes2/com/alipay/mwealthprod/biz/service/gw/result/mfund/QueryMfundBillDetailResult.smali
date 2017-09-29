.class public Lcom/alipay/mwealthprod/biz/service/gw/result/mfund/QueryMfundBillDetailResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/BaseUniformProdResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public billStatus:Ljava/lang/String;

.field public extendImg:Ljava/lang/String;

.field public extendUrl:Ljava/lang/String;

.field public transferInStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mwealthprod/biz/service/gw/model/mfund/FundTransferStateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/BaseUniformProdResult;-><init>()V

    return-void
.end method
