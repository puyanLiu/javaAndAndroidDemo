.class public interface abstract Lcom/alipay/mobileapp/biz/rpc/unifylogin/UserUnifyLoginFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract login(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;)Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.user.login"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/ResetCookie;
    .end annotation
.end method

.method public abstract loginPb(Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWReqPb;)Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.user.login.pb"
    .end annotation
.end method
