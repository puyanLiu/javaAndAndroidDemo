.class public final Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;
.source "GroupListMainPage_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final m:Lorg/androidannotations/api/view/OnViewChangedNotifier;

.field private n:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;-><init>()V

    .line 33
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->m:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Landroid/database/Cursor;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->refreshListUi(Landroid/database/Cursor;Z)V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->handleChatRoomCreate(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V

    return-void
.end method

.method static synthetic access$201(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->tryToRefreshJoinedGroup()V

    return-void
.end method

.method static synthetic access$301(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->getGroupSearched(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$401(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->removeFromContact(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$501(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->prepareDataSource()V

    return-void
.end method

.method static synthetic access$601(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->preCheckChatRoomCreate(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V

    return-void
.end method

.method static synthetic access$701(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->closeCursor(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final closeCursor(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 194
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/ag;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ag;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 206
    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->n:Landroid/view/View;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->n:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getGroupSearched(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/ac;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ac;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 142
    return-void
.end method

.method public final handleChatRoomCreate(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V
    .locals 4

    .prologue
    .line 98
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/aa;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/aa;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 110
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->m:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 39
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 40
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 42
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->n:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->n:Landroid/view/View;

    if-nez v0, :cond_0

    .line 56
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->group_single_select:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->n:Landroid/view/View;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->n:Landroid/view/View;

    return-object v0
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->searchBar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSearchBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->a:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    .line 74
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title_name:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 75
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->account_contacts_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 76
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->emptyResults:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 77
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->afterViews()V

    .line 78
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->m:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 69
    return-void
.end method

.method public final preCheckChatRoomCreate(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V
    .locals 6

    .prologue
    .line 178
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/af;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/contact/fragment/af;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 190
    return-void
.end method

.method public final prepareDataSource()V
    .locals 3

    .prologue
    .line 162
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/ae;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/ae;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 174
    return-void
.end method

.method public final refreshListUi(Landroid/database/Cursor;Z)V
    .locals 4

    .prologue
    .line 82
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/z;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/z;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Landroid/database/Cursor;Z)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 94
    return-void
.end method

.method public final removeFromContact(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/ad;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ad;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 158
    return-void
.end method

.method public final tryToRefreshJoinedGroup()V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/ab;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/ab;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 126
    return-void
.end method
