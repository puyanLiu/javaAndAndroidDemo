.class public final Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment;
.source "SnsPhoneSingleFragment_.java"

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
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment;-><init>()V

    .line 36
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->o:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->showSelectItem(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->closeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$201(Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->getContactSearched(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$301(Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->refreshDataSource()V

    return-void
.end method

.method static synthetic access$401(Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment;->sendShortLinkSms(Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;)V

    return-void
.end method


# virtual methods
.method public final closeCursor(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/dh;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/dh;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 115
    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->p:Landroid/view/View;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->p:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getContactSearched(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/di;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/di;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 131
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->o:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 42
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 43
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 45
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->p:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->p:Landroid/view/View;

    if-nez v0, :cond_0

    .line 59
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->phone_book_single_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->p:Landroid/view/View;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->p:Landroid/view/View;

    return-object v0
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->empty_text:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 77
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->empty_content:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 78
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->phonebook_letters_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->j:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    .line 79
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->phonebook_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->i:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;

    .line 80
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->phone_title:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 81
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->phonebook_searchBar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSearchBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->d:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->init()V

    .line 83
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->o:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 72
    return-void
.end method

.method public final refreshDataSource()V
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/dj;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/dj;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 147
    return-void
.end method

.method public final sendShortLinkSms(Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;)V
    .locals 6

    .prologue
    .line 151
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/dk;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/contact/fragment/dk;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 163
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
    .line 87
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/dg;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/dg;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;Ljava/lang/String;Ljava/util/List;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 99
    return-void
.end method
