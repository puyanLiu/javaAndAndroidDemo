.class public final Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;
.super Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;
.source "ContactSelectPageActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final b:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;-><init>()V

    .line 28
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->selectItem(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 33
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 34
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 36
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->fragment_container_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;->setContentView(I)V

    .line 37
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->fragmentContainer:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;->a:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 64
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;->a()V

    .line 65
    return-void
.end method

.method public final selectItem(Ljava/util/List;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/ui/n;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;Ljava/util/List;Landroid/view/View;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 81
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->setContentView(I)V

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 47
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->setContentView(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 59
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 53
    return-void
.end method
