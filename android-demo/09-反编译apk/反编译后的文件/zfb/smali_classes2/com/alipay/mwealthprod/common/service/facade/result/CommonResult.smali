.class public Lcom/alipay/mwealthprod/common/service/facade/result/CommonResult;
.super Lcom/alipay/mwealthprod/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public resultCode:Ljava/lang/String;

.field public resultDesc:Ljava/lang/String;

.field public resultView:Ljava/lang/String;

.field public showType:I

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mwealthprod/common/service/facade/util/ToString;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mwealthprod/common/service/facade/result/CommonResult;->success:Z

    iput v0, p0, Lcom/alipay/mwealthprod/common/service/facade/result/CommonResult;->showType:I

    return-void
.end method
