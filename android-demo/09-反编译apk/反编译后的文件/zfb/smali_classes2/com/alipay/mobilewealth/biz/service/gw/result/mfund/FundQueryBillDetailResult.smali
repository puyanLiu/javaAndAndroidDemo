.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundQueryBillDetailResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public billStatus:Ljava/lang/String;

.field public extendImg:Ljava/lang/String;

.field public extendUrl:Ljava/lang/String;

.field public transAmount:Ljava/lang/String;

.field public transDate:Ljava/lang/String;

.field public transName:Ljava/lang/String;

.field public transType:Ljava/lang/String;

.field public transferInStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundDetailTransferStateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
