.class public final Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;
.source "ConfirmAccountFragment_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final h:Lorg/androidannotations/api/view/OnViewChangedNotifier;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;-><init>()V

    .line 31
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->h:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->refreshUi()V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->getProfileByRpc()V

    return-void
.end method


# virtual methods
.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getProfileByRpc()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/k;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/k;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 110
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->h:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 37
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 38
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 40
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->i:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 54
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->fragment_add_confirm:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->i:Landroid/view/View;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->i:Landroid/view/View;

    return-object v0
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title_bar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 72
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->userAccount:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 73
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->verifyLayout:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 74
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->userName:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 75
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->user_avatar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/misc/CircularImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->b:Lcom/alipay/mobile/common/misc/CircularImageView;

    .line 76
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->next:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 77
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->init()V

    .line 78
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->h:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 67
    return-void
.end method

.method public final refreshUi()V
    .locals 4

    .prologue
    .line 82
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/j;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/j;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 94
    return-void
.end method
