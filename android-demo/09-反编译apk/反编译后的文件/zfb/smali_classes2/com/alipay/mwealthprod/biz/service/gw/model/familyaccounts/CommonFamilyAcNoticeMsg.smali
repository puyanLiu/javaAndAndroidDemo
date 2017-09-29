.class public Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/CommonFamilyAcNoticeMsg;
.super Lcom/alipay/mwealthprod/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alertTitle:Ljava/lang/String;

.field public altBtnTxt:Ljava/lang/String;

.field public followAction:Ljava/lang/String;

.field public noticeMsg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public showType:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mwealthprod/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
