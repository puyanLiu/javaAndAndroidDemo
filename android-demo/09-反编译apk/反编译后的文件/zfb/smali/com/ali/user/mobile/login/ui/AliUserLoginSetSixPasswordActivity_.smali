.class public final Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;
.super Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;
.source "AliUserLoginSetSixPasswordActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final a:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;-><init>()V

    .line 36
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/PasswordActivity;->afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    return-void
.end method

.method static synthetic access$101(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/PasswordActivity;->afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V

    return-void
.end method

.method static synthetic access$201(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->doSupplement()V

    return-void
.end method

.method static synthetic access$301(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->doRsa()V

    return-void
.end method


# virtual methods
.method public final afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 4

    .prologue
    .line 87
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 99
    return-void
.end method

.method public final afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    .locals 4

    .prologue
    .line 103
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$2;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 115
    return-void
.end method

.method public final doRsa()V
    .locals 4

    .prologue
    .line 135
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$4;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$4;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 147
    return-void
.end method

.method public final doSupplement()V
    .locals 4

    .prologue
    .line 119
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$3;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$3;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 131
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 41
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 42
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 44
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_six_password:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->setContentView(I)V

    .line 45
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->passwordInput:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mPasswordInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    .line 72
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 73
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->set_layout:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mSetPWView:Landroid/widget/LinearLayout;

    .line 74
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->checkboxDisplay:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mDisplayPasswordCheckBox:Landroid/widget/CheckBox;

    .line 75
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mConfirmSettingBtn:Landroid/widget/Button;

    .line 76
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->passwordTip:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mPasswordTip:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->sixNumberPasswordInput:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    .line 79
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->insurance_sure:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mInsuranceSureText:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->insurance:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    .line 81
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->afterViews()V

    .line 83
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->setContentView(I)V

    .line 54
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 55
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->setContentView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 67
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 61
    return-void
.end method
