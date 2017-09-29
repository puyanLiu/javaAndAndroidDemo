.class public final Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;
.super Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;
.source "AliUserRegisterSMSExActivity_.java"

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
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;-><init>()V

    .line 35
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->OnAutoReadSms(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$101(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->afterVerifySms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    return-void
.end method

.method static synthetic access$201(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    return-void
.end method

.method static synthetic access$301(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->afterVerifySms(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V

    return-void
.end method

.method static synthetic access$401(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->sendSmsInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    return-void
.end method

.method static synthetic access$501(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->verifySms(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$601(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->doVerifySms(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final OnAutoReadSms(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 82
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$1;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 94
    return-void
.end method

.method public final afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 4

    .prologue
    .line 114
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$3;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 126
    return-void
.end method

.method public final afterVerifySms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 4

    .prologue
    .line 98
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 110
    return-void
.end method

.method public final afterVerifySms(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V
    .locals 4

    .prologue
    .line 130
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$4;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$4;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 142
    return-void
.end method

.method public final doVerifySms(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 178
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$7;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$7;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 190
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 40
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 41
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 43
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_sms_register:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->setContentView(I)V

    .line 44
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->smsForMobile:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->mSmsMobileTip:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->nextStep:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->mNextStep:Landroid/widget/Button;

    .line 72
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->checkCodeSend:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->mCheckCodeViewInput:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 73
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->checkCodeTextView:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->mCheckCodeTextView:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    .line 74
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->smsend_ex_view:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->smsendView:Landroid/widget/LinearLayout;

    .line 75
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->smssend_title:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 76
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->mobileNo:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->mobileNoTv:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->afterViews()V

    .line 78
    return-void
.end method

.method public final sendSmsInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 8

    .prologue
    .line 146
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$5;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$5;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 158
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->setContentView(I)V

    .line 53
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 54
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->setContentView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 66
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 60
    return-void
.end method

.method public final verifySms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 162
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 174
    return-void
.end method
