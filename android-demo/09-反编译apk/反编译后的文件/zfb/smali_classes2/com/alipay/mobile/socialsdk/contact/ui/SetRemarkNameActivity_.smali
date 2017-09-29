.class public final Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;
.super Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;
.source "SetRemarkNameActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final g:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;-><init>()V

    .line 32
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->setRemarName()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->onCheckContact(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->checkContact()V

    return-void
.end method


# virtual methods
.method public final checkContact()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/bs;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/bs;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 122
    return-void
.end method

.method public final onCheckContact(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 78
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/bq;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/bq;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 90
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 37
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 38
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 40
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->layout_set_remark_name:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->setContentView(I)V

    .line 41
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->bt_set:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 68
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->cancel:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 69
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title_bar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 70
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_contact_name_hint:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 71
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->rl_use_contact_name:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 72
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->set_remarkname:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->a()V

    .line 74
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->setContentView(I)V

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 51
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->setContentView(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 63
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 57
    return-void
.end method

.method public final setRemarName()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/br;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/br;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 106
    return-void
.end method
