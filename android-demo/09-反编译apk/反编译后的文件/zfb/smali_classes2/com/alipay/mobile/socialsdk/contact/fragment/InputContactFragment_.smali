.class public final Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;
.source "InputContactFragment_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final e:Lorg/androidannotations/api/view/OnViewChangedNotifier;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;-><init>()V

    .line 29
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->e:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->toConfirmPage()V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->startToQuery()V

    return-void
.end method


# virtual methods
.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->e:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 35
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 36
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 38
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->f:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 52
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->fragment_input_contact:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->f:Landroid/view/View;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->f:Landroid/view/View;

    return-object v0
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->accountInputBox:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    .line 70
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->next:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 71
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title_bar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 72
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->afterViews()V

    .line 73
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->e:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 65
    return-void
.end method

.method public final startToQuery()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/be;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/be;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 105
    return-void
.end method

.method public final toConfirmPage()V
    .locals 4

    .prologue
    .line 77
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/bd;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/bd;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 89
    return-void
.end method
