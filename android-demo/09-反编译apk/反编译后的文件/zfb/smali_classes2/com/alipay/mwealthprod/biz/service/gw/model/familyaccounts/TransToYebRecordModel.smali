.class public Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/TransToYebRecordModel;
.super Lcom/alipay/mwealthprod/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public amount:Ljava/lang/String;

.field public bizNo:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public operateMenu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/FamilyAcMenuModel;",
            ">;"
        }
    .end annotation
.end field

.field public scheme:Ljava/lang/String;

.field public transDate:Ljava/lang/String;

.field public transferIn:Z

.field public transferTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mwealthprod/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
