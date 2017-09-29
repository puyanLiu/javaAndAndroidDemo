.class public Lcom/alipay/kabaoprod/biz/financial/account/request/UserCouponListReq;
.super Lcom/alipay/kabaoprod/service/facade/request/CommonPageReq;
.source "UserCouponListReq.java"


# instance fields
.field public needPaging:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/request/CommonPageReq;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/request/UserCouponListReq;->needPaging:Z

    .line 30
    return-void
.end method


# virtual methods
.method public isNeedPaging()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/request/UserCouponListReq;->needPaging:Z

    return v0
.end method

.method public setNeedPaging(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/request/UserCouponListReq;->needPaging:Z

    .line 41
    return-void
.end method
