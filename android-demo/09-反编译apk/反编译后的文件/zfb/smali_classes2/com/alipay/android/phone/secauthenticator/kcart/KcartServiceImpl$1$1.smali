.class Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1;

.field final synthetic val$o:Ljava/lang/Object;

.field final synthetic val$objects:[Ljava/lang/Object;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1$1;->this$1:Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1;

    iput-object p2, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1$1;->val$o:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1$1;->val$s:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1$1;->val$objects:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1$1;->val$o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1$1;->val$s:Ljava/lang/String;

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1$1;->val$s:Ljava/lang/String;

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getInstance()Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->enter(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1$1;->val$s:Ljava/lang/String;

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1$1;->val$s:Ljava/lang/String;

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const-string/jumbo v1, "com.alipay.mobile.h5container.ui.H5Activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1$1;->val$o:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    :goto_1
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getInstance()Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->exit(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1$1;->val$s:Ljava/lang/String;

    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.startActivity(Intent)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1$1;->val$objects:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1$1;->val$objects:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "app_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->appIDModuleMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getInstance()Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->enter(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;)V

    goto :goto_0
.end method
