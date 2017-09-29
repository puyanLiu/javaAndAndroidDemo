.class public final Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;
.super Lcom/alipay/android/phone/home/ui/AppsCenterFragment;
.source "AppsCenterFragment_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final d:Lorg/androidannotations/api/view/OnViewChangedNotifier;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;-><init>()V

    .line 25
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->d:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method


# virtual methods
.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->d:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 31
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 32
    invoke-super {p0, p1}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 34
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->e:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 48
    sget v0, Lcom/alipay/android/phone/openplatform/R$layout;->b:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->e:Landroid/view/View;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->e:Landroid/view/View;

    return-object v0
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->h:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->a:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    .line 66
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->L:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->c:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    .line 67
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->afterView()V

    .line 68
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment_;->d:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 61
    return-void
.end method
