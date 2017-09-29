.class public final Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;
.super Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;
.source "ShareDialogActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final a:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;-><init>()V

    .line 26
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->callBackShareSucceed()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->sendShareContent(Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final callBackShareSucceed()V
    .locals 4

    .prologue
    .line 66
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/ui/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/chat/ui/d;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 78
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 31
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 32
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 34
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->layout_empty:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;->setContentView(I)V

    .line 35
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;->a()V

    .line 62
    return-void
.end method

.method public final sendShareContent(Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 82
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/ui/e;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/chat/ui/e;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 94
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->setContentView(I)V

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 45
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->setContentView(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 57
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 51
    return-void
.end method
