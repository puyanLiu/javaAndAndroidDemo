.class final Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;
.super Landroid/os/AsyncTask;
.source "MtopServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/alipay/mobileapp/core/service/login/taobao/models/AlipaySsoLoginRes;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/alipay/android/phone/mobilesdk/mtop/RegisterSessionListener;

.field final synthetic b:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;Lcom/alipay/android/phone/mobilesdk/mtop/RegisterSessionListener;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;->b:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 294
    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;->a:Lcom/alipay/android/phone/mobilesdk/mtop/RegisterSessionListener;

    .line 295
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;->b:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/QueryTaobaoSsoTokenFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/QueryTaobaoSsoTokenFacade;

    new-instance v1, Lcom/alipay/mobileapp/core/service/login/taobao/models/AlipaySsoLoginReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/core/service/login/taobao/models/AlipaySsoLoginReq;-><init>()V

    const-string/jumbo v2, "2013081300000797"

    iput-object v2, v1, Lcom/alipay/mobileapp/core/service/login/taobao/models/AlipaySsoLoginReq;->appId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/QueryTaobaoSsoTokenFacade;->alipaySsoLogin(Lcom/alipay/mobileapp/core/service/login/taobao/models/AlipaySsoLoginReq;)Lcom/alipay/mobileapp/core/service/login/taobao/models/AlipaySsoLoginRes;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 291
    check-cast p1, Lcom/alipay/mobileapp/core/service/login/taobao/models/AlipaySsoLoginRes;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-boolean v0, p1, Lcom/alipay/mobileapp/core/service/login/taobao/models/AlipaySsoLoginRes;->success:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobileapp/core/service/login/taobao/models/AlipaySsoLoginRes;->sid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobileapp/core/service/login/taobao/models/AlipaySsoLoginRes;->ecode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;->b:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->access$100(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;->b:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobileapp/core/service/login/taobao/models/AlipaySsoLoginRes;->sid:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobileapp/core/service/login/taobao/models/AlipaySsoLoginRes;->ecode:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;->b:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;

    invoke-static {v3}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->access$100(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lmtopsdk/mtop/intf/Mtop;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;->b:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->access$202(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;Z)Z

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;->a:Lcom/alipay/android/phone/mobilesdk/mtop/RegisterSessionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;->a:Lcom/alipay/android/phone/mobilesdk/mtop/RegisterSessionListener;

    invoke-interface {v0}, Lcom/alipay/android/phone/mobilesdk/mtop/RegisterSessionListener;->onRegisterSessionDone()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;->b:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->access$202(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;Z)Z

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;->a:Lcom/alipay/android/phone/mobilesdk/mtop/RegisterSessionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;->a:Lcom/alipay/android/phone/mobilesdk/mtop/RegisterSessionListener;

    invoke-interface {v0}, Lcom/alipay/android/phone/mobilesdk/mtop/RegisterSessionListener;->onRegisterSessionFail()V

    goto :goto_0
.end method
