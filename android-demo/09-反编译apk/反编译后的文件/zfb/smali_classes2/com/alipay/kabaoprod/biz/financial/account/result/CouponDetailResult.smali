.class public Lcom/alipay/kabaoprod/biz/financial/account/result/CouponDetailResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "CouponDetailResult.java"


# instance fields
.field public contextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public couponInfo:Lcom/alipay/kabaoprod/core/model/model/CouponInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/CouponDetailResult;->contextMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCouponInfo()Lcom/alipay/kabaoprod/core/model/model/CouponInfo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/CouponDetailResult;->couponInfo:Lcom/alipay/kabaoprod/core/model/model/CouponInfo;

    return-object v0
.end method

.method public setContextMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/CouponDetailResult;->contextMap:Ljava/util/Map;

    .line 54
    return-void
.end method

.method public setCouponInfo(Lcom/alipay/kabaoprod/core/model/model/CouponInfo;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/CouponDetailResult;->couponInfo:Lcom/alipay/kabaoprod/core/model/model/CouponInfo;

    .line 42
    return-void
.end method
