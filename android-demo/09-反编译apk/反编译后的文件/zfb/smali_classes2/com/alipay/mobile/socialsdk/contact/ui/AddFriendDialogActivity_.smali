.class public final Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity_;
.super Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;
.source "AddFriendDialogActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final a:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;-><init>()V

    .line 24
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->sendBatchAddRpc(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 29
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 30
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 32
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->layout_transparent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity_;->setContentView(I)V

    .line 33
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity_;->a()V

    .line 60
    return-void
.end method

.method public final sendBatchAddRpc(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/h;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/h;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 76
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->setContentView(I)V

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 43
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->setContentView(Landroid/view/View;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 55
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 49
    return-void
.end method
