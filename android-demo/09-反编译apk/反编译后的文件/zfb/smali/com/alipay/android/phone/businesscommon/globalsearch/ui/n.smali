.class public final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;
.super Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;
.source "MainSearchFragment_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private final n:Lorg/androidannotations/api/view/OnViewChangedNotifier;

.field private o:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;-><init>()V

    .line 37
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->n:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->d()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->b(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->c()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 152
    return-void
.end method

.method public final b(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 92
    const-string/jumbo v6, ""

    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V

    const-wide/16 v1, 0x0

    invoke-static {v6, v0, v1, v2}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 104
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 124
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 136
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 108
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/p;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/p;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 120
    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->o:Landroid/view/View;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->n:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 43
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 44
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 46
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->o:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->o:Landroid/view/View;

    if-nez v0, :cond_0

    .line 60
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->h:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->o:Landroid/view/View;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->o:Landroid/view/View;

    return-object v0
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->u:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->f:Landroid/view/View;

    .line 78
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->i:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->h:Landroid/widget/LinearLayout;

    .line 79
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->z:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->e:Landroid/view/View;

    .line 80
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->j:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 81
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->l:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 82
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->r:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->d:Landroid/widget/ListView;

    .line 83
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->s:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->j:Landroid/view/View;

    .line 84
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->A:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 85
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->k:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 86
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->m:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->g:Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->a()V

    .line 88
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->n:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 73
    return-void
.end method
