.class public Lcom/alipay/mobilewealth/biz/service/gw/result/bank/BankCardDetailV920Result;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankBizItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/common/BizWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public bankCard:Lcom/alipay/mobilewealth/biz/service/gw/model/bank/BankCard;

.field public enableRepayment:Z

.field private hasSimplePassword:Z

.field public repayBizItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/common/BizWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public selfBizItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/common/BizWidgetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/result/bank/BankCardDetailV920Result;->hasSimplePassword:Z

    return-void
.end method
