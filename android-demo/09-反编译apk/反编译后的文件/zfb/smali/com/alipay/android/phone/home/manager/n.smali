.class final Lcom/alipay/android/phone/home/manager/n;
.super Ljava/lang/Object;
.source "HomeAppsOnItemClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

.field private final synthetic b:Lcom/ali/user/mobile/common/api/AliUserLogin;

.field private final synthetic c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/n;->a:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/n;->b:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iput-object p3, p0, Lcom/alipay/android/phone/home/manager/n;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/manager/n;)Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/n;->a:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 248
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 250
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 251
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 256
    const-string/jumbo v2, "userId"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v0, "weakNetwork"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    const-string/jumbo v0, "HomeAppsOnItemClickListener"

    const-string/jumbo v2, "start bindTaobao!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/n;->b:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/n;->a:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    invoke-static {v2}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/phone/home/manager/o;

    iget-object v4, p0, Lcom/alipay/android/phone/home/manager/n;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {v3, p0, v4}, Lcom/alipay/android/phone/home/manager/o;-><init>(Lcom/alipay/android/phone/home/manager/n;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->alipayAccountBind(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V

    goto :goto_0
.end method
