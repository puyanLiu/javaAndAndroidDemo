.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResultConvertor;
.super Ljava/lang/Object;
.source "PassListResultConvertor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static converCouponListFromPreLoadPassList(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 2

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->couponList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->couponList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->couponList:Ljava/util/List;

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->passTimelineList:Ljava/util/List;

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->passListPreLoaderInterval:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->passListPreLoaderInterval:Ljava/lang/Long;

    .line 55
    iget-boolean v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->success:Z

    iput-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    goto :goto_0
.end method

.method public static converTravelListFromPreLoadPassList(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 2

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->travelList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->travelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->travelList:Ljava/util/List;

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->passTimelineList:Ljava/util/List;

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->passListPreLoaderInterval:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->passListPreLoaderInterval:Ljava/lang/Long;

    .line 31
    iget-boolean v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->success:Z

    iput-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    goto :goto_0
.end method
