.class public final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;
.super Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;
.source "MoreChatMessageActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final d:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;-><init>()V

    .line 30
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->d:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;Z)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;Ljava/util/List;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 85
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 89
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;Z)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 101
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->d:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 35
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 36
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 38
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->setContentView(I)V

    .line 39
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->D:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 66
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->r:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->b:Landroid/widget/ListView;

    .line 67
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->a:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 68
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->a()V

    .line 69
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->setContentView(I)V

    .line 48
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->d:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 49
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->setContentView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->d:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 61
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->d:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 55
    return-void
.end method
