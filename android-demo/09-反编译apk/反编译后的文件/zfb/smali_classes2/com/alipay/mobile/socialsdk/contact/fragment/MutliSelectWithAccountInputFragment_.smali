.class public final Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;
.source "MutliSelectWithAccountInputFragment_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final f:Lorg/androidannotations/api/view/OnViewChangedNotifier;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;-><init>()V

    .line 33
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->f:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->getContactSearched(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->closeCursor(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final closeCursor(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/bt;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/bt;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 124
    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getContactSearched(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/bs;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/bs;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 97
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->f:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 39
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 40
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 42
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->g:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 56
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->multi_friend_select:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->g:Landroid/view/View;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->g:Landroid/view/View;

    return-object v0
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->emptyResults:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 74
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title_name:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 75
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->account_contacts_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 76
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->emptyAccountContent:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 77
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->searchBar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSearchBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->t:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    .line 78
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->contacts_letters_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->s:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    .line 79
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->multi_choose_widget:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->afterViews()V

    .line 81
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->f:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 69
    return-void
.end method
