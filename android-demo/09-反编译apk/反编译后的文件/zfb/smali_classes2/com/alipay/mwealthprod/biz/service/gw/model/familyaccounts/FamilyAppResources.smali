.class public Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/FamilyAppResources;
.super Lcom/alipay/mwealthprod/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public commonFamilyActor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mwealthprod/core/model/familyaccounts/domain/FamilyActor;",
            ">;"
        }
    .end annotation
.end field

.field public recommendFamilyActors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mwealthprod/core/model/familyaccounts/domain/FamilyActor;",
            ">;"
        }
    .end annotation
.end field

.field public recommendTxt:Ljava/lang/String;

.field public removeFamilyAcNotice:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/CommonFamilyAcNoticeMsg;",
            ">;"
        }
    .end annotation
.end field

.field public resourceVersion:Ljava/lang/String;

.field public simpleWalletTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mwealthprod/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
