.class public Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl;
.super Lcom/alipay/android/phone/secauthenticator/kcart/KcartService;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartService;-><init>()V

    const-string/jumbo v0, "KcartServiceImpl"

    iput-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private registerKcartPointCut()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onPause()"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.startActivity(Intent)"

    aput-object v2, v0, v1

    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl$1;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    return-void
.end method


# virtual methods
.method public extract()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getInstance()Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->extract()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartServiceImpl;->registerKcartPointCut()V

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
