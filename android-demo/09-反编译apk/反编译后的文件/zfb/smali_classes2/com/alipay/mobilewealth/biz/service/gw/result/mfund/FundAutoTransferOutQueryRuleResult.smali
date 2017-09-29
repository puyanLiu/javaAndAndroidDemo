.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferOutQueryRuleResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public autoTransferResultInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/mfund/AutoTransferResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field public lastStatus:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public nextExecuteDayView:Ljava/lang/String;

.field public ruleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
