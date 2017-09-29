.class public final Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;
.super Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final n:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;-><init>()V

    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->n:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->c(Z)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/aw;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/aw;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/av;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/security/gesture/ui/av;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 6

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/au;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/gesture/ui/au;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZZ)V
    .locals 7

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/at;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/at;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/ap;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/ap;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Z)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 6

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/as;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/gesture/ui/as;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public final b(Z)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/ax;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/security/gesture/ui/ax;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public final c(Z)V
    .locals 4

    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/aq;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/aq;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Z)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final e()V
    .locals 4

    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/ar;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/ar;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->n:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    sget v0, Lcom/alipay/mobile/a/e;->l:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->setContentView(I)V

    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    sget v0, Lcom/alipay/mobile/a/d;->i:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v0, Lcom/alipay/mobile/a/d;->h:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->m:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/a/d;->p:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->l:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/a/d;->j:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->j:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->d()V

    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->n:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->n:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->n:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method
