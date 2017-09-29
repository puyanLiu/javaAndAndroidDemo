.class public interface abstract Lcom/alipay/mobile/egg/rpc/EggConfigRpcService;
.super Ljava/lang/Object;
.source "EggConfigRpcService.java"


# virtual methods
.method public abstract queryEggConfig(Lcom/alipay/mobile/egg/rpc/EggConfigReq;)Lcom/alipay/mobile/egg/rpc/EggConfigListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.queryEgg"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
