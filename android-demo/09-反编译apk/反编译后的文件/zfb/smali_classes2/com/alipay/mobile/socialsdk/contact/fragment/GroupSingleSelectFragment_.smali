.class public final Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;
.source "GroupSingleSelectFragment_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;-><init>()V

    .line 31
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->selectItem(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;Landroid/database/Cursor;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->refreshListUi(Landroid/database/Cursor;Z)V

    return-void
.end method

.method static synthetic access$201(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->prepareDataSource()V

    return-void
.end method

.method static synthetic access$301(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->getContactSerched(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$401(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->closeCursor(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final closeCursor(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 143
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/aw;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/aw;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 155
    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getContactSerched(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/av;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/av;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 139
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 37
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 38
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 40
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;->b:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 54
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->group_single_select:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;->b:Landroid/view/View;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;->b:Landroid/view/View;

    return-object v0
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->account_contacts_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;->e:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 72
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->searchBar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSearchBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;->c:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    .line 73
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title_name:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 74
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;->afterViews()V

    .line 75
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 67
    return-void
.end method

.method public final prepareDataSource()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/au;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/au;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 123
    return-void
.end method

.method public final refreshListUi(Landroid/database/Cursor;Z)V
    .locals 4

    .prologue
    .line 95
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/at;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/at;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;Landroid/database/Cursor;Z)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 107
    return-void
.end method

.method public final selectItem(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 4

    .prologue
    .line 79
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/as;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/as;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 91
    return-void
.end method
