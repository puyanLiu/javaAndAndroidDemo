.class public final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;
.super Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;
.source "CommonSearchActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final g:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;-><init>()V

    .line 28
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/g;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/g;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 83
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 99
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 33
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 34
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 36
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->setContentView(I)V

    .line 37
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->w:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 64
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->b:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 65
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->E:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->b:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;

    .line 66
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->c()V

    .line 67
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->setContentView(I)V

    .line 46
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 47
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->setContentView(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 59
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->g:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 53
    return-void
.end method
