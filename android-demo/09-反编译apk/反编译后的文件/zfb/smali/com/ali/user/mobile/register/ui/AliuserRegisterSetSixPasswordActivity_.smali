.class public final Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;
.super Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;
.source "AliuserRegisterSetSixPasswordActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final a:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;-><init>()V

    .line 33
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    return-void
.end method

.method static synthetic access$101(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->afterSupplement(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V

    return-void
.end method

.method static synthetic access$201(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->closeKeyboard()V

    return-void
.end method

.method static synthetic access$301(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->doSupplement()V

    return-void
.end method

.method static synthetic access$401(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->doRsa()V

    return-void
.end method


# virtual methods
.method public final afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 4

    .prologue
    .line 78
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 90
    return-void
.end method

.method public final afterSupplement(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V
    .locals 4

    .prologue
    .line 94
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$2;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 106
    return-void
.end method

.method public final closeKeyboard()V
    .locals 4

    .prologue
    .line 110
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$3;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$3;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 122
    return-void
.end method

.method public final doRsa()V
    .locals 4

    .prologue
    .line 142
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$5;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$5;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 154
    return-void
.end method

.method public final doSupplement()V
    .locals 4

    .prologue
    .line 126
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$4;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$4;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 138
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 38
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 39
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 41
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_six_password_register:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->setContentView(I)V

    .line 42
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->insurance:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    .line 69
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 70
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->insurance_sure:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->mInsuranceSureText:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->mConfirmSettingBtn:Landroid/widget/Button;

    .line 72
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->sixNumberPasswordInput:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    .line 73
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->afterViews()V

    .line 74
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->setContentView(I)V

    .line 51
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 52
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->setContentView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 64
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 58
    return-void
.end method
