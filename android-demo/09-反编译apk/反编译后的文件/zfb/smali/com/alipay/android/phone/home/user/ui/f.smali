.class final Lcom/alipay/android/phone/home/user/ui/f;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APNoticePopDialog$OnClickPositiveListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/ui/f;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 2

    .prologue
    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/f;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->d(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 303
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LogoutService;

    .line 304
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LogoutService;

    .line 300
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/LogoutService;->logout()V

    .line 306
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/f;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->e(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)V

    .line 307
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/f;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
