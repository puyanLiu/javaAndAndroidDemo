.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/account/api/QrCodeManager;
.super Ljava/lang/Object;
.source "QrCodeManager.java"


# virtual methods
.method public abstract getAccountQrCodeInfo()Lcom/alipay/kabaoprod/biz/financial/account/result/AccountQrCodeInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.account.qrcode.query.datail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
