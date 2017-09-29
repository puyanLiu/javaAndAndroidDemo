.class public Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransferOutUpdateReq;
.super Lcom/alipay/mobilewealth/biz/service/gw/request/common/CommonRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public arrivingDay:Ljava/lang/String;

.field public bankCardId:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;

.field public ruleId:Ljava/lang/String;

.field public transferOutAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/biz/service/gw/request/common/CommonRequest;-><init>()V

    return-void
.end method
