.class public Lcom/alipay/mwealthprod/biz/service/gw/result/mfund/QueryMfundBillDetalResult;
.super Lcom/alipay/mwealthprod/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public fundRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mwealthprod/biz/service/gw/model/mfund/FundRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mwealthprod/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
