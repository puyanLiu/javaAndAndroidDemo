.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/account/DepositManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyDeposit(Lcom/alipay/mobilewealth/biz/service/gw/request/account/ApplyDepositReq;)Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.account.applyDeposit"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
