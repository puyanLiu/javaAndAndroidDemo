.class public final Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;
.super Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;
.source "AliUserRegisterAvatarActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final a:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;-><init>()V

    .line 35
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    return-void
.end method

.method static synthetic access$101(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->afterMobileRegPreVerify(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V

    return-void
.end method

.method static synthetic access$201(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->afterCountryCode(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;)V

    return-void
.end method

.method static synthetic access$301(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getCountryCode()V

    return-void
.end method

.method static synthetic access$401(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->doSendSms(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$501(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->doMobileRegPreVerify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final afterCountryCode(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;)V
    .locals 4

    .prologue
    .line 120
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 132
    return-void
.end method

.method public final afterMobileRegPreVerify(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V
    .locals 4

    .prologue
    .line 104
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$2;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 116
    return-void
.end method

.method public final afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 4

    .prologue
    .line 88
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$1;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 100
    return-void
.end method

.method public final doMobileRegPreVerify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 168
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$6;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$6;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 180
    return-void
.end method

.method public final doSendSms(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 152
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$5;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$5;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 164
    return-void
.end method

.method public final getCountryCode()V
    .locals 4

    .prologue
    .line 136
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$4;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$4;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 148
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 40
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 41
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 43
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_register:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->setContentView(I)V

    .line 44
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->tvCountry:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mTvCountry:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->bindConfirm:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mBindConfirm:Landroid/widget/Button;

    .line 72
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->phoneInputBox:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 73
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->alipayNickInputBox:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 74
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->register_scrollview:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mRegisterScrollView:Landroid/view/View;

    .line 75
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->loginPasswordInput:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 76
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->taobao_protocol:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mProtocol:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->aliuser_register:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mRegisterView:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mRegisterScrollView:Landroid/view/View;

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APScrollView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mScrollView:Lcom/alipay/mobile/commonui/widget/APScrollView;

    .line 79
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->regionLayout:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mRegionLayout:Landroid/view/View;

    .line 80
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userAvatar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mAvatarView:Landroid/widget/ImageView;

    .line 81
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->registerPasswordError:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mRegisterPasswordError:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->register_title:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 83
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->init()V

    .line 84
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->setContentView(I)V

    .line 53
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 54
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->setContentView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 66
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 60
    return-void
.end method
