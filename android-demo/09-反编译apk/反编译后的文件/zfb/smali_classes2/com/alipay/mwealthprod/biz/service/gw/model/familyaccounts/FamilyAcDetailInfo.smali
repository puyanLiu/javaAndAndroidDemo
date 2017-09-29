.class public Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/FamilyAcDetailInfo;
.super Lcom/alipay/mwealthprod/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public contactId:Ljava/lang/String;

.field public createeAlias:Ljava/lang/String;

.field public createeUserId:Ljava/lang/String;

.field public creatorAlias:Ljava/lang/String;

.field public creatorUserId:Ljava/lang/String;

.field public deerPayModel:Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/FamilyAcFinModel;

.field public deleteNotice:Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/CommonFamilyAcNoticeMsg;

.field public editable:Z

.field public familyAcHomeIndexShortLink:Ljava/lang/String;

.field public familyAcType:Ljava/lang/String;

.field public inviteId:Ljava/lang/String;

.field public msgContent:Ljava/lang/String;

.field public needNotice:Z

.field public relatedDate:Ljava/lang/String;

.field public relatedDateView:Ljava/lang/String;

.field public relatedUserMobile:Ljava/lang/String;

.field public relatedUserPhoto:Ljava/lang/String;

.field public relatedUserScheme:Ljava/lang/String;

.field public relatedUserTip:Ljava/lang/String;

.field public relationView:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public statusErrorView:Ljava/lang/String;

.field public statusView:Ljava/lang/String;

.field public userPhoto:Ljava/lang/String;

.field public viewForCreator:Z

.field public yebModel:Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/FamilyAcFinModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mwealthprod/common/service/facade/util/ToString;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/FamilyAcDetailInfo;->needNotice:Z

    return-void
.end method
