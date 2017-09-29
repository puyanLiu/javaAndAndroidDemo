.class public final Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;
.super Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;
.source "AliUserLoginSetPayPasswordActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final a:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;-><init>()V

    .line 34
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/PasswordActivity;->afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    return-void
.end method

.method static synthetic access$101(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V

    return-void
.end method

.method static synthetic access$201(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->doSupplement()V

    return-void
.end method

.method static synthetic access$301(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->doRsa()V

    return-void
.end method


# virtual methods
.method public final afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 4

    .prologue
    .line 80
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 92
    return-void
.end method

.method public final afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    .locals 4

    .prologue
    .line 96
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$2;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 108
    return-void
.end method

.method public final doRsa()V
    .locals 4

    .prologue
    .line 128
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$4;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$4;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 140
    return-void
.end method

.method public final doSupplement()V
    .locals 4

    .prologue
    .line 112
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$3;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$3;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 124
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 39
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 40
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 42
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_pay_password:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->setContentView(I)V

    .line 43
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->checkboxDisplay:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->mDisplayPasswordCheckBox:Landroid/widget/CheckBox;

    .line 70
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->passwordInput:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->mPasswordInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    .line 71
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->mConfirmSettingBtn:Landroid/widget/Button;

    .line 72
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->set_layout:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->mSetPWView:Landroid/widget/LinearLayout;

    .line 73
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 74
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->passwordTip:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->mPasswordTip:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->afterViews()V

    .line 76
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->setContentView(I)V

    .line 52
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 53
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 65
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 59
    return-void
.end method
