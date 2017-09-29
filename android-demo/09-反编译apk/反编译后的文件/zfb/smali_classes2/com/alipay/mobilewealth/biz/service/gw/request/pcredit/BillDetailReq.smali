.class public Lcom/alipay/mobilewealth/biz/service/gw/request/pcredit/BillDetailReq;
.super Lcom/alipay/mobilewealth/common/service/facade/req/CommonPageReq;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public billNo:Ljava/lang/String;

.field public hasSettled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/req/CommonPageReq;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/request/pcredit/BillDetailReq;->hasSettled:Z

    return-void
.end method
