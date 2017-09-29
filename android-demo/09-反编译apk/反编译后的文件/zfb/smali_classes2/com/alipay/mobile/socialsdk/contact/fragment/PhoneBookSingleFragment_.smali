.class public final Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;
.source "PhoneBookSingleFragment_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final o:Lorg/androidannotations/api/view/OnViewChangedNotifier;

.field private p:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;-><init>()V

    .line 35
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->o:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->showSelectItem(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->getContactSearched(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$201(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->refreshDataSource()V

    return-void
.end method

.method static synthetic access$301(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->closeCursor(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final closeCursor(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/cm;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/cm;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 146
    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->p:Landroid/view/View;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->p:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getContactSearched(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/ck;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ck;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 114
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->o:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 41
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 42
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 44
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->p:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->p:Landroid/view/View;

    if-nez v0, :cond_0

    .line 58
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->phone_book_single_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->p:Landroid/view/View;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->p:Landroid/view/View;

    return-object v0
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->phone_title:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 76
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->phonebook_letters_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->j:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    .line 77
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->phonebook_searchBar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSearchBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->d:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    .line 78
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->empty_text:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 79
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->phonebook_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->i:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;

    .line 80
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->empty_content:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->init()V

    .line 82
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->o:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 71
    return-void
.end method

.method public final refreshDataSource()V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/cl;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/cl;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 130
    return-void
.end method

.method public final showSelectItem(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/cj;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/cj;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;Ljava/lang/String;Ljava/util/List;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 98
    return-void
.end method
