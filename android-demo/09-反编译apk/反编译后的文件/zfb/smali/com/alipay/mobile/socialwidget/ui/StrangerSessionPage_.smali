.class public final Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;
.super Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;
.source "StrangerSessionPage_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final b:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;-><init>()V

    .line 27
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/x;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialwidget/ui/x;-><init>(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 80
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 32
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 33
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 35
    sget v0, Lcom/alipay/mobile/socialwidget/R$layout;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->setContentView(I)V

    .line 36
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->A:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->a()V

    .line 64
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->setContentView(I)V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 46
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->setContentView(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 58
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 52
    return-void
.end method
