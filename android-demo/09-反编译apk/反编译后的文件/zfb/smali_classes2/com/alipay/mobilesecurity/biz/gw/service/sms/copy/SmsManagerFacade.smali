.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/sms/copy/SmsManagerFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract sendSms(Lcom/alipay/mobilesecurity/core/model/mainpage/password/copy/SendSmsReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/copy/SendSmsResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.sms.sendSms"
    .end annotation
.end method

.method public abstract verifyAuthCode(Lcom/alipay/mobilesecurity/core/model/mainpage/password/copy/VerifyAuthCodeReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/copy/VerifyAuthCodeResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.sms.verifyAuthCode"
    .end annotation
.end method
