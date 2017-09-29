.class public Lcom/alipay/mwealthprod/biz/service/gw/result/mfund/QueryMfundBillResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/BaseUniformProdResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public currentPage:I

.field public endTime:J

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

.field public hasNextPage:Z

.field public pageSize:I

.field public totalPage:I

.field public totalSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/BaseUniformProdResult;-><init>()V

    return-void
.end method
