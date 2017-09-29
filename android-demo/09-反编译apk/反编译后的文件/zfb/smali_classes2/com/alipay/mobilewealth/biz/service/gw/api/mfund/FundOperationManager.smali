.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/mfund/FundOperationManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryFundGuideInfo()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundGuideInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.guide.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundLuckDrawInfo()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundLuckDrawInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.lottery.detail.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundLuckEnterInfo()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundLuckEnterInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.lottery.enter.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundShareInfo()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundShareInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.share.detail.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
