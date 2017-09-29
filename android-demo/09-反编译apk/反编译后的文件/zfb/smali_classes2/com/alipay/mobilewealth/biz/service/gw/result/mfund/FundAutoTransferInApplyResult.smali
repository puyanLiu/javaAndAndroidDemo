.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferInApplyResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public canAddRule:Z

.field public extInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public forwardTo:Ljava/lang/String;

.field public fundAutoTransferRuleSetResult:Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferInRuleSetResult;

.field public passwordType:Ljava/lang/String;

.field public ruleListResult:Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/RuleListResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
