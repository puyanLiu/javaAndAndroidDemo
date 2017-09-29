.class public interface abstract Lcom/alipay/ebppprod/biz/recharge/RechargeConfigService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getRechargeConfig()Lcom/alipay/ebppprod/biz/recharge/RechargeConfigRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.config"
    .end annotation
.end method

.method public abstract getValueCardConfig()Lcom/alipay/ebppprod/biz/recharge/ValueCardConfigRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.valueCardConfig"
    .end annotation
.end method
