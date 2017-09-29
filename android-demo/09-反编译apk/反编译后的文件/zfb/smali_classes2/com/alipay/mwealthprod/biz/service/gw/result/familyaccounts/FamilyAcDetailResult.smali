.class public Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/FamilyAcDetailResult;
.super Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/CommonFamilyAcResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public apiService:Ljava/lang/String;

.field public detail:Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/FamilyAcDetailInfo;

.field public familyGroupModel:Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/FamilyAcExtBizModel;

.field public uuid:Ljava/lang/String;

.field public walletVersionModel:Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/FamilyAcExtBizModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/CommonFamilyAcResult;-><init>()V

    return-void
.end method
