.class public Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/QueryTransToYebRecordReq;
.super Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/PageReq;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public needTotal:Z

.field public oppositeUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/PageReq;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/QueryTransToYebRecordReq;->needTotal:Z

    return-void
.end method
