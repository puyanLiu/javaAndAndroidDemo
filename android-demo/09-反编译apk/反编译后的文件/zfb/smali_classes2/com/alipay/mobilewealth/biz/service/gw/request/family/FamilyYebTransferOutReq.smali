.class public Lcom/alipay/mobilewealth/biz/service/gw/request/family/FamilyYebTransferOutReq;
.super Lcom/alipay/mobilewealth/biz/service/gw/request/common/CommonRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public relatedUserId:Ljava/lang/String;

.field public tid:Ljava/lang/String;

.field public transferAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/biz/service/gw/request/common/CommonRequest;-><init>()V

    return-void
.end method
