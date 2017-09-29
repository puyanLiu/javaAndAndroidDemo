.class public final Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;
.source "RecentListSelectFriendFragment_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final p:Lorg/androidannotations/api/view/OnViewChangedNotifier;

.field private q:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;-><init>()V

    .line 32
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->p:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;Landroid/database/Cursor;Z)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->refreshListUi(Landroid/database/Cursor;Z)V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->closeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$201(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->prepareDataSource()V

    return-void
.end method

.method static synthetic access$301(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->getRecentFriendSearched(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$401(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->onSelectItem(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final closeCursor(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/cr;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/cr;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 110
    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->q:Landroid/view/View;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->q:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getRecentFriendSearched(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/ct;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ct;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 142
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->p:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 38
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 39
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 41
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->q:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->q:Landroid/view/View;

    if-nez v0, :cond_0

    .line 55
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->recent_friend_single_select:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->q:Landroid/view/View;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->q:Landroid/view/View;

    return-object v0
.end method

.method public final onSelectItem(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/cu;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/cu;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 158
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title_name:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 73
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->account_contacts_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 74
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->emptyResults:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 75
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->emptyAccountContent:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 76
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->searchBar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSearchBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->b:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    .line 77
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->afterViews()V

    .line 78
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->p:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 68
    return-void
.end method

.method public final prepareDataSource()V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/cs;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/cs;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 126
    return-void
.end method

.method public final refreshListUi(Landroid/database/Cursor;Z)V
    .locals 4

    .prologue
    .line 82
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/cq;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/cq;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;Landroid/database/Cursor;Z)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 94
    return-void
.end method
