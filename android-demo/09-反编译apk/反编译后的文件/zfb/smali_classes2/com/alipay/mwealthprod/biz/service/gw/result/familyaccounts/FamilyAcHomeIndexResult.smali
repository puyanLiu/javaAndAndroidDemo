.class public Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/FamilyAcHomeIndexResult;
.super Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/CommonFamilyAcResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public canAddFamilyAc:Z

.field public canApplyFamilyAc:Z

.field public cannotAddCode:Ljava/lang/String;

.field public cannotAddTip:Ljava/lang/String;

.field public cannotApplyTip:Ljava/lang/String;

.field public familyAcInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/FamilyAcInfo;",
            ">;"
        }
    .end annotation
.end field

.field public familyAppResources:Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/FamilyAppResources;

.field public helpUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/CommonFamilyAcResult;-><init>()V

    return-void
.end method
