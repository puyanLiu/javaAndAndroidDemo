.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/account/CouponManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getUserCouponList(Lcom/alipay/mobilewealth/biz/service/gw/request/account/CouponListReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/account/CouponListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.coupon.query.list"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getUserCouponListForIndex(Lcom/alipay/mobilewealth/biz/service/gw/request/account/CouponListReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/account/CouponListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.account.getUserCouponList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCouponDetailById(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/account/CouponDetailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.coupon.query.detail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
