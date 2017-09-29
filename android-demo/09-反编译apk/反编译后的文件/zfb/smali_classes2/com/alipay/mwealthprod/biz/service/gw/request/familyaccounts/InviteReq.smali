.class public Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/InviteReq;
.super Lcom/alipay/mwealthprod/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actorName:Ljava/lang/String;

.field public payPwdInfo:Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/PayPwdInfo;

.field public qmfInfo:Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/QmfSettingInfo;

.field public targetLoginId:Ljava/lang/String;

.field public targetNewUserInfo:Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/NewUserInfo;

.field public targetUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mwealthprod/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
