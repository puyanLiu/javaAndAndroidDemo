.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyOpenAccSecurInsure(Lcom/alipay/mobilewealth/biz/service/gw/request/home/ApplyOpenASIReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/ApplyOpenASIResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.home.applyOpenAccSecurInsure"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryWealthAnalysis(Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthAnalysisReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.home.queryWealthAnalysis"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
