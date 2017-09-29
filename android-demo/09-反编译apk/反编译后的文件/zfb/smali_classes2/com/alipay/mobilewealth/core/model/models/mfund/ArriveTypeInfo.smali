.class public Lcom/alipay/mobilewealth/core/model/models/mfund/ArriveTypeInfo;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alertDesc:Ljava/lang/String;

.field public alertTitle:Ljava/lang/String;

.field public arrivingTypeQuota:Ljava/lang/String;

.field public highLimit:Ljava/lang/String;

.field public lowLimit:Ljava/lang/String;

.field public needAlert:Z

.field public typeValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/core/model/models/mfund/ArriveTypeInfo;->needAlert:Z

    return-void
.end method
