.class public final Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;
.super Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;
.source "AliUserLoginSMSActivity_.java"

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
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;-><init>()V

    .line 33
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->afterVerifySms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    return-void
.end method

.method static synthetic access$101(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->OnAutoReadSms(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$201(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    return-void
.end method

.method static synthetic access$301(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->sendSmsInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    return-void
.end method

.method static synthetic access$401(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->verifySms(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final OnAutoReadSms(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 95
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$2;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 107
    return-void
.end method

.method public final afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 4

    .prologue
    .line 111
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$3;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 123
    return-void
.end method

.method public final afterVerifySms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 4

    .prologue
    .line 79
    const-string/jumbo v0, ""

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 91
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 38
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 39
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 41
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_sms_login:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->setContentView(I)V

    .line 42
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->checkCodeTextView:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->mCheckCodeTextView:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    .line 69
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->checkCodeSend:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->mCheckCodeViewInput:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 70
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->smsForMobile:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->mSmsMobileTip:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->nextStep:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->mNextStep:Landroid/widget/Button;

    .line 72
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->smssend_title:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 73
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->changePhone:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->mChangePhone:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->afterViews()V

    .line 75
    return-void
.end method

.method public final sendSmsInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 8

    .prologue
    .line 127
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$4;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$4;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 139
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->setContentView(I)V

    .line 51
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 52
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->setContentView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 64
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 58
    return-void
.end method

.method public final verifySms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 143
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$5;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$5;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 155
    return-void
.end method
