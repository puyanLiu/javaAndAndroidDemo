.class public Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/YebAuthDeclareResult;
.super Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/CommonFamilyAcResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agreements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/FamilyAcKeyValueModel;",
            ">;"
        }
    .end annotation
.end field

.field public btnViewText:Ljava/lang/String;

.field public declareMsgUrl:Ljava/lang/String;

.field public needOpenYebSelf:Z

.field public openYebSelfScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/CommonFamilyAcResult;-><init>()V

    return-void
.end method
