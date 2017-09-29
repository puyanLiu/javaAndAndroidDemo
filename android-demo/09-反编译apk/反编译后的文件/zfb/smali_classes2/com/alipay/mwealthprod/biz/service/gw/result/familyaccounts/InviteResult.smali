.class public Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/InviteResult;
.super Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/CommonFamilyAcResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public contactId:Ljava/lang/String;

.field public familyAcType:Ljava/lang/String;

.field public familyRelationInviteId:Ljava/lang/String;

.field public familyRelationInviteResult:Lcom/alipay/mwealthprod/common/service/facade/result/CommonResult;

.field public openQmfResult:Lcom/alipay/mwealthprod/common/service/facade/result/CommonResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/CommonFamilyAcResult;-><init>()V

    return-void
.end method
