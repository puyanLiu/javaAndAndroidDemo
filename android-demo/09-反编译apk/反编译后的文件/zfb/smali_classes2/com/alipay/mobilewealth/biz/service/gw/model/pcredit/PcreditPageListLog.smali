.class public Lcom/alipay/mobilewealth/biz/service/gw/model/pcredit/PcreditPageListLog;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public currentPage:I

.field public pageSize:I

.field public pcreditBillDetailLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/pcredit/PcreditBillDetailLog;",
            ">;"
        }
    .end annotation
.end field

.field public totalPage:I

.field public totalSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
