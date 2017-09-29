.class final Lcom/alipay/android/phone/home/user/ui/j;
.super Ljava/lang/Thread;
.source "UserSettingActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/user/ui/UserSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/user/ui/UserSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/ui/j;->a:Lcom/alipay/android/phone/home/user/ui/UserSettingActivity;

    .line 68
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/j;->a:Lcom/alipay/android/phone/home/user/ui/UserSettingActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/home/user/ui/UserSettingActivity;->a(Lcom/alipay/android/phone/home/user/ui/UserSettingActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getConfigStagesFromRemote()V

    .line 72
    return-void
.end method
