.class public final Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;
.super Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;
.source "SignaturePageActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final d:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;-><init>()V

    .line 29
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;->d:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->dismissProgress()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->setEditText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->showSendProgress()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->processErr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->getSignatureNet()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->setSignature(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final dismissProgress()V
    .locals 4

    .prologue
    .line 104
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/bw;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/bw;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 116
    return-void
.end method

.method public final getSignatureNet()V
    .locals 3

    .prologue
    .line 152
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/bz;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/bz;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 164
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;->d:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 34
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 35
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 37
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->signature_activity:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;->setContentView(I)V

    .line 38
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->signature_edit_num:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 65
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->signature_edit:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 66
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->signature_title_bar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;->a()V

    .line 68
    return-void
.end method

.method public final processErr(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 88
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/bv;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/bv;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 100
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->setContentView(I)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;->d:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 48
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->setContentView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;->d:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 60
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;->d:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 54
    return-void
.end method

.method public final setEditText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 72
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/bu;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/bu;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 84
    return-void
.end method

.method public final setSignature(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/by;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/by;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 148
    return-void
.end method

.method public final showSendProgress()V
    .locals 4

    .prologue
    .line 120
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/bx;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/bx;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 132
    return-void
.end method
