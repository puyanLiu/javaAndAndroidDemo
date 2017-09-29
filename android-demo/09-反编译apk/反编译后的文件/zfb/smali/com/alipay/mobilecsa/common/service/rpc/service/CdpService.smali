.class public interface abstract Lcom/alipay/mobilecsa/common/service/rpc/service/CdpService;
.super Ljava/lang/Object;
.source "CdpService.java"


# virtual methods
.method public abstract queryCdp(Lcom/alipay/mobilecsa/common/service/rpc/request/CdpRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/CdpResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.queryCdp"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
